# algebraMap_apply_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c782bb7017d8b673e57ef41bf349b892c94a13e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 482,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b78958d1-78fb-b3d9-ed93-5a1e627085d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81df3207-da06-9dbc-f4ea-0d3676dc0689",
  "kind": "theorem",
  "lexical_name": "algebraMap_apply_div",
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
  "slug": "algebramap-apply-div--695fc454684ff004a8603669",
  "source": {
    "blob": "2c782bb7017d8b673e57ef41bf349b892c94a13e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 488,
    "line": 482,
    "path": "GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:695fc454684ff004a8603669b83352e19459cf1e062e6f2baadea2a543e0baf4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LaurentSeries/Variant189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81df3207-da06-9dbc-f4ea-0d3676dc0689`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 482–488.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algebraMap_apply_div :
    algebraMap (RatFunc F) F⸨X⸩ (algebraMap _ _ p / algebraMap _ _ q) =
      algebraMap F[X] F⸨X⸩ p / algebraMap _ _ q := by
  convert coe_div _ _ <;>
    rw [← mk_one, coe_def, coeAlgHom, mk_eq_div, liftAlgHom_apply_div, map_one, div_one,
      Algebra.ofId_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LaurentSeries/Variant189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean#L482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c782bb7017d8b673e57ef41bf349b892c94a13e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
