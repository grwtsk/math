# foldlM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6d696fc60b6037539416d62e9d3b971cd9961e94e2c21607eaf3bca6cd46e04",
  "kind": "def",
  "lexical_name": "foldlM",
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
  "slug": "foldlm--ac0110bc7449fc3aad3ff3ce",
  "source": {
    "blob": "9c64e7eaf2028b2f3e044ae267d86e143f10b7ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac0110bc7449fc3aad3ff3cedcb6cd21ab9d3805695fcec7bd00d68e5c665505",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6d696fc60b6037539416d62e9d3b971cd9961e94e2c21607eaf3bca6cd46e04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[inline] def foldlM [Monad m] (n) (f : α → Fin n → m α) (init : α) : m α := loop init 0 where
  /--
  Inner loop for `Fin.foldlM`.
  ```
  Fin.foldlM.loop n f xᵢ i = do
    let xᵢ₊₁ ← f xᵢ i
    ...
    let xₙ ← f xₙ₋₁ (n-1)
    pure xₙ
  ```
  -/
  @[specialize] loop (x : α) (i : Nat) : m α := do
    if h : i < n then f x ⟨i, h⟩ >>= (loop · (i+1)) else pure x
  termination_by n - i
  decreasing_by decreasing_trivial_pre_omega

/--
Folds a monadic function over `Fin n` from right to left, starting with `n-1`.

It is the sequence of steps:
```
Fin.foldrM n f xₙ = do
  let xₙ₋₁ ← f (n-1) xₙ
  let xₙ₋₂ ← f (n-2) xₙ₋₁
  ...
  let x₀ ← f 0 x₁
  pure x₀
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c64e7eaf2028b2f3e044ae267d86e143f10b7ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
