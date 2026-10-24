# continuous_map₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7788721b3919655f7cc54f275fbe1166422a576e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 713,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d19443a3b28cfd3497a65e2c150821bf05da88aa353712e47fe82686d94ecf7e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cdbdc65d-d987-3d5e-cd1c-e357ea44345c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d43982ce-82d5-e2b6-42d4-678a2d85c474",
  "kind": "theorem",
  "lexical_name": "continuous_map₂",
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
  "slug": "continuous-map--91c41c41e75a4fa4c09df2ae",
  "source": {
    "blob": "7788721b3919655f7cc54f275fbe1166422a576e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 718,
    "line": 713,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variantd19443a3b28cfd3497a65e2c150821bf05da88aa353712e47fe82686d94ecf7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91c41c41e75a4fa4c09df2aedc46cf2887d23d9c54ffa6bed5c0ba9e77aa5eee",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Completion/Variantd19443a3b28cfd3497a65e2c150821bf05da88aa353712e47fe82686d94ecf7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d43982ce-82d5-e2b6-42d4-678a2d85c474`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 713–718.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_map₂ {δ} [TopologicalSpace δ] {f : α → β → γ} {a : δ → Completion α}
    {b : δ → Completion β} (ha : Continuous a) (hb : Continuous b) :
    Continuous fun d : δ => Completion.map₂ f (a d) (b d) :=
  cPkg.continuous_map₂ cPkg cPkg ha hb
#align uniform_space.completion.continuous_map₂ UniformSpace.Completion.continuous_map₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Completion/Variantd19443a3b28cfd3497a65e2c150821bf05da88aa353712e47fe82686d94ecf7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variantd19443a3b28cfd3497a65e2c150821bf05da88aa353712e47fe82686d94ecf7e.lean#L713).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7788721b3919655f7cc54f275fbe1166422a576e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
