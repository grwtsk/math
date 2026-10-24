# physicalProfile_second

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:529d4fe5-75e1-51cb-95e2-654d0cd8e271",
  "kind": "theorem",
  "lexical_name": "physicalProfile_second",
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
  "slug": "physicalprofile-second--d8e913c62c723084acf2b3a2",
  "source": {
    "blob": "098102d2ebe2bd232ee2e7be258580f80aae28ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 228,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant63e7b732a429c3921ab2ede29f3a47ead47ebf71eed4286e9cfd4073d2e1ebcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8e913c62c723084acf2b3a24beed919a6b06c7996a636b828c407e7273e4bc7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant63e7b732a429c3921ab2ede29f3a47ead47ebf71eed4286e9cfd4073d2e1ebcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:529d4fe5-75e1-51cb-95e2-654d0cd8e271`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem physicalProfile_second (A y : ℝ) :
    deriv (deriv (physicalProfile A)) y =
      Real.exp (-y / 2) * y ^ 3 * physicalCurvaturePolynomial (1 / A) y /
        sourceNormalization A := by
  have hf : Differentiable ℝ (endpointPolynomial (1 / A)) := by unfold endpointPolynomial; fun_prop
  have hg : Differentiable ℝ (endpointD1 (1 / A)) := by unfold endpointD1; fun_prop
  have hp : HasDerivAt (endpointPolynomial (1 / A)) (endpointD1 (1 / A) y) y := by
    simpa only [endpoint_deriv] using (hf y).hasDerivAt
  have hq : HasDerivAt (endpointD1 (1 / A)) (endpointD2 (1 / A) y) y := by
    simpa only [endpointD1_deriv] using (hg y).hasDerivAt
  have he0 := ((hasDerivAt_id y).neg.div_const 2).exp
  have he : HasDerivAt (fun x : ℝ => Real.exp (-x / 2)) (-Real.exp (-y / 2) / 2) y := by
    convert he0 using 1 <;> simp only [Pi.neg_apply, id_eq] <;> ring
  have h := (he.mul (hq.sub (hp.div_const 2))).div_const (sourceNormalization A)
  rw [physicalProfile_deriv]
  calc
    _ = Real.exp (-y / 2) * (endpointD2 (1 / A) y - endpointD1 (1 / A) y +
        endpointPolynomial (1 / A) y / 4) / sourceNormalization A :=
      (h.congr_deriv (by dsimp only [Pi.mul_apply, Pi.sub_apply]; ring)).deriv
    _ = _ := by rw [weighted_polynomial_identity]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant63e7b732a429c3921ab2ede29f3a47ead47ebf71eed4286e9cfd4073d2e1ebcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant63e7b732a429c3921ab2ede29f3a47ead47ebf71eed4286e9cfd4073d2e1ebcf.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `098102d2ebe2bd232ee2e7be258580f80aae28ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
