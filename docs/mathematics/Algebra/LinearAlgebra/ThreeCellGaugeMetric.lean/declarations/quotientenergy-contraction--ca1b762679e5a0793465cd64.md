# quotientEnergy_contraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9eb9aec7-1a23-0022-777f-a1c6fae6878b",
  "kind": "theorem",
  "lexical_name": "quotientEnergy_contraction",
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
  "slug": "quotientenergy-contraction--ca1b762679e5a0793465cd64",
  "source": {
    "blob": "450657419f5f489b567d1dd63a31bfcc3c56cf41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 293,
    "path": "GRWTSK/Analysis/LinearAlgebra/ThreeCellGaugeMetric.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca1b762679e5a0793465cd648271a31155d6bf695fd771c7e6ea481d4ffb46de",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9eb9aec7-1a23-0022-777f-a1c6fae6878b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotientEnergy_contraction (d : ℝ) (hd0 : 0 ≤ d) (hd1 : d ≤ 1)
    (q : GaugeQuotient (V := ℝ)) : quotientEnergy (quotientRelax d q) ≤ quotientEnergy q := by
  change reducedEnergy (quotientEquiv (quotientRelax d q)).1
    (quotientEquiv (quotientRelax d q)).2 ≤ _
  simp only [quotientRelax, LinearEquiv.apply_symm_apply]
  rw [reducedEnergy_attenuation]
  have hn := reducedEnergy_nonneg 0 (quotientEquiv q).2
  have hsq : d ^ 2 ≤ 1 := by nlinarith
  have hm := mul_le_mul_of_nonneg_right hsq hn
  dsimp [quotientEnergy, reducedEnergy] at *
  nlinarith

/-- Integral cochains can have a nonintegral least-energy representative.
The factor twelve is visible, not hidden in a purported integral gauge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LinearAlgebra/ThreeCellGaugeMetric.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `450657419f5f489b567d1dd63a31bfcc3c56cf41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
