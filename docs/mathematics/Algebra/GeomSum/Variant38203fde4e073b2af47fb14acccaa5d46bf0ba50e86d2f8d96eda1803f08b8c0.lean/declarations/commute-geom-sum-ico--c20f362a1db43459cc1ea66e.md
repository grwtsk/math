# Commute.geom_sum₂_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "631504010eac85fb287ddaf6f361a5e056452f64",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38203fde4e073b2af47fb14acccaa5d46bf0ba50e86d2f8d96eda1803f08b8c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0812bcd-7d19-e61a-9653-212d4af5be19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09661cf6-56ad-7894-4186-e497a63c6ed3",
  "kind": "theorem",
  "lexical_name": "Commute.geom_sum₂_Ico",
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
  "slug": "commute-geom-sum-ico--c20f362a1db43459cc1ea66e",
  "source": {
    "blob": "631504010eac85fb287ddaf6f361a5e056452f64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 47,
    "path": "GRWTSK/Algebra/GeomSum/Variant38203fde4e073b2af47fb14acccaa5d46bf0ba50e86d2f8d96eda1803f08b8c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c20f362a1db43459cc1ea66e716d02b21a55b57347cdc8d1010ddadcfc9feef2",
  "verification": {
    "reference": "docs/verification/Algebra/GeomSum/Variant38203fde4e073b2af47fb14acccaa5d46bf0ba50e86d2f8d96eda1803f08b8c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09661cf6-56ad-7894-4186-e497a63c6ed3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Commute.geom_sum₂_Ico (h : Commute x y) (hxy : x ≠ y) {m n : ℕ} (hmn : m ≤ n) :
    ∑ i ∈ Finset.Ico m n, x ^ i * y ^ (n - 1 - i) = (x ^ n - y ^ (n - m) * x ^ m) / (x - y) := by
  have : x - y ≠ 0 := by simp_all [sub_eq_iff_eq_add]
  rw [← h.geom_sum₂_Ico_mul hmn, mul_div_cancel_right₀ _ this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GeomSum/Variant38203fde4e073b2af47fb14acccaa5d46bf0ba50e86d2f8d96eda1803f08b8c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GeomSum/Variant38203fde4e073b2af47fb14acccaa5d46bf0ba50e86d2f8d96eda1803f08b8c0.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `631504010eac85fb287ddaf6f361a5e056452f64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
