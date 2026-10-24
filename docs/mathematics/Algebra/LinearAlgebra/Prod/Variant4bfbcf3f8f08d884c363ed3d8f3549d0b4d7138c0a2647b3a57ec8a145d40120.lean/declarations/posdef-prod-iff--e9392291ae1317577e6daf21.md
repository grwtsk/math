# posDef_prod_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2159fa44-003b-dc7f-71a0-5e84a49bfb9e",
  "kind": "theorem",
  "lexical_name": "posDef_prod_iff",
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
  "slug": "posdef-prod-iff--e9392291ae1317577e6daf21",
  "source": {
    "blob": "b57da388bf8929289dd5dec14df51fce5996d44f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 110,
    "path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9392291ae1317577e6daf215bb86a147300de25f28a86f583f7c8d2bf0d3ea9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2159fa44-003b-dc7f-71a0-5e84a49bfb9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem posDef_prod_iff {R} [OrderedRing R] [Module R M₁] [Module R M₂] {Q₁ : QuadraticForm R M₁}
    {Q₂ : QuadraticForm R M₂} : (Q₁.prod Q₂).PosDef ↔ Q₁.PosDef ∧ Q₂.PosDef := by
  simp_rw [posDef_iff_nonneg, nonneg_prod_iff]
  constructor
  · rintro ⟨⟨hle₁, hle₂⟩, ha⟩
    obtain ⟨ha₁, ha₂⟩ := anisotropic_of_prod ha
    refine' ⟨⟨hle₁, ha₁⟩, ⟨hle₂, ha₂⟩⟩
  · rintro ⟨⟨hle₁, ha₁⟩, ⟨hle₂, ha₂⟩⟩
    refine' ⟨⟨hle₁, hle₂⟩, _⟩
    rintro ⟨x₁, x₂⟩ (hx : Q₁ x₁ + Q₂ x₂ = 0)
    rw [add_eq_zero_iff' (hle₁ x₁) (hle₂ x₂), ha₁.eq_zero_iff, ha₂.eq_zero_iff] at hx
    rwa [Prod.mk_eq_zero]
#align quadratic_form.pos_def_prod_iff QuadraticForm.posDef_prod_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b57da388bf8929289dd5dec14df51fce5996d44f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
