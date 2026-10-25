# truncate_eq_of_agree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d9ff4c90b6d06cbadb38e5b35a895696a0fa2c7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e01c9a252adb265f6c86db95e1786cab95210dae4330fde7710232bfa181466f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:956b3b6f-7ee3-18a7-4013-6fc96fd30acb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39865dcd-a780-e8a7-b921-ebcadf8601f3",
  "kind": "theorem",
  "lexical_name": "truncate_eq_of_agree",
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
  "slug": "truncate-eq-of-agree--b9d972b8830f1a58440b0091",
  "source": {
    "blob": "d9ff4c90b6d06cbadb38e5b35a895696a0fa2c7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variante01c9a252adb265f6c86db95e1786cab95210dae4330fde7710232bfa181466f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9d972b8830f1a58440b009145ff7fe092d2df754f2aab75c2f57bdc20c5a09e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variante01c9a252adb265f6c86db95e1786cab95210dae4330fde7710232bfa181466f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39865dcd-a780-e8a7-b921-ebcadf8601f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem truncate_eq_of_agree {n : ℕ} (x : CofixA F n) (y : CofixA F (succ n)) (h : Agree x y) :
    truncate y = x := by
  induction n <;> cases x <;> cases y
  · rfl
  · -- cases' h with _ _ _ _ _ h₀ h₁
    cases h
    simp only [truncate, Function.comp_def, eq_self_iff_true, heq_iff_eq]
    -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11041): used to be `ext y`
    rename_i n_ih a f y h₁
    suffices (fun x => truncate (y x)) = f
      by simp [this]
    funext y

    apply n_ih
    apply h₁

variable {X : Type w}
variable (f : X → F X)

/-- `sCorec f i n` creates an approximation of height `n`
of the final coalgebra of `f` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variante01c9a252adb265f6c86db95e1786cab95210dae4330fde7710232bfa181466f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variante01c9a252adb265f6c86db95e1786cab95210dae4330fde7710232bfa181466f.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9ff4c90b6d06cbadb38e5b35a895696a0fa2c7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
