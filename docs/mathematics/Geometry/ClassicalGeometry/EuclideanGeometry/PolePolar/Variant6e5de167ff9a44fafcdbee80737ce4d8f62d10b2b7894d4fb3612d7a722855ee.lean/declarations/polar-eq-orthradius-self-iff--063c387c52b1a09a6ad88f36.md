# polar_eq_orthRadius_self_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6cb6041-5b33-2fdd-8f37-f0810493869a",
  "kind": "lemma",
  "lexical_name": "polar_eq_orthRadius_self_iff",
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
  "slug": "polar-eq-orthradius-self-iff--063c387c52b1a09a6ad88f36",
  "source": {
    "blob": "01937c2ccafeabc95ea78696bcafeac636388fc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 96,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:063c387c52b1a09a6ad88f36978b9dbb4be6b353604945f96d3458f87ba757af",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6cb6041-5b33-2fdd-8f37-f0810493869a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma polar_eq_orthRadius_self_iff {s : Sphere P} (hs : 0 ≤ s.radius) {p : P} :
    s.polar p = s.orthRadius p ↔ p ∈ s ∨ p = s.center := by
  by_cases h : p = s.center
  · simp [h]
  simp only [polar, inversion, orthRadius_eq_orthRadius_iff, h, or_false]
  rw [← vsub_eq_zero_iff_eq, vadd_vsub_assoc, ← neg_vsub_eq_vsub_rev p s.center,
    ← neg_one_smul ℝ, ← add_smul, smul_eq_zero]
  simp only [← sub_eq_add_neg, sub_eq_zero, sq_eq_one_iff, vsub_eq_zero_iff_eq, h, or_false]
  refine ⟨fun hp ↦ ?_, fun hp ↦ ?_⟩
  · rcases hp with hp | hp
    · exact (eq_of_div_eq_one hp).symm
    · have hp' : 0 ≤ s.radius / dist p s.center := by positivity
      grind
  · rw [hp]
    refine .inl (div_self ?_)
    intro hr
    rw [mem_sphere] at hp
    simp_all

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01937c2ccafeabc95ea78696bcafeac636388fc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
