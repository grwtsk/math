# thetaTail_two_logSlope_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca916cbf-da40-63ac-46c5-240e5264dba1",
  "kind": "theorem",
  "lexical_name": "thetaTail_two_logSlope_identity",
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
  "slug": "thetatail-two-logslope-identity--1021e6d3cb510715b2dd9fa1",
  "source": {
    "blob": "01720d874844e3cb7f7e4c44f38a7a2875d4019e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 103,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta2168531b249ef0b061c8a2685d74751cb613a0c46c3d48ae1d05d0d58469ee1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1021e6d3cb510715b2dd9fa19325b9a148f0b585375c6c40a320d62eb14e23a4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta2168531b249ef0b061c8a2685d74751cb613a0c46c3d48ae1d05d0d58469ee1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca916cbf-da40-63ac-46c5-240e5264dba1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTail_two_logSlope_identity {t : ℝ} (ht : 0 ≤ t) :
    thetaTail 1 t * thetaPhi t + thetaTail 2 t * deriv thetaPhi t =
      ∫ u in Ici t, (u - t) *
        (deriv thetaPhi t * thetaPhi u - thetaPhi t * deriv thetaPhi u) := by
  have hi := thetaPhi_deriv_mul_sub_integrableOn ht
  have hp : IntegrableOn (fun u => thetaPhi u * (u - t)) (Ici t) := by
    simpa only [pow_one, Nat.factorial_one, Nat.cast_one, div_one] using
      thetaTail_integrable 1 ht
  have hf : (fun u => (u - t) *
      (deriv thetaPhi t * thetaPhi u - thetaPhi t * deriv thetaPhi u)) =
      fun u => deriv thetaPhi t * (thetaPhi u * (u - t)) -
        thetaPhi t * (deriv thetaPhi u * (u - t)) := by
    funext u
    ring
  rw [hf, integral_sub (hp.const_mul _) (hi.const_mul _), integral_const_mul,
    integral_const_mul, thetaPhi_deriv_mul_sub_integral ht]
  have ht2 : thetaTail 2 t = ∫ u in Ici t, thetaPhi u * (u - t) := by simp [thetaTail]
  rw [← ht2]
  ring

/-- The exact weighted identity has a nonnegative source integrand. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta2168531b249ef0b061c8a2685d74751cb613a0c46c3d48ae1d05d0d58469ee1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta2168531b249ef0b061c8a2685d74751cb613a0c46c3d48ae1d05d0d58469ee1.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01720d874844e3cb7f7e4c44f38a7a2875d4019e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
