# greenHighB2_eq_residueMajorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08363d28-bea6-9ced-1a98-64e9ebefaf8e",
  "kind": "theorem",
  "lexical_name": "greenHighB2_eq_residueMajorant",
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
  "slug": "greenhighb2-eq-residuemajorant--4e8738fb7e90fc7e5832fc7a",
  "source": {
    "blob": "15b5c6d3b417bbb4220af72a925f50b58343a680",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 44,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHighTailComponents.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e8738fb7e90fc7e5832fc7aa789db1e185d8144e0789a63ca038ced9ec537d9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHighTailComponents.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08363d28-bea6-9ced-1a98-64e9ebefaf8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem greenHighB2_eq_residueMajorant
    (X Q : ℕ) :
    (∑ r ∈ greenPositivePrincipalResidues X,
      ∑ q ∈ Finset.Icc 1 Q,
        (greenResidualB ((q * X - r : ℕ) : ℤ) r)^2 +
        (greenResidualB ((q * X + r : ℕ) : ℤ) r)^2) =
      (1 / (16 * Real.pi^2)) *
        greenHighQuotientResidueMajorant X Q := by
  unfold greenResidualB greenHighQuotientResidueMajorant
  apply Finset.sum_congr rfl
  intro r hr
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro q hq
  have hrpos : 1 ≤ r := (Finset.mem_Icc.mp hr).1
  have hqpos : 1 ≤ q := (Finset.mem_Icc.mp hq).1
  have hden := principal_residue_denominator_lower
    (by
      unfold greenPositivePrincipalResidues at hr
      have := (Finset.mem_Icc.mp hr).2
      omega) hr hqpos
  have hmpos : 0 < q * X - r := by omega
  simp only [Int.cast_natCast, abs_ofNat]
  field_simp
  ring

/-- A^2 high tail is O(X^-4), hence certainly O(X^-2). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHighTailComponents.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHighTailComponents.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15b5c6d3b417bbb4220af72a925f50b58343a680` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
