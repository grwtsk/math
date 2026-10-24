# properSpace_iff_compactSpace_integer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5092469f-214e-09ac-0382-9071240b495e",
  "kind": "lemma",
  "lexical_name": "properSpace_iff_compactSpace_integer",
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
  "slug": "properspace-iff-compactspace-integer--4d81f0101cfba9b28bfb14de",
  "source": {
    "blob": "5954c79e4ebd7e5ca547e02ce3e71223237f48ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 335,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d81f0101cfba9b28bfb14deee5f22363bc8629a5204ca7c9f08e485f1205a42",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5092469f-214e-09ac-0382-9071240b495e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma properSpace_iff_compactSpace_integer [(Valued.v : Valuation K Γ₀).RankOne] :
    ProperSpace K ↔ CompactSpace 𝒪[K] := by
  simp only [← isCompact_univ_iff, Subtype.isCompact_iff, Set.image_univ, Subtype.range_coe_subtype,
             toNormedField.setOfPred_mem_integer_eq_closedBall]
  constructor <;> intro h
  · exact isCompact_closedBall 0 1
  · suffices LocallyCompactSpace K from .of_nontriviallyNormedField_of_weaklyLocallyCompactSpace K
    exact IsCompact.locallyCompactSpace_of_mem_nhds_of_addGroup h <|
      Metric.closedBall_mem_nhds 0 zero_lt_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5954c79e4ebd7e5ca547e02ce3e71223237f48ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
