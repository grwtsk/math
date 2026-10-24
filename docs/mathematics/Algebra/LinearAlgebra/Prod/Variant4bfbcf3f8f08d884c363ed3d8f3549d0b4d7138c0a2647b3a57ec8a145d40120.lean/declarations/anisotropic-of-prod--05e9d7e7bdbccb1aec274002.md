# anisotropic_of_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83defa70-5ea2-7402-30c5-407cb97e937d",
  "kind": "theorem",
  "lexical_name": "anisotropic_of_prod",
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
  "slug": "anisotropic-of-prod--05e9d7e7bdbccb1aec274002",
  "source": {
    "blob": "b57da388bf8929289dd5dec14df51fce5996d44f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 85,
    "path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05e9d7e7bdbccb1aec2740023dacd723c8dfbf568cdb5b89208515c720d8fb05",
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

Occurrence: `result:83defa70-5ea2-7402-30c5-407cb97e937d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem anisotropic_of_prod {R} [OrderedRing R] [Module R M₁] [Module R M₂]
    {Q₁ : QuadraticForm R M₁} {Q₂ : QuadraticForm R M₂} (h : (Q₁.prod Q₂).Anisotropic) :
    Q₁.Anisotropic ∧ Q₂.Anisotropic := by
  simp_rw [Anisotropic, prod_apply, Prod.forall, Prod.mk_eq_zero] at h
  constructor
  · intro x hx
    refine' (h x 0 _).1
    rw [hx, zero_add, map_zero]
  · intro x hx
    refine' (h 0 x _).2
    rw [hx, add_zero, map_zero]
#align quadratic_form.anisotropic_of_prod QuadraticForm.anisotropic_of_prod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b57da388bf8929289dd5dec14df51fce5996d44f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
