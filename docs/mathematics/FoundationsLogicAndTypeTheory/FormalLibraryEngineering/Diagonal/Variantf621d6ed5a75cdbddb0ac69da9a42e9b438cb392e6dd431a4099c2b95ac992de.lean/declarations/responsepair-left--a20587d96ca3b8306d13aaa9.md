# responsePair_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:644e9c25-5673-b765-8a38-5c7df517d58f",
  "kind": "theorem",
  "lexical_name": "responsePair_left",
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
  "slug": "responsepair-left--a20587d96ca3b8306d13aaa9",
  "source": {
    "blob": "712c86afd17675d2ac360e778368bbff3fb96d4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1055,
    "line": 1039,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantf621d6ed5a75cdbddb0ac69da9a42e9b438cb392e6dd431a4099c2b95ac992de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a20587d96ca3b8306d13aaa91702d9fc05a7f446f0ea2edf464a53b0add3e2be",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantf621d6ed5a75cdbddb0ac69da9a42e9b438cb392e6dd431a4099c2b95ac992de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:644e9c25-5673-b765-8a38-5c7df517d58f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1039–1055.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem responsePair_left {v a x : Expr S}
    (hv : HasType P Γ v B.relational.probe.carrier) (mv : WellModed γ v .data)
    (ha : HasType P Γ a B.yType) (ma : WellModed γ a .data)
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data)
    (hr : Proves P Γ γ (B.response L.code KY.code KP.code v)) :
    Equivalent P Γ γ (B.ev (B.pair L.code KY.code KP.code (B.part L.code KY.code KP.code v) a)
      (B.observation.tagged L.code 1 x))
      (B.diamond L.code KY.code KP.code v (B.observation.tagged L.code 0 x)) := by
  have pv := H.part_typed KY KP hv mv
  have pp := H.pair_typed KY KP pv.1 pv.2 ha ma
  have t1 := H.tagged_typed 1 hx mx
  have t0 := H.tagged_typed 0 hx mx
  exact (H.ev_formula pp.1 pp.2 t1.1 t1.2).equivalent_trans (H.ev_formula pv.1 pv.2 t0.1 t0.2)
    (H.diamond_formula KY KP hv mv t0.1 t0.2) (H.pair_left_equivalent KY KP pv.1 pv.2 ha ma hx
      mx (H.part_good KY KP hv mv hr))
    (H.part_exact KY KP hv mv t0.1 t0.2 hr)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantf621d6ed5a75cdbddb0ac69da9a42e9b438cb392e6dd431a4099c2b95ac992de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantf621d6ed5a75cdbddb0ac69da9a42e9b438cb392e6dd431a4099c2b95ac992de.lean#L1039).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `712c86afd17675d2ac360e778368bbff3fb96d4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
