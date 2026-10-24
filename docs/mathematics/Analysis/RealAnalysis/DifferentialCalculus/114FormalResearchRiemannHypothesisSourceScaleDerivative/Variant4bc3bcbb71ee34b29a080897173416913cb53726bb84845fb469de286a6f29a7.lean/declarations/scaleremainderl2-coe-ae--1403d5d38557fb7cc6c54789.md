# scaleRemainderL2_coe_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9ce7c22-d449-5b59-9aa5-068e36ba8521",
  "kind": "theorem",
  "lexical_name": "scaleRemainderL2_coe_ae",
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
  "slug": "scaleremainderl2-coe-ae--1403d5d38557fb7cc6c54789",
  "source": {
    "blob": "b769ab090e68d8565a8b21f0003d2a076a52f5fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 414,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/114FormalResearchRiemannHypothesisSourceScaleDerivative/Variant4bc3bcbb71ee34b29a080897173416913cb53726bb84845fb469de286a6f29a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1403d5d38557fb7cc6c5478972f68c3e935c0d12e6754e072b51f70f63ede551",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/114FormalResearchRiemannHypothesisSourceScaleDerivative/Variant4bc3bcbb71ee34b29a080897173416913cb53726bb84845fb469de286a6f29a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9ce7c22-d449-5b59-9aa5-068e36ba8521`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaleRemainderL2_coe_ae {A B : ℝ} (hA : 0 < A) (hB : 0 < B) :
    scaleRemainderL2 A B =ᵐ[volume] fun x => (scaleRemainder A B x : ℂ) := by
  filter_upwards [Lp.coeFn_smul (B - A)⁻¹
      (originalSourceState B - originalSourceState A - (B - A) • scaleDerivativeState A),
    Lp.coeFn_sub (originalSourceState B - originalSourceState A)
      ((B - A) • scaleDerivativeState A),
    Lp.coeFn_sub (originalSourceState B) (originalSourceState A),
    Lp.coeFn_smul (B - A) (scaleDerivativeState A),
    originalSourceState_coe_ae hA, originalSourceState_coe_ae hB,
    scaleDerivativeState_coe_ae hA] with x h1 h2 h3 h4 ha hb hp
  change ((B - A)⁻¹ • (originalSourceState B - originalSourceState A -
    (B - A) • scaleDerivativeState A)) x = _
  rw [h1, Pi.smul_apply, h2, Pi.sub_apply, h3, Pi.sub_apply, h4, Pi.smul_apply, ha, hb, hp]
  simp [scaleRemainder, Complex.real_smul, Complex.ofReal_sub, Complex.ofReal_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/114FormalResearchRiemannHypothesisSourceScaleDerivative/Variant4bc3bcbb71ee34b29a080897173416913cb53726bb84845fb469de286a6f29a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/114FormalResearchRiemannHypothesisSourceScaleDerivative/Variant4bc3bcbb71ee34b29a080897173416913cb53726bb84845fb469de286a6f29a7.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b769ab090e68d8565a8b21f0003d2a076a52f5fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
