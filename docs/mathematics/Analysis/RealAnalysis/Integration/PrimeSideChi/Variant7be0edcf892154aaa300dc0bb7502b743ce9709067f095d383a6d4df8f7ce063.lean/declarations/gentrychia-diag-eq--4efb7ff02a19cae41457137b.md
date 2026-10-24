# GentryChiA_diag_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffe7713b-2284-52dd-8c71-9d45aae545fe",
  "kind": "lemma",
  "lexical_name": "GentryChiA_diag_eq",
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
  "slug": "gentrychia-diag-eq--4efb7ff02a19cae41457137b",
  "source": {
    "blob": "b7f058ea3d12e02b6f34456557fc66c69d693d9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 737,
    "line": 716,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4efb7ff02a19cae41457137bb7574a30d8d2538f533005073fe33afa9db83db9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffe7713b-2284-52dd-8c71-9d45aae545fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 716–737.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma GentryChiA_diag_eq (hΓq : GammaFactsChi κ q) (hq : 1 ≤ q) (hF : LocalHypsCoreW cϱ p F)
    (hc : CoeffOK q c) (k : ℤ) (hk : 0 < p.tau k) :
    GentryChiA κ q c p F k k = (∫ r, F.phiHat r ^ 2 * muq κ q (p.tau k + r))
      + ∫ r, F.phiHat r ^ 2 * PXc c p.X (p.tau k + r) := by
  unfold GentryChiA
  have htrans : (∫ τ, F.phiHat (τ - p.tau k) * F.phiHat (τ - p.tau k) * nuXc κ q c p.X τ)
      = ∫ r, F.phiHat r ^ 2 * nuXc κ q c p.X (p.tau k + r) := by
    rw [← MeasureTheory.integral_add_right_eq_self _ (p.tau k)]
    congr 1
    funext r
    simp only [add_sub_cancel_right]
    ring_nf
  rw [htrans]
  have hν : ∀ r, F.phiHat r ^ 2 * nuXc κ q c p.X (p.tau k + r)
      = F.phiHat r ^ 2 * muq κ q (p.tau k + r) + F.phiHat r ^ 2 * PXc c p.X (p.tau k + r) := by
    intro r
    simp only [nuXc]
    ring
  simp_rw [hν]
  rw [MeasureTheory.integral_add (muq_part_integrable hΓq hq hF hk) (PXc_part_integrable hF hc _)]

/-- Sum of the P-parts over the grid (mirror of sum_P_part_bound via the complex kernel). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean#L716).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7f058ea3d12e02b6f34456557fc66c69d693d9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
