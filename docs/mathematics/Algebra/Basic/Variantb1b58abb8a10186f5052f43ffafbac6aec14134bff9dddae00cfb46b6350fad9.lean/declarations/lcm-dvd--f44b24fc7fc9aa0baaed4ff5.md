# lcm_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:579e2899-0808-e388-c26d-039f0e56f1e2",
  "kind": "theorem",
  "lexical_name": "lcm_dvd",
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
  "slug": "lcm-dvd--f44b24fc7fc9aa0baaed4ff5",
  "source": {
    "blob": "625b3283e6ecd7c3ee3acda4bc3acc51f895f4d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 280,
    "path": "GRWTSK/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f44b24fc7fc9aa0baaed4ff5d9c3d658690097e185e2f7d8cac7fc2db411d876",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:579e2899-0808-e388-c26d-039f0e56f1e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lcm_dvd {x y z : R} (hxz : x ∣ z) (hyz : y ∣ z) : lcm x y ∣ z := by
  rw [lcm]
  by_cases hxy : gcd x y = 0
  · rw [hxy, div_zero]
    rw [EuclideanDomain.gcd_eq_zero_iff] at hxy
    rwa [hxy.1] at hxz
  rcases gcd_dvd x y with ⟨⟨r, hr⟩, ⟨s, hs⟩⟩
  suffices x * y ∣ z * gcd x y by
    cases' this with p hp
    use p
    generalize gcd x y = g at hxy hs hp ⊢
    subst hs
    rw [mul_left_comm, mul_div_cancel_left _ hxy, ← mul_left_inj' hxy, hp]
    rw [← mul_assoc]
    simp only [mul_right_comm]
  rw [gcd_eq_gcd_ab, mul_add]
  apply dvd_add
  · rw [mul_left_comm]
    exact mul_dvd_mul_left _ (hyz.mul_right _)
  · rw [mul_left_comm, mul_comm]
    exact mul_dvd_mul_left _ (hxz.mul_right _)
#align euclidean_domain.lcm_dvd EuclideanDomain.lcm_dvd

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `625b3283e6ecd7c3ee3acda4bc3acc51f895f4d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
