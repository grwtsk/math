# complex_primitive_exact_endpoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c826b82c-abd9-1ad5-04ed-c50d4359addf",
  "kind": "theorem",
  "lexical_name": "complex_primitive_exact_endpoints",
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
  "slug": "complex-primitive-exact-endpoints--0634db058e5a18f34b21d862",
  "source": {
    "blob": "2c66250db9036f65d93fbb3e609e9401b2228c50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 169,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variant059986f543c4da494b9a2a0de7f158b19978ec17bef4d1dd4692113a7ece9dcd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0634db058e5a18f34b21d86287a990a6d3313b889dffccab025b1f3b4e28c340",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variant059986f543c4da494b9a2a0de7f158b19978ec17bef4d1dd4692113a7ece9dcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c826b82c-abd9-1ad5-04ed-c50d4359addf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_primitive_exact_endpoints {A : ℝ} (hA : 0 < A) {z : ℂ} (hz : z ≠ 0) :
    complexPrimitivePolynomial A z A = 384 / ((A : ℂ) ^ 4 * z ^ 5) *
      (1 - 10 / ((A : ℂ) * z) + 45 / ((A : ℂ) * z) ^ 2 -
        105 / ((A : ℂ) * z) ^ 3 + 105 / ((A : ℂ) * z) ^ 4) ∧
    complexPrimitivePolynomial A z (-A) = 384 / ((A : ℂ) ^ 4 * z ^ 5) *
      (1 + 10 / ((A : ℂ) * z) + 45 / ((A : ℂ) * z) ^ 2 +
        105 / ((A : ℂ) * z) ^ 3 + 105 / ((A : ℂ) * z) ^ 4) := by
  have hAc : (A : ℂ) ≠ 0 := by exact_mod_cast hA.ne'
  constructor <;> unfold complexPrimitivePolynomial <;> push_cast <;> field_simp [hAc, hz] <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variant059986f543c4da494b9a2a0de7f158b19978ec17bef4d1dd4692113a7ece9dcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variant059986f543c4da494b9a2a0de7f158b19978ec17bef4d1dd4692113a7ece9dcd.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c66250db9036f65d93fbb3e609e9401b2228c50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
