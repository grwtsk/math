# Tendsto.prod_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e80f1b86c1ff06c1f4c56406ee47dfc45e3f1918",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5a096d7751e66a8893cf822c2e3fc19402992e1ad556d6bfa7537eb04c793ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5fc4b2f7-5bb3-236e-c1b8-b8a555d1bcf6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4fcbb58-6413-88be-39f9-46512562af89",
  "kind": "theorem",
  "lexical_name": "Tendsto.prod_atTop",
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
  "slug": "tendsto-prod-attop--c9cbed839592eea8a8a03be0",
  "source": {
    "blob": "e80f1b86c1ff06c1f4c56406ee47dfc45e3f1918",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variantf5a096d7751e66a8893cf822c2e3fc19402992e1ad556d6bfa7537eb04c793ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9cbed839592eea8a8a03be012929c598d0424d2f46cae8bb630385ec86641a6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variantf5a096d7751e66a8893cf822c2e3fc19402992e1ad556d6bfa7537eb04c793ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4fcbb58-6413-88be-39f9-46512562af89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Tendsto.prod_atTop [Preorder α] [Preorder γ] {f g : α → γ}
    (hf : Tendsto f atTop atTop) (hg : Tendsto g atTop atTop) :
    Tendsto (Prod.map f g) atTop atTop := by
  rw [← prod_atTop_atTop_eq]
  exact hf.prod_map_prod_atTop hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variantf5a096d7751e66a8893cf822c2e3fc19402992e1ad556d6bfa7537eb04c793ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variantf5a096d7751e66a8893cf822c2e3fc19402992e1ad556d6bfa7537eb04c793ef.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e80f1b86c1ff06c1f4c56406ee47dfc45e3f1918` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
