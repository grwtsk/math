# eLpNormLESNormFDerivOfEqInnerConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28b8fb2b22d08a1b98d8d1e39fc1c1d1c23d9e4c51f79852fc6ec3f5c8a86d14",
  "kind": "def",
  "lexical_name": "eLpNormLESNormFDerivOfEqInnerConst",
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
  "slug": "elpnormlesnormfderivofeqinnerconst--85c04571e157acef70ce07de",
  "source": {
    "blob": "4c23fd771a73ab411638100f74393a5a65e7fc15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 460,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantc986e52d8af437a60d3d41522d55b5c733646ef943daa94fb1cf07f4a1e5897a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85c04571e157acef70ce07dec5d2382d3356d9e12413758c5ff4f61512c51be1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantc986e52d8af437a60d3d41522d55b5c733646ef943daa94fb1cf07f4a1e5897a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28b8fb2b22d08a1b98d8d1e39fc1c1d1c23d9e4c51f79852fc6ec3f5c8a86d14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def eLpNormLESNormFDerivOfEqInnerConst (p : ℝ) : ℝ≥0 :=
  let n := finrank ℝ E
  eLpNormLESNormFDerivOneConst μ (NNReal.conjExponent n) * (p * (n - 1) / (n - p)).toNNReal

variable {F' : Type*} [NormedAddCommGroup F'] [InnerProductSpace ℝ F']

/-- The **Gagliardo-Nirenberg-Sobolev inequality**.  Let `u` be a continuously differentiable
compactly-supported function `u` on a normed space `E` of finite dimension `n`, equipped
with Haar measure, let `1 ≤ p`, `0 < n` and let `p'⁻¹ := p⁻¹ - n⁻¹`.
Then the `Lᵖ'` norm of `u` is bounded above by a constant times the `Lᵖ` norm of
the Fréchet derivative of `u`.

Note: The codomain of `u` needs to be a Hilbert space.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantc986e52d8af437a60d3d41522d55b5c733646ef943daa94fb1cf07f4a1e5897a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantc986e52d8af437a60d3d41522d55b5c733646ef943daa94fb1cf07f4a1e5897a.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c23fd771a73ab411638100f74393a5a65e7fc15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
