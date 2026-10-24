# source_derivative_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:716e25e6-b8d8-2245-8dee-684ac4dd1998",
  "kind": "theorem",
  "lexical_name": "source_derivative_bound",
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
  "slug": "source-derivative-bound--96219e992b27bef734920403",
  "source": {
    "blob": "6ac747272516cb6b30f360a0d5fd837945e2a91f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 145,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96219e992b27bef734920403f82b8e8ee9b8a98c5e312f08a2ebfbc978faa8ae",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:716e25e6-b8d8-2245-8dee-684ac4dd1998`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_derivative_bound {W : Data} (hc : W.check=true) {z : ℂ}
    (hz : z ∈ W.disk.carrier) : ‖deriv poleNormalizedZeta z‖ ≤ (W.derivativeBound : ℝ) := by
  obtain ⟨he,hx,hx1,hr,ha,has,hB,hleft,hnorm,hm,hsq,hgap⟩ := W.check_iff.mp hc
  have haR : (0 : ℝ) < (W.auxiliary : ℝ) := by exact_mod_cast ha
  have hasR : (W.auxiliary : ℝ) < (W.sigma : ℝ) := by exact_mod_cast has
  have hb := disk_domain hc hz
  have h := poleNormalized_deriv_norm_le_subtracted haR hasR hb.1 hb.2
  simpa only [derivativeBound,Rat.cast_add,Rat.cast_mul,Rat.cast_div,Rat.cast_sub,
    Rat.cast_one,Rat.cast_ofNat] using h

/-- A checked point becomes a source-bound patch on a CLOSED continuum carrier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ac747272516cb6b30f360a0d5fd837945e2a91f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
