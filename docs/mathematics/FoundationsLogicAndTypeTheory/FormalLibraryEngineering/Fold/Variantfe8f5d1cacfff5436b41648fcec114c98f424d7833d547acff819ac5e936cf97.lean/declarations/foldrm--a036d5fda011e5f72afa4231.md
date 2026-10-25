# foldrM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5c3c39b5fd65c3dc6a34d07e61137c7439ccdfddb618ff4aaf2eccfb1a1ce46",
  "kind": "def",
  "lexical_name": "foldrM",
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
  "slug": "foldrm--a036d5fda011e5f72afa4231",
  "source": {
    "blob": "9c64e7eaf2028b2f3e044ae267d86e143f10b7ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 97,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a036d5fda011e5f72afa42318df9aacdc509c68993023058f0a95872b218c0da",
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

Occurrence: `declaration:f5c3c39b5fd65c3dc6a34d07e61137c7439ccdfddb618ff4aaf2eccfb1a1ce46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[inline] def foldrM [Monad m] (n) (f : Fin n → α → m α) (init : α) : m α :=
  loop ⟨n, Nat.le_refl n⟩ init where
  /--
  Inner loop for `Fin.foldrM`.
  ```
  Fin.foldrM.loop n f i xᵢ = do
    let xᵢ₋₁ ← f (i-1) xᵢ
    ...
    let x₁ ← f 1 x₂
    let x₀ ← f 0 x₁
    pure x₀
  ```
  -/
  @[specialize] loop : {i // i ≤ n} → α → m α
  | ⟨0, _⟩, x => pure x
  | ⟨i+1, h⟩, x => f ⟨i, h⟩ x >>= loop ⟨i, Nat.le_of_lt h⟩

/-! ### foldlM -/

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c64e7eaf2028b2f3e044ae267d86e143f10b7ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
