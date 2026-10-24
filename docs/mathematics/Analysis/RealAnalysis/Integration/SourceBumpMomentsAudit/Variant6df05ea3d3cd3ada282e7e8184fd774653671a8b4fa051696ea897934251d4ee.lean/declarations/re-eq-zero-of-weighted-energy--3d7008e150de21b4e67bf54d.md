# re_eq_zero_of_weighted_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e6f50c61cff7fd60e8ffc14e93ce01b1166c903",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6df05ea3d3cd3ada282e7e8184fd774653671a8b4fa051696ea897934251d4ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e95feb8c-3305-1bb7-6fc2-14a32f987449",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3348e4d-bacc-dc41-1b21-dd1b50ce7082",
  "kind": "theorem",
  "lexical_name": "re_eq_zero_of_weighted_energy",
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
  "slug": "re-eq-zero-of-weighted-energy--3d7008e150de21b4e67bf54d",
  "source": {
    "blob": "3e6f50c61cff7fd60e8ffc14e93ce01b1166c903",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 102,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant6df05ea3d3cd3ada282e7e8184fd774653671a8b4fa051696ea897934251d4ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d7008e150de21b4e67bf54d3b1ac0aefec98b548331a30494c10d5a10ee5834",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant6df05ea3d3cd3ada282e7e8184fd774653671a8b4fa051696ea897934251d4ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3348e4d-bacc-dc41-1b21-dd1b50ce7082`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem re_eq_zero_of_weighted_energy (z : ℂ) (D E : ℝ) (hD : 0 < D) (hE : 0 ≤ E)
    (henergy : -(E : ℂ) = z ^ 2 * (D : ℂ)) : z.re = 0 := by
  have hr := congrArg Complex.re henergy
  have hi := congrArg Complex.im henergy
  simp only [Complex.neg_re, Complex.neg_im, Complex.ofReal_re, Complex.ofReal_im,
    Complex.mul_re, Complex.mul_im, pow_two, mul_zero, sub_zero, zero_add, neg_zero] at hr hi
  have hp : (2 * (z.re * z.im)) * D = 0 := by nlinarith [hi]
  have hprod : z.re * z.im = 0 := by
    have h := (mul_eq_zero.mp hp).resolve_right hD.ne'
    nlinarith
  rcases mul_eq_zero.mp hprod with hz | hz
  · exact hz
  · rw [hz] at hr
    have hq : z.re ^ 2 * D ≤ 0 := by nlinarith [hr, hE]
    have hs : z.re ^ 2 ≤ 0 := le_of_mul_le_mul_right (by simpa only [zero_mul] using hq) hD
    nlinarith [sq_nonneg z.re]

end
end SourceBumpMomentsScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @SourceBumpMomentsScratch.bumpMoment
#print SourceBumpMomentsScratch.bumpMoment
#print axioms SourceBumpMomentsScratch.bumpMoment
#check @SourceBumpMomentsScratch.bumpMoment_intervalIntegrable
#print SourceBumpMomentsScratch.bumpMoment_intervalIntegrable
#print axioms SourceBumpMomentsScratch.bumpMoment_intervalIntegrable
#check @SourceBumpMomentsScratch.bumpMoment_zero_eq_source
#print SourceBumpMomentsScratch.bumpMoment_zero_eq_source
#print axioms SourceBumpMomentsScratch.bumpMoment_zero_eq_source
#check @SourceBumpMomentsScratch.bumpMoment_zero_zero
#print SourceBumpMomentsScratch.bumpMoment_zero_zero
#print axioms SourceBumpMomentsScratch.bumpMoment_zero_zero
#check @SourceBumpMomentsScratch.bumpMoment_equation
#print SourceBumpMomentsScratch.bumpMoment_equation
#print axioms SourceBumpMomentsScratch.bumpMoment_equation
#check @SourceBumpMomentsScratch.re_eq_zero_of_weighted_energy
#print SourceBumpMomentsScratch.re_eq_zero_of_weighted_energy
#print axioms SourceBumpMomentsScratch.re_eq_zero_of_weighted_energy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant6df05ea3d3cd3ada282e7e8184fd774653671a8b4fa051696ea897934251d4ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant6df05ea3d3cd3ada282e7e8184fd774653671a8b4fa051696ea897934251d4ee.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e6f50c61cff7fd60e8ffc14e93ce01b1166c903` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
