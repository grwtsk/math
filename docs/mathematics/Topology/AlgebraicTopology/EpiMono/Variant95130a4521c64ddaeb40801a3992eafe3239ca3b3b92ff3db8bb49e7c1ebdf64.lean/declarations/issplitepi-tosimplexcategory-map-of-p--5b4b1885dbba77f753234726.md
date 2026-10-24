# isSplitEpi_toSimplexCategory_map_of_P_σ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4cd525b5a635abdde91199d56354a1d531e8e7d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95130a4521c64ddaeb40801a3992eafe3239ca3b3b92ff3db8bb49e7c1ebdf64.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0fbad60a-2171-810f-16fb-66bb3d85a0bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b891957-0fef-331b-6b57-86d743669ff2",
  "kind": "lemma",
  "lexical_name": "isSplitEpi_toSimplexCategory_map_of_P_σ",
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
  "slug": "issplitepi-tosimplexcategory-map-of-p--5b4b1885dbba77f753234726",
  "source": {
    "blob": "4cd525b5a635abdde91199d56354a1d531e8e7d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 70,
    "path": "GRWTSK/Topology/AlgebraicTopology/EpiMono/Variant95130a4521c64ddaeb40801a3992eafe3239ca3b3b92ff3db8bb49e7c1ebdf64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b4b1885dbba77f753234726de299778cb61afbf7f9436b3dc3b9204ad679cc2",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/EpiMono/Variant95130a4521c64ddaeb40801a3992eafe3239ca3b3b92ff3db8bb49e7c1ebdf64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b891957-0fef-331b-6b57-86d743669ff2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSplitEpi_toSimplexCategory_map_of_P_σ {x y : SimplexCategoryGenRel} {e : x ⟶ y}
    (he : P_σ e) : IsSplitEpi <| toSimplexCategory.map e := by
  constructor
  constructor
  apply SplitEpi.map
  exact isSplitEpi_P_σ he |>.exists_splitEpi.some

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/EpiMono/Variant95130a4521c64ddaeb40801a3992eafe3239ca3b3b92ff3db8bb49e7c1ebdf64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/EpiMono/Variant95130a4521c64ddaeb40801a3992eafe3239ca3b3b92ff3db8bb49e7c1ebdf64.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cd525b5a635abdde91199d56354a1d531e8e7d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
