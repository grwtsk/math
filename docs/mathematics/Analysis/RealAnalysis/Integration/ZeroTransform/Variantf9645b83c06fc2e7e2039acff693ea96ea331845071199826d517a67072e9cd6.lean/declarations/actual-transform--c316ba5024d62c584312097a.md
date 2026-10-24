# actual_transform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05109a61-a5cf-d63f-4588-0d4d1374a339",
  "kind": "theorem",
  "lexical_name": "actual_transform",
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
  "slug": "actual-transform--c316ba5024d62c584312097a",
  "source": {
    "blob": "e2cc73c6411c209f01327d82a98b9370aeb09f98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 172,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c316ba5024d62c584312097a8a01a6f31468deb632d764ed04ed85554271d16c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05109a61-a5cf-d63f-4588-0d4d1374a339`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_transform (A : ℝ) (hA : 0 < A) (z : ℂ) (hz : z ≠ 0) :
    ZeroSideTargets.bilateralTransform A z = ZeroSideTargets.dividedTransform A z := by
  rw [actual_integral_interval A hA z]
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ ↦ normalized_primitive A hA z hz x)
    (((interior_continuous A).mul (by fun_prop)).intervalIntegrable (-A) A)
  simp only [Complex.ofReal_neg, fullPrimitive_endpoint_pos, fullPrimitive_endpoint_neg] at hi
  rw [hi]
  unfold ZeroSideTargets.dividedTransform
  rw [source_scale A hA]
  push_cast
  simp only [mul_neg, mul_comm z (A : ℂ)]
  ring
/-- The exact frozen Z2.2 obligation, including integrability and the nonzero-argument guard. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2cc73c6411c209f01327d82a98b9370aeb09f98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
