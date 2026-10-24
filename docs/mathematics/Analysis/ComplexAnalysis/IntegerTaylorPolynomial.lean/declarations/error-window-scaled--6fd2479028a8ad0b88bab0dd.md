# error_window_scaled

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afcb4e12-b7ef-a660-64ab-3280b8d73800",
  "kind": "theorem",
  "lexical_name": "error_window_scaled",
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
  "slug": "error-window-scaled--6fd2479028a8ad0b88bab0dd",
  "source": {
    "blob": "b0fb0112f43dfe779ef7f3bab3efbc722a1a21d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 157,
    "path": "GRWTSK/Analysis/Complex/IntegerTaylorPolynomial.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fd2479028a8ad0b88bab0dd8c52d67869e424e830c9c720a774ab9b167f67fd",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afcb4e12-b7ef-a660-64ab-3280b8d73800`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem error_window_scaled (C G E e : ℤ) (hC : 0 < C)
    (h : CeilingWindow C (G * E + 2 * C) e) :
    (e : ℚ) - 1 < (G : ℚ) * ((E : ℚ) / (C : ℚ)) + 2 ∧
      (G : ℚ) * ((E : ℚ) / (C : ℚ)) + 2 ≤ (e : ℚ) := by
  have hc : (0 : ℚ) < C := by exact_mod_cast hC
  have hlo : (C : ℚ) * ((e : ℚ) - 1) < (G : ℚ) * (E : ℚ) + 2 * C := by exact_mod_cast h.1
  have hhi : (G : ℚ) * (E : ℚ) + 2 * C ≤ (C : ℚ) * (e : ℚ) := by exact_mod_cast h.2
  have heq : (G : ℚ) * ((E : ℚ) / (C : ℚ)) + 2 =
      ((G : ℚ) * E + 2 * C) / C := by
    field_simp [ne_of_gt hc] <;> ring
  rw [heq]
  exact ⟨(lt_div_iff₀ hc).mpr (by nlinarith),
    (div_le_iff₀ hc).mpr (by nlinarith)⟩

end GRWTSK.Analysis.Complex.IntegerTaylorPolynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/IntegerTaylorPolynomial.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0fb0112f43dfe779ef7f3bab3efbc722a1a21d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
