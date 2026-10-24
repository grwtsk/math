# cfcHom_eq_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:134c124d-0434-a5ed-7c9b-e451c33a1e27",
  "kind": "lemma",
  "lexical_name": "cfcHom_eq_restrict",
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
  "slug": "cfchom-eq-restrict--76c507a7cac3f7dc238107ae",
  "source": {
    "blob": "8d7eb2a460f8a8377a0910c0cd9de199ea269891",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76c507a7cac3f7dc238107aee0fc84f2647c34d2e49085f32660d58009d97f6d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:134c124d-0434-a5ed-7c9b-e451c33a1e27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfcHom_eq_restrict (f : C(S, R)) (halg : IsUniformEmbedding (algebraMap R S))
    {a : A} (hpa : p a) (hqa : q a) (h : SpectrumRestricts a f) :
    cfcHom hpa = h.starAlgHom (cfcHom hqa) := by
  apply cfcHom_eq_of_continuous_of_map_id
  · exact h.isClosedEmbedding_starAlgHom (cfcHom_isClosedEmbedding hqa) halg |>.continuous
  · exact h.starAlgHom_id (cfcHom_id hqa)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d7eb2a460f8a8377a0910c0cd9de199ea269891` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
