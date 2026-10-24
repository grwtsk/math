# gcd_dvd_gcd_of_dvd_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f524cf6c55d3daffd687976d193936ab6df9ba05",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/858b4d95839576feb30793d0254bb90481536453afae4fc9d384f3f9df139d1f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4099b429-d690-b53b-0766-54f2b2013cda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a3c843a-cbdb-766b-bafc-73dac96fea27",
  "kind": "theorem",
  "lexical_name": "gcd_dvd_gcd_of_dvd_left",
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
  "slug": "gcd-dvd-gcd-of-dvd-left--70e8c20159cd8b6e43bee29d",
  "source": {
    "blob": "f524cf6c55d3daffd687976d193936ab6df9ba05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 338,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variant858b4d95839576feb30793d0254bb90481536453afae4fc9d384f3f9df139d1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70e8c20159cd8b6e43bee29daf1052c24564ffaa599dd4cd1afd9816b46ed383",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/GCD/Variant858b4d95839576feb30793d0254bb90481536453afae4fc9d384f3f9df139d1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a3c843a-cbdb-766b-bafc-73dac96fea27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gcd_dvd_gcd_of_dvd_left {i k : ℤ} (j : ℤ) (H : i ∣ k) : gcd i j ∣ gcd k j :=
  Int.coe_nat_dvd.1 <| dvd_gcd ((gcd_dvd_left i j).trans H) (gcd_dvd_right i j)
#align int.gcd_dvd_gcd_of_dvd_left Int.gcd_dvd_gcd_of_dvd_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/GCD/Variant858b4d95839576feb30793d0254bb90481536453afae4fc9d384f3f9df139d1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variant858b4d95839576feb30793d0254bb90481536453afae4fc9d384f3f9df139d1f.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f524cf6c55d3daffd687976d193936ab6df9ba05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
