# image_perm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46ee607d-8647-2dd3-4413-02869430b152",
  "kind": "theorem",
  "lexical_name": "image_perm",
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
  "slug": "image-perm--130320ec624ebb7fbf73fc85",
  "source": {
    "blob": "de9820c0fa706d6e02f220d23df3b2d5da9a66e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 629,
    "line": 615,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variante1b2d5228f1da793ad43f01b16d36da010355b658cd5a1d3713104b08cdfd1a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:130320ec624ebb7fbf73fc85fd3a00d0826265c690d75c4639cb40e51b1e5821",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variante1b2d5228f1da793ad43f01b16d36da010355b658cd5a1d3713104b08cdfd1a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46ee607d-8647-2dd3-4413-02869430b152`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 615–629.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_perm {s : Set α} {σ : Equiv.Perm α} (hs : { a : α | σ a ≠ a } ⊆ s) : σ '' s = s := by
  ext i
  obtain hi | hi := eq_or_ne (σ i) i
  · refine' ⟨_, fun h => ⟨i, h, hi⟩⟩
    rintro ⟨j, hj, h⟩
    rwa [σ.injective (hi.trans h.symm)]
  · refine' iff_of_true ⟨σ.symm i, hs fun h => hi _, σ.apply_symm_apply _⟩ (hs hi)
    convert congr_arg σ h <;> exact (σ.apply_symm_apply _).symm
#align set.image_perm Set.image_perm

end Image

/-! ### Lemmas about the powerset and image. -/

/-- The powerset of `{a} ∪ s` is `𝒫 s` together with `{a} ∪ t` for each `t ∈ 𝒫 s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variante1b2d5228f1da793ad43f01b16d36da010355b658cd5a1d3713104b08cdfd1a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variante1b2d5228f1da793ad43f01b16d36da010355b658cd5a1d3713104b08cdfd1a2.lean#L615).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de9820c0fa706d6e02f220d23df3b2d5da9a66e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
