# nu_weight_bound_L

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef1f42f1-3619-522f-cf48-9ee96138c340",
  "kind": "theorem",
  "lexical_name": "nu_weight_bound_L",
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
  "slug": "nu-weight-bound-l--a1a1417846eaebafca358290",
  "source": {
    "blob": "63016c230313d48ce8fede3551c3ee7496c7b37b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 205,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1a1417846eaebafca358290693ee92bb3fc6ac83655195045790e394877a475",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef1f42f1-3619-522f-cf48-9ee96138c340`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nu_weight_bound_L (hνc : Continuous ν) (hF : LocalHypsCoreW cϱ p F) (hν : NuBound p B ν)
    (hBL : p.L ≤ B)
    (hT : 1 ≤ p.T) {a : ℝ} (ha : a ∈ Icc p.T (2 * p.T)) :
    ∫ τ : ℝ, psiA cϱ p (τ - a) * |ν τ|
      ≤ (2 * (4 + 2 * Real.log (cϱ * p.L / (4 * p.w))) + 7 * cϱ) * B := by
  exact nu_weight_bound_of_L_le_two_B hνc hF hν (by linarith [hF.L_pos]) (by linarith [hF.eight_le_L]) hT ha


/-! ### N2: reduction to the half-line and the majorant -/

/-- change of variables Δ = T − τ on (−∞, T). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63016c230313d48ce8fede3551c3ee7496c7b37b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
