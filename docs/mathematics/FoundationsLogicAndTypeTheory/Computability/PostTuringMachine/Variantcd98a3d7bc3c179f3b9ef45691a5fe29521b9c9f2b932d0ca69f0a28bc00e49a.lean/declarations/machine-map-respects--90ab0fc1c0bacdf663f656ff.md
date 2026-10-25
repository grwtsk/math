# Machine.map_respects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ee1a79ce54aa340ecbff62a956332bd6748fbf8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 457,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99c9d5a6-09b7-a152-3573-883bbcbbec59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36bc9576-f630-337b-4c82-306baee7d557",
  "kind": "theorem",
  "lexical_name": "Machine.map_respects",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "machine-map-respects--90ab0fc1c0bacdf663f656ff",
  "source": {
    "blob": "6ee1a79ce54aa340ecbff62a956332bd6748fbf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 457,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variantcd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90ab0fc1c0bacdf663f656ff4cd578ae3962c7147077ac97e47c023a44d3eca2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variantcd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36bc9576-f630-337b-4c82-306baee7d557`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Machine.map_respects (g₁ : PointedMap Λ Λ') (g₂ : Λ' → Λ) {S} (ss : Supports M S)
    (f₂₁ : Function.RightInverse f₁ f₂) (g₂₁ : ∀ q ∈ S, g₂ (g₁ q) = q) :
    Respects (step M) (step (M.map f₁ f₂ g₁ g₂)) fun a b ↦ a.q ∈ S ∧ Cfg.map f₁ g₁ a = b := by
  intro c _ ⟨cs, rfl⟩
  cases e : step M c
  · rw [← M.map_step f₁ f₂ g₁ g₂ f₂₁ g₂₁ _ cs, e]
    rfl
  · refine ⟨_, ⟨step_supports M ss e cs, rfl⟩, TransGen.single ?_⟩
    rw [← M.map_step f₁ f₂ g₁ g₂ f₂₁ g₂₁ _ cs, e]
    rfl

end

end TM0

/-!
## The TM1 model

The TM1 model is a simplification and extension of TM0 (Post-Turing model) in the direction of
Wang B-machines. The machine's internal state is extended with a (finite) store `σ` of variables
that may be accessed and updated at any time.

A machine is given by a `Λ` indexed set of procedures or functions. Each function has a body which
is a `Stmt`. Most of the regular commands are allowed to use the current value `a` of the local
variables and the value `T.head` on the tape to calculate what to write or how to change local
state, but the statements themselves have a fixed structure. The `Stmt`s can be as follows:

* `move d q`: move left or right, and then do `q`
* `write (f : Γ → σ → Γ) q`: write `f a T.head` to the tape, then do `q`
* `load (f : Γ → σ → σ) q`: change the internal state to `f a T.head`
* `branch (f : Γ → σ → Bool) qtrue qfalse`: If `f a T.head` is true, do `qtrue`, else `qfalse`
* `goto (f : Γ → σ → Λ)`: Go to label `f a T.head`
* `halt`: Transition to the halting state, which halts on the following step

Note that here most statements do not have labels; `goto` commands can only go to a new function.
Only the `goto` and `halt` statements actually take a step; the rest is done by recursion on
statements and so take 0 steps. (There is a uniform bound on how many statements can be executed
before the next `goto`, so this is an `O(1)` speedup with the constant depending on the machine.)

The `halt` command has a one step stutter before actually halting so that any changes made before
the halt have a chance to be "committed", since the `eval` relation uses the final configuration
before the halt as the output, and `move` and `write` etc. take 0 steps in this model.
-/


namespace TM1


section

variable (Γ : Type*)

-- Type of tape symbols
variable (Λ : Type*)

-- Type of function labels
variable (σ : Type*)

-- Type of variable settings
/-- The TM1 model is a simplification and extension of TM0
  (Post-Turing model) in the direction of Wang B-machines. The machine's
  internal state is extended with a (finite) store `σ` of variables
  that may be accessed and updated at any time.
  A machine is given by a `Λ` indexed set of procedures or functions.
  Each function has a body which is a `Stmt`, which can either be a
  `move` or `write` command, a `branch` (if statement based on the
  current tape value), a `load` (set the variable value),
  a `goto` (call another function), or `halt`. Note that here
  most statements do not have labels; `goto` commands can only
  go to a new function. All commands have access to the variable value
  and current tape value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variantcd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variantcd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ee1a79ce54aa340ecbff62a956332bd6748fbf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
