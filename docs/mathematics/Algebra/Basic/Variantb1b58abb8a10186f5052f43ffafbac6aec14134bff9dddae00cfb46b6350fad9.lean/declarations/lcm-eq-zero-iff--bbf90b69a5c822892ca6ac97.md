# lcm_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a33f7c7f-a490-ce12-20a8-f56db5e8dac4",
  "kind": "theorem",
  "lexical_name": "lcm_eq_zero_iff",
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
  "slug": "lcm-eq-zero-iff--bbf90b69a5c822892ca6ac97",
  "source": {
    "blob": "625b3283e6ecd7c3ee3acda4bc3acc51f895f4d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 318,
    "path": "GRWTSK/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbf90b69a5c822892ca6ac971a913c7451342ffcf10e7ba19a97f05028c8fb4b",
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

Occurrence: `result:a33f7c7f-a490-ce12-20a8-f56db5e8dac4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lcm_eq_zero_iff {x y : R} : lcm x y = 0 ↔ x = 0 ∨ y = 0 := by
  constructor
  · intro hxy
    rw [lcm, mul_div_assoc _ (gcd_dvd_right _ _), mul_eq_zero] at hxy
    apply Or.imp_right _ hxy
    intro hy
    by_cases hgxy : gcd x y = 0
    · rw [EuclideanDomain.gcd_eq_zero_iff] at hgxy
      exact hgxy.2
    · rcases gcd_dvd x y with ⟨⟨r, hr⟩, ⟨s, hs⟩⟩
      generalize gcd x y = g at hr hs hy hgxy ⊢
      subst hs
      rw [mul_div_cancel_left _ hgxy] at hy
      rw [hy, mul_zero]
  rintro (hx | hy)
  · rw [hx, lcm_zero_left]
  · rw [hy, lcm_zero_right]
#align euclidean_domain.lcm_eq_zero_iff EuclideanDomain.lcm_eq_zero_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantb1b58abb8a10186f5052f43ffafbac6aec14134bff9dddae00cfb46b6350fad9.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `625b3283e6ecd7c3ee3acda4bc3acc51f895f4d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
