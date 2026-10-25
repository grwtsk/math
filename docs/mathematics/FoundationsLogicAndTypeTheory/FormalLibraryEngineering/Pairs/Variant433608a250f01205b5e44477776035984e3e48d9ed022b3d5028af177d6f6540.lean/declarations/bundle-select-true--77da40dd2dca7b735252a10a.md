# bundle_select_true

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9c7a518-73f7-10b7-f593-7a90eab3020a",
  "kind": "theorem",
  "lexical_name": "bundle_select_true",
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
  "slug": "bundle-select-true--77da40dd2dca7b735252a10a",
  "source": {
    "blob": "3462d8a5a4c7b70eb34c05d74626edd4369bd8c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 821,
    "line": 806,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant433608a250f01205b5e44477776035984e3e48d9ed022b3d5028af177d6f6540.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77da40dd2dca7b735252a10a4b12466662a82779c75cee24e1460dc55e8aee17",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant433608a250f01205b5e44477776035984e3e48d9ed022b3d5028af177d6f6540.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9c7a518-73f7-10b7-f593-7a90eab3020a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 806–821.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bundle_select_true {A d m y f : Expr S} (hA : SortedAt P Γ A I) (mA : WellModed γ A .data)
    (hd : HasType P Γ d A) (md : WellModed γ d .data)
    (hm : HasType P Γ m A) (mm : WellModed γ m .data)
    (hy : HasType P Γ y A) (my : WellModed γ y .data)
    (hf : HasType P Γ f (R.first.apply A)) (mf : WellModed γ f .data)
    (hg : Proves P Γ γ (R.first.observe A f d)) :
    Equivalent P Γ γ (R.second.observe (R.first.apply A) (R.bundle L.code A d m y) f)
      (R.first.observe A f m) := by
  have he := h.bundle_evaluation hA mA hd md hm mm hy my hf mf
  have hw := h.bundle_typed hA mA hd md hm mm hy my
  have hW := (h.second.sound (h.first.sorted hA) (h.first.mode mA)).2 _ _ hw.1 hw.2 ⟨hf,mf⟩
  have hD := (h.first.sound hA mA).2 _ _ hf mf ⟨hd,md⟩
  have hM := (h.first.sound hA mA).2 _ _ hf mf ⟨hm,mm⟩
  have hY := (h.first.sound hA mA).2 _ _ hf mf ⟨hy,my⟩
  apply L.equivalent_of_iff hW hM
  pts_pl L using [he,hg]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant433608a250f01205b5e44477776035984e3e48d9ed022b3d5028af177d6f6540.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant433608a250f01205b5e44477776035984e3e48d9ed022b3d5028af177d6f6540.lean#L806).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3462d8a5a4c7b70eb34c05d74626edd4369bd8c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
