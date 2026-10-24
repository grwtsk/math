# kerFun_apply_eq_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a1dfb71d4f2d78c261b4c58a3fb188249577406",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4ac7fd9667bb116651a426aa62f78e484e0a53104d50a0fa20a4bf1531f563ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31c70806-e4e8-2801-911e-41a6c6a1e864",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cce85304-cad7-e7c2-1814-d673dc88da36",
  "kind": "lemma",
  "lexical_name": "kerFun_apply_eq_mk",
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
  "slug": "kerfun-apply-eq-mk--1d48eac2e4a7f36c8d04ea91",
  "source": {
    "blob": "2a1dfb71d4f2d78c261b4c58a3fb188249577406",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 80,
    "path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variant4ac7fd9667bb116651a426aa62f78e484e0a53104d50a0fa20a4bf1531f563ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d48eac2e4a7f36c8d04ea912ae60f88530af30c50ffb5dac5cfe1b657c275bb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Operations/Variant4ac7fd9667bb116651a426aa62f78e484e0a53104d50a0fa20a4bf1531f563ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cce85304-cad7-e7c2-1814-d673dc88da36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma kerFun_apply_eq_mk (x : X) (v : V) :
    kerFun (H + H') x v = Submodule.Quotient.mk (WithLp.toLp 2 (kerFun H x v, kerFun H' x v)) := by
  rw [← quotientEquivOrthogonal_symm_eq_mk (generator H H').ker _
    (kerFun_mem_orthogonal H H' x v), (generator H H').ker.quotientEquivOrthogonal.eq_symm_apply,
    ext_iff_inner_right (𝕜 := 𝕜)]
  intro f
  rw [(generator H H').ker.quotientEquivOrthogonal.inner_map_eq_flip,
    (generator H H').ker.quotientEquivOrthogonal_symm_eq_mk, kerFun_inner]
  simp [coe_inner, WithLp.prod_inner_apply, WithLp.ofLp_fst, kerFun_inner, WithLp.ofLp_snd, mk_eq]
  simp [generator, inner_add_right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Operations/Variant4ac7fd9667bb116651a426aa62f78e484e0a53104d50a0fa20a4bf1531f563ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Operations/Variant4ac7fd9667bb116651a426aa62f78e484e0a53104d50a0fa20a4bf1531f563ea.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a1dfb71d4f2d78c261b4c58a3fb188249577406` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
