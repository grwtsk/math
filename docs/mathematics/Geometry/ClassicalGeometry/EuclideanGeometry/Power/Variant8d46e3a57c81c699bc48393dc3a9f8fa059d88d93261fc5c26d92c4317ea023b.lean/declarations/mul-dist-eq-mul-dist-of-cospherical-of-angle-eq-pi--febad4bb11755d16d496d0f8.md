# mul_dist_eq_mul_dist_of_cospherical_of_angle_eq_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b5e525f90e55dcd4311dd7148531b98b97aa7a05",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d46e3a57c81c699bc48393dc3a9f8fa059d88d93261fc5c26d92c4317ea023b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4854424d-3b85-faaf-9a0c-42add56f6af4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86706b9e-657e-b1e3-9675-7e416bd04478",
  "kind": "theorem",
  "lexical_name": "mul_dist_eq_mul_dist_of_cospherical_of_angle_eq_pi",
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
  "slug": "mul-dist-eq-mul-dist-of-cospherical-of-angle-eq-pi--febad4bb11755d16d496d0f8",
  "source": {
    "blob": "b5e525f90e55dcd4311dd7148531b98b97aa7a05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 108,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant8d46e3a57c81c699bc48393dc3a9f8fa059d88d93261fc5c26d92c4317ea023b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:febad4bb11755d16d496d0f8e9e89e50613420336266b671d758a9cca0c888c7",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant8d46e3a57c81c699bc48393dc3a9f8fa059d88d93261fc5c26d92c4317ea023b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86706b9e-657e-b1e3-9675-7e416bd04478`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_dist_eq_mul_dist_of_cospherical_of_angle_eq_pi {a b c d p : P}
    (h : Cospherical ({a, b, c, d} : Set P)) (hapb : ∠ a p b = π) (hcpd : ∠ c p d = π) :
    dist a p * dist b p = dist c p * dist d p := by
  obtain ⟨-, k₁, _, hab⟩ := angle_eq_pi_iff.mp hapb
  obtain ⟨-, k₂, _, hcd⟩ := angle_eq_pi_iff.mp hcpd
  exact mul_dist_eq_mul_dist_of_cospherical h ⟨k₁, by linarith, hab⟩ ⟨k₂, by linarith, hcd⟩

/-- **Intersecting Secants Theorem**. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant8d46e3a57c81c699bc48393dc3a9f8fa059d88d93261fc5c26d92c4317ea023b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant8d46e3a57c81c699bc48393dc3a9f8fa059d88d93261fc5c26d92c4317ea023b.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5e525f90e55dcd4311dd7148531b98b97aa7a05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
