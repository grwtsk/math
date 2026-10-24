# greenAliasResidualEnergy_le_components

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7e4f571-fddf-9f2b-3fe4-90d6f4a67cc4",
  "kind": "theorem",
  "lexical_name": "greenAliasResidualEnergy_le_components",
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
  "slug": "greenaliasresidualenergy-le-components--4fe697f246d920884daca933",
  "source": {
    "blob": "03b2d6084c795301cd4c02dee6c4b712e0e9dffc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 22,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAliasEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fe697f246d920884daca933d5960b7f07c1f0de2d2813d9f98d4bbc7d8835db",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAliasEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7e4f571-fddf-9f2b-3fe4-90d6f4a67cc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem greenAliasResidualEnergy_le_components
    {X Q : ℕ} (hX : 1 ≤ X) :
    greenAliasResidualEnergy X Q ≤
      4 * ∑ q ∈ Finset.Icc 1 Q,
        (greenAliasResidualA ((q * X : ℕ) : ℤ)^2 +
         greenAliasResidualD ((q * X : ℕ) : ℤ)^2) := by
  unfold greenAliasResidualEnergy
  apply Finset.sum_le_sum
  intro q hq
  have hqpos : 1 ≤ q := (Finset.mem_Icc.mp hq).1
  have hkpos : ((q * X : ℕ) : ℤ) ≠ 0 := by omega
  have hpos := sq_norm_greenCenteringResidual_le_aliasing hX hkpos
    (by
      unfold GreenMeshAliasing
      exact ⟨q, by norm_num [mul_comm]⟩)
  have hkneg : -((q * X : ℕ) : ℤ) ≠ 0 := neg_ne_zero.mpr hkpos
  have hneg := sq_norm_greenCenteringResidual_le_aliasing hX hkneg
    (by
      unfold GreenMeshAliasing
      exact ⟨-q, by push_cast; ring⟩)
  have hsameA :
      greenAliasResidualA (-((q * X : ℕ) : ℤ)) =
        greenAliasResidualA ((q * X : ℕ) : ℤ) := by
    unfold greenAliasResidualA greenResidualA
    simp
  have hsameD :
      greenAliasResidualD (-((q * X : ℕ) : ℤ)) =
        greenAliasResidualD ((q * X : ℕ) : ℤ) := by
    unfold greenAliasResidualD
    simp
  rw [hsameA, hsameD] at hneg
  linarith

/-- Exact scalar forms of alias components. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAliasEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAliasEnergy.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03b2d6084c795301cd4c02dee6c4b712e0e9dffc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
