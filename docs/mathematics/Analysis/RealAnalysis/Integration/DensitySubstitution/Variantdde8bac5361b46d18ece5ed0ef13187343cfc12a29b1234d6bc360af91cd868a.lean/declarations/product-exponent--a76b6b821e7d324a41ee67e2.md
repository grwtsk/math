# product_exponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0015e0f5-6872-c61e-1291-fae9f7d5ef2e",
  "kind": "theorem",
  "lexical_name": "product_exponent",
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
  "slug": "product-exponent--a76b6b821e7d324a41ee67e2",
  "source": {
    "blob": "aa8c2c149feaf21233ad2a73d08c158de3228d35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DensitySubstitution/Variantdde8bac5361b46d18ece5ed0ef13187343cfc12a29b1234d6bc360af91cd868a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a76b6b821e7d324a41ee67e2b05173348d395c306ae0078bca520f18aa3cbb87",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DensitySubstitution/Variantdde8bac5361b46d18ece5ed0ef13187343cfc12a29b1234d6bc360af91cd868a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0015e0f5-6872-c61e-1291-fae9f7d5ef2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem product_exponent (A C a b T σ : ℝ) (hT : 0 < T) :
    densityWeight A σ * envelope C a b T σ =
      (2*A*C*(Real.log (2*T))^b)*Real.exp (mixedExponent A a T σ) := by
  rw [envelope_exp C a b T σ hT]
  unfold densityWeight mixedExponent
  have he : (2*σ-1)*A+a*(1-σ)*Real.log (2*T) =
      2*A*(σ-1/2)+a*(1-σ)*Real.log (2*T) := by ring
  rw [he,Real.exp_add]
  ring

/-- This is conditional on the literal actual count for every integration sigma. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DensitySubstitution/Variantdde8bac5361b46d18ece5ed0ef13187343cfc12a29b1234d6bc360af91cd868a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DensitySubstitution/Variantdde8bac5361b46d18ece5ed0ef13187343cfc12a29b1234d6bc360af91cd868a.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa8c2c149feaf21233ad2a73d08c158de3228d35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
