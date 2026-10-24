# IsCarmichael.carmichael_dvd_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ae7760b938a24cdab0a3825a1de25842a74d86b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f29fd6df-c529-f8a9-025f-b6b1874421be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:696708c4-ece2-d6b7-3712-653ef7db6403",
  "kind": "theorem",
  "lexical_name": "IsCarmichael.carmichael_dvd_sub_one",
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
  "slug": "iscarmichael-carmichael-dvd-sub-one--6048de94871f66a0379d448a",
  "source": {
    "blob": "8ae7760b938a24cdab0a3825a1de25842a74d86b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 115,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6048de94871f66a0379d448a69858169cd75c89dbf098c57d9f7be912844e736",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:696708c4-ece2-d6b7-3712-653ef7db6403`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCarmichael.carmichael_dvd_sub_one (h : n.IsCarmichael) : carmichael n ∣ n - 1 := by
  rw [@carmichael_eq_exponent' n h.neZero]
  exact Monoid.exponent_dvd_of_forall_pow_eq_one h.zmod_unit_pow_sub_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ae7760b938a24cdab0a3825a1de25842a74d86b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
