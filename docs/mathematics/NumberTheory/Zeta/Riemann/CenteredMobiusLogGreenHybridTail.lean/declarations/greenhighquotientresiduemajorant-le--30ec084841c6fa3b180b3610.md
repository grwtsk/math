# greenHighQuotientResidueMajorant_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38941b52-ccbc-ed29-408e-0addd3ace3f6",
  "kind": "theorem",
  "lexical_name": "greenHighQuotientResidueMajorant_le",
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
  "slug": "greenhighquotientresiduemajorant-le--30ec084841c6fa3b180b3610",
  "source": {
    "blob": "ec8ffd6a49ce55533d498642515634401b14da40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 44,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30ec084841c6fa3b180b361029029eea03457dd76ea5b38562ebd98508da9257",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38941b52-ccbc-ed29-408e-0addd3ace3f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem greenHighQuotientResidueMajorant_le
    {X Q : ℕ} (hX : 1 ≤ X) :
    greenHighQuotientResidueMajorant X Q ≤
      (5 / (X : ℝ)^2) *
        (∑ r ∈ greenPositivePrincipalResidues X, 1 / (r : ℝ)^2) *
        (∑ q ∈ Finset.Icc 1 Q, 1 / (q : ℝ)^2) := by
  unfold greenHighQuotientResidueMajorant
  calc
    _ ≤ ∑ r ∈ greenPositivePrincipalResidues X,
        ∑ q ∈ Finset.Icc 1 Q,
          5 / ((r : ℝ)^2 * (q : ℝ)^2 * (X : ℝ)^2) := by
      apply Finset.sum_le_sum
      intro r hr
      apply Finset.sum_le_sum
      intro q hq
      have hrpos : 1 ≤ r := (Finset.mem_Icc.mp hr).1
      have hqpos : 1 ≤ q := (Finset.mem_Icc.mp hq).1
      have hden := principal_residue_denominator_lower hX hr hqpos
      have hXr : 0 < (X : ℝ) := by exact_mod_cast hX
      have hrr : 0 < (r : ℝ) := by exact_mod_cast hrpos
      have hqr : 0 < (q : ℝ) := by exact_mod_cast hqpos
      have hminus :
          (q * X : ℝ) / 2 ≤ ((q * X - r : ℕ) : ℝ) := by
        exact_mod_cast hden.1
      have hplus :
          (q * X : ℝ) ≤ ((q * X + r : ℕ) : ℝ) := by
        exact_mod_cast hden.2
      have hminuspos : 0 < ((q * X - r : ℕ) : ℝ) := by
        positivity
      have hpluspos : 0 < ((q * X + r : ℕ) : ℝ) := by positivity
      apply add_le_of_le_sub_left
      field_simp
      nlinarith
    _ = (5 / (X : ℝ)^2) *
        (∑ r ∈ greenPositivePrincipalResidues X, 1 / (r : ℝ)^2) *
        (∑ q ∈ Finset.Icc 1 Q, 1 / (q : ℝ)^2) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro r _
      rw [Finset.mul_sum]
      ring

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridTail.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec8ffd6a49ce55533d498642515634401b14da40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
