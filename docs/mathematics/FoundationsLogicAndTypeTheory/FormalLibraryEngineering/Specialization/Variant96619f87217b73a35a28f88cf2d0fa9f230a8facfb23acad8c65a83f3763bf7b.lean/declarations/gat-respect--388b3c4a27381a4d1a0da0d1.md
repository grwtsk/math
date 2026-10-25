# gAt_respect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:245cbfc2-a5c0-1b27-95d3-855508a7c205",
  "kind": "theorem",
  "lexical_name": "gAt_respect",
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
  "slug": "gat-respect--388b3c4a27381a4d1a0da0d1",
  "source": {
    "blob": "3afd23ac4163eb20e47f4eea799c3367960c3cfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1893,
    "line": 1879,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant96619f87217b73a35a28f88cf2d0fa9f230a8facfb23acad8c65a83f3763bf7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:388b3c4a27381a4d1a0da0d1d16d93fa0c98c8c6b3b2c0156453c341d7feb245",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant96619f87217b73a35a28f88cf2d0fa9f230a8facfb23acad8c65a83f3763bf7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:245cbfc2-a5c0-1b27-95d3-855508a7c205`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1879–1893.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gAt_respect {v c y : Expr S}
    (hv : HasType P Γ v B.predType) (mv : WellModed γ v .data)
    (hc : HasType P Γ c B.predType) (mc : WellModed γ c .data)
    (hy : HasType P Γ y B.yType) (my : WellModed γ y .data)
    (he : Proves P Γ γ (B.relational.channel.predCompare L.code KY.code B.baseType v c)) :
    Equivalent P Γ γ (B.gAt L.code KY.code KP.code v y) (B.gAt L.code KY.code KP.code c y) := by
  apply L.all_equivalent_future KY H.y_sorted H.y_mode (H.gAtBody_family KY KP hv mv hy my)
    (H.gAtBody_family KY KP hc mc hy my)
  intro Δ δ e w hw mw
  rw [gAtBody_rename,gAtBody_rename,gAtBody_instantiate,gAtBody_instantiate]
  exact (H.rename e).gStep_respect (KY.rename e) (KP.rename e)
    (v_typed_rename (B := B) e hv) (e.moded mv) (v_typed_rename (B := B) e hc) (e.moded mc)
    (y_typed_rename (B := B) e hy) (e.moded my) (by simpa only [yType_rename] using hw) mw
    (comparison_rename (B := B) KY e he)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant96619f87217b73a35a28f88cf2d0fa9f230a8facfb23acad8c65a83f3763bf7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant96619f87217b73a35a28f88cf2d0fa9f230a8facfb23acad8c65a83f3763bf7b.lean#L1879).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3afd23ac4163eb20e47f4eea799c3367960c3cfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
