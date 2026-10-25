# relation_tagged_distinct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3139960-9fba-70f0-d9b5-850856fbc957",
  "kind": "theorem",
  "lexical_name": "relation_tagged_distinct",
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
  "slug": "relation-tagged-distinct--f57dbc35c94b161ebb62b98d",
  "source": {
    "blob": "dcdb8fa8c10075b34c77ce4729d32fb48dee7b60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1312,
    "line": 1300,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant81d559b4ec32752d137379d358e0e54e759a35c1ef3574568d96c66fcad24d2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f57dbc35c94b161ebb62b98dd0cb94cd6ea03cc10864c808a37e556e92da72c7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant81d559b4ec32752d137379d358e0e54e759a35c1ef3574568d96c66fcad24d2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3139960-9fba-70f0-d9b5-850856fbc957`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1300–1312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relation_tagged_distinct (t u : Fin 3) (htu : t ≠ u) {x z : Expr S}
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data)
    (hz : HasType P Γ z B.xType) (mz : WellModed γ z .data) :
    Proves P Γ γ (L.neg (B.relation L.code KY.code KP.code (B.observation.tagged L.code t x)
      (B.observation.tagged L.code u z))) := by
  have ht := H.observation.tagged_typed t hx mx
  have hu := H.observation.tagged_typed u hz mz
  have he := H.observation_equivalence KY KP ht.1 ht.2 hu.1 hu.2
  have hn := H.observation.ae_tagged_distinct KY KP t u htu hx mx hz mz
  have hf := H.relation_formula KY KP ht.1 ht.2 hu.1 hu.2
  have fa := H.observation.ae_formula KY KP ht.1 ht.2 hu.1 hu.2
  pts_pl L using [he,hn]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant81d559b4ec32752d137379d358e0e54e759a35c1ef3574568d96c66fcad24d2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant81d559b4ec32752d137379d358e0e54e759a35c1ef3574568d96c66fcad24d2f.lean#L1300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcdb8fa8c10075b34c77ce4729d32fb48dee7b60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
