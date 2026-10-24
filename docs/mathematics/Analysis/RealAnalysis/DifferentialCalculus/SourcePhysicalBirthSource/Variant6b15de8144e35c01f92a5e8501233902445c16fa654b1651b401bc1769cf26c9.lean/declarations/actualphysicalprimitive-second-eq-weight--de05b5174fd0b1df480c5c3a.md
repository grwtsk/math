# actualPhysicalPrimitive_second_eq_weight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:207a6f4a-deae-ca21-9b74-44c7eb113255",
  "kind": "theorem",
  "lexical_name": "actualPhysicalPrimitive_second_eq_weight",
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
  "slug": "actualphysicalprimitive-second-eq-weight--de05b5174fd0b1df480c5c3a",
  "source": {
    "blob": "e0704f7311c93b47569b4543a649287bc4f37b4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 273,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant6b15de8144e35c01f92a5e8501233902445c16fa654b1651b401bc1769cf26c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de05b5174fd0b1df480c5c3a51a340c1ec95157e1f55fba49398c794118ecbab",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant6b15de8144e35c01f92a5e8501233902445c16fa654b1651b401bc1769cf26c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:207a6f4a-deae-ca21-9b74-44c7eb113255`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPhysicalPrimitive_second_eq_weight {A : ℝ} (hA : 0 < A) (y : ℝ) :
    deriv (deriv (actualPhysicalPrimitive A)) y = actualPhysicalWeight A y := by
  have hd : deriv (actualPhysicalPrimitive A) = fun y =>
      -(A ^ 9 * Real.exp (-A)) *
        deriv (SourcePositivePeanoPrimitive.sourcePeanoPrimitive A) (2 * A - y) := by
    funext y
    unfold actualPhysicalPrimitive
    rw [deriv_const_mul_field, deriv_comp_const_sub]
    ring
  rw [hd, deriv_const_mul_field, deriv_comp_const_sub,
    SourcePositivePeanoPrimitive.sourcePeanoPrimitive_second_deriv hA]
  have he : Real.exp (-A) * Real.exp ((2 * A - y) / 2) = Real.exp (-y / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  unfold actualPhysicalWeight
  calc
    _ = A ^ 9 * (Real.exp (-A) * Real.exp ((2 * A - y) / 2)) *
        sourceCorrelation explicitSecondDerivative A (2 * A - y) := by ring
    _ = _ := by rw [he]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant6b15de8144e35c01f92a5e8501233902445c16fa654b1651b401bc1769cf26c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant6b15de8144e35c01f92a5e8501233902445c16fa654b1651b401bc1769cf26c9.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0704f7311c93b47569b4543a649287bc4f37b4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
