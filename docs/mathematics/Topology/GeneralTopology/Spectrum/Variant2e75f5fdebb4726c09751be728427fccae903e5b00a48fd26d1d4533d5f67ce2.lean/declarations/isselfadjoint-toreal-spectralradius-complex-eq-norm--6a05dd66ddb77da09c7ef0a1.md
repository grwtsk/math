# IsSelfAdjoint.toReal_spectralRadius_complex_eq_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf59cb683626bdb1ddf05237d1b6b5508356ead1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eface4a2-0322-afc7-860a-b83d1b560910",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8c7212b-ec06-6a98-fba7-6b681e4b3a71",
  "kind": "lemma",
  "lexical_name": "IsSelfAdjoint.toReal_spectralRadius_complex_eq_norm",
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
  "slug": "isselfadjoint-toreal-spectralradius-complex-eq-norm--6a05dd66ddb77da09c7ef0a1",
  "source": {
    "blob": "bf59cb683626bdb1ddf05237d1b6b5508356ead1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 121,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a05dd66ddb77da09c7ef0a1c87c5a198846186d094cdca3b6e94361d6d98e40",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8c7212b-ec06-6a98-fba7-6b681e4b3a71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsSelfAdjoint.toReal_spectralRadius_complex_eq_norm {a : A} (ha : IsSelfAdjoint a) :
    (spectralRadius ℂ a).toReal = ‖a‖ := by
  simp [ha.spectralRadius_eq_nnnorm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf59cb683626bdb1ddf05237d1b6b5508356ead1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
