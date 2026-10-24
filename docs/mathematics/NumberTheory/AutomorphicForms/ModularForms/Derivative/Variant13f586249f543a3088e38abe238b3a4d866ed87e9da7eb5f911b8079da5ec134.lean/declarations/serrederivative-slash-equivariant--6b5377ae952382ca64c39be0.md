# serreDerivative_slash_equivariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c51c434-e9f1-8f8c-9282-dbf928b992c6",
  "kind": "theorem",
  "lexical_name": "serreDerivative_slash_equivariant",
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
  "slug": "serrederivative-slash-equivariant--6b5377ae952382ca64c39be0",
  "source": {
    "blob": "01573ec68cb07af47909f04352ee6d894ad8232a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 233,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Derivative/Variant13f586249f543a3088e38abe238b3a4d866ed87e9da7eb5f911b8079da5ec134.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b5377ae952382ca64c39be011b501bba8f8020ec9194dff72e8d7b172f3a7fc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Derivative/Variant13f586249f543a3088e38abe238b3a4d866ed87e9da7eb5f911b8079da5ec134.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c51c434-e9f1-8f8c-9282-dbf928b992c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem serreDerivative_slash_equivariant {k : ℤ} {F : ℍ → ℂ} (hF : MDiff F) {γ : SL(2, ℤ)} :
    serreDerivative k F ∣[k + 2] γ = serreDerivative k (F ∣[k] γ) := by
  ext z
  have hLHS : (serreDerivative (k : ℂ) F ∣[k + 2] γ) z =
      (D F ∣[k + 2] γ) z - ↑k * 12⁻¹ * ((EisensteinSeries.E2 ∣[(2 : ℤ)] γ) z * (F ∣[k] γ) z) := by
    grind [ModularForm.SL_slash_apply, serreDerivative_apply, Pi.mul_apply,
      congrFun (ModularForm.mul_slash_SL2 2 k γ EisensteinSeries.E2 F) z]
  have hDz : (D (F ∣[k] γ)) z = (D F ∣[k + 2] γ) z -
      (k * (2 * π * I)⁻¹ * (γ 1 0 / denom γ z) * (F ∣[k] γ) z) := by
    simp [normalizedDerivOfComplex_SL_slash hF]
  have hE2z : (EisensteinSeries.E2 ∣[(2 : ℤ)] γ) z =
      EisensteinSeries.E2 z - 1 / (2 * riemannZeta 2) * EisensteinSeries.D2 γ z := by
    simp [EisensteinSeries.E2_slash_action]
  grind [serreDerivative_apply, EisensteinSeries.D2, riemannZeta_two, I_sq]

/--
As a corollary, if `F` is invariant under the slash action of weight `k`, then
`serreDerivative k F` is invariant under the slash action of weight `k + 2`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Derivative/Variant13f586249f543a3088e38abe238b3a4d866ed87e9da7eb5f911b8079da5ec134.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Derivative/Variant13f586249f543a3088e38abe238b3a4d866ed87e9da7eb5f911b8079da5ec134.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01573ec68cb07af47909f04352ee6d894ad8232a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
