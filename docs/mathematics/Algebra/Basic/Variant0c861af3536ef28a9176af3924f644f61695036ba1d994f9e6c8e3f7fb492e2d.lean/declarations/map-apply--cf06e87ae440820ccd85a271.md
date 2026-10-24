# map_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0aff662d37c5a81758e6874b0ddacdb45847e89",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 977,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c861af3536ef28a9176af3924f644f61695036ba1d994f9e6c8e3f7fb492e2d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:391eadc4-aecf-ef3a-b123-294959572316",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0bdaf3e8-31ad-a16c-7b73-bcd74aaf17c1",
  "kind": "theorem",
  "lexical_name": "map_apply",
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
  "slug": "map-apply--cf06e87ae440820ccd85a271",
  "source": {
    "blob": "c0aff662d37c5a81758e6874b0ddacdb45847e89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 983,
    "line": 977,
    "path": "GRWTSK/Algebra/Basic/Variant0c861af3536ef28a9176af3924f644f61695036ba1d994f9e6c8e3f7fb492e2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf06e87ae440820ccd85a2716e5cd07f40ed21122a7af3dd2fbe0d24f4af9a64",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant0c861af3536ef28a9176af3924f644f61695036ba1d994f9e6c8e3f7fb492e2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bdaf3e8-31ad-a16c-7b73-bcd74aaf17c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 977–983.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_apply {R F : Type*} [CommRing R] [IsDomain R]
    [FunLike F K[X] R[X]] [MonoidHomClass F K[X] R[X]] (φ : F)
    (hφ : K[X]⁰ ≤ R[X]⁰.comap φ) (f : RatFunc K) :
    map φ hφ f = algebraMap _ _ (φ f.num) / algebraMap _ _ (φ f.denom) := by
  rw [← num_div_denom f, map_apply_div_ne_zero, num_div_denom f]
  exact denom_ne_zero _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant0c861af3536ef28a9176af3924f644f61695036ba1d994f9e6c8e3f7fb492e2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant0c861af3536ef28a9176af3924f644f61695036ba1d994f9e6c8e3f7fb492e2d.lean#L977).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0aff662d37c5a81758e6874b0ddacdb45847e89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
