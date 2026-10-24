# conj_ZC

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f5b71a4-58c7-079d-d3ae-1f4a871e9c15",
  "kind": "theorem",
  "lexical_name": "conj_ZC",
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
  "slug": "conj-zc--c44f8e0e85be6bc2e8c3edf1",
  "source": {
    "blob": "7d4fb99b259b95ad9dd35d18a3572d23786ddc59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 108,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c44f8e0e85be6bc2e8c3edf1c5298e8e31e2364fb38024aff76543b38d8cd700",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f5b71a4-58c7-079d-d3ae-1f4a871e9c15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conj_ZC (t : ℝ) : conj (ZC t) = ZC t := by
  by_cases ht : t = 0
  · subst ht
    rw [ZC, map_mul, conj_ephase, neg_zero, ← Zeta23.riemannZeta_conj (sline_ne_one 0), conj_sline, neg_zero]
  have him : (sline t).im ≠ 0 := by simpa using ht
  rw [ZC, map_mul, ← Zeta23.riemannZeta_conj (sline_ne_one t), conj_sline, ← one_sub_sline]
  -- ζ(1−s) = ζ(s)/χ(s) = ζ(s)·e²
  have hχ := chiFE_ne_zero him
  have h1 : riemannZeta (1 - sline t) = riemannZeta (sline t) * ephase t ^ 2 := by
    have := zeta_eq_chiFE_mul him
    have e2 := ephase_sq t
    calc riemannZeta (1 - sline t) = riemannZeta (sline t) / chiFE (sline t) := by
          rw [this]; field_simp
      _ = riemannZeta (sline t) * ephase t ^ 2 := by
          rw [div_eq_iff hχ, mul_assoc, e2, mul_one]
  rw [h1]
  calc conj (ephase t) * (riemannZeta (sline t) * ephase t ^ 2)
      = (conj (ephase t) * ephase t) * ephase t * riemannZeta (sline t) := by ring
    _ = ephase t * riemannZeta (sline t) := by rw [conj_ephase_mul, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d4fb99b259b95ad9dd35d18a3572d23786ddc59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
