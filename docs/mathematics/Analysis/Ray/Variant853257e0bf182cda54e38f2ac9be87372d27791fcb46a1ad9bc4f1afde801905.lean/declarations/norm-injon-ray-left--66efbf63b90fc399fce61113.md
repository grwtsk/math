# norm_injOn_ray_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:235d8ce2-544f-934f-cfbc-be1f9554140c",
  "kind": "theorem",
  "lexical_name": "norm_injOn_ray_left",
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
  "slug": "norm-injon-ray-left--66efbf63b90fc399fce61113",
  "source": {
    "blob": "24335fd63ebcce973c5250a20e17ac5a39866ade",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 62,
    "path": "GRWTSK/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66efbf63b90fc399fce6111364771e6ab76b1a53c981f7d1bd07ecd8cf706523",
  "verification": {
    "reference": "docs/verification/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:235d8ce2-544f-934f-cfbc-be1f9554140c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_injOn_ray_left (hx : x ≠ 0) : { y | SameRay ℝ x y }.InjOn norm := by
  rintro y hy z hz h
  rcases hy.exists_nonneg_left hx with ⟨r, hr, rfl⟩
  rcases hz.exists_nonneg_left hx with ⟨s, hs, rfl⟩
  rw [norm_smul, norm_smul, mul_left_inj' (norm_ne_zero_iff.2 hx), norm_of_nonneg hr,
    norm_of_nonneg hs] at h
  rw [h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24335fd63ebcce973c5250a20e17ac5a39866ade` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
