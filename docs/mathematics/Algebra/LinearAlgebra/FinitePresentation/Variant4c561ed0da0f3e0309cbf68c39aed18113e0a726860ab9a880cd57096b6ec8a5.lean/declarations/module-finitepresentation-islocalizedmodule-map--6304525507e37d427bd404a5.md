# Module.FinitePresentation.isLocalizedModule_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e20f4769a2d0bb5aa97796202c92a352b08d991cdc3fbced9fb73274194d4ab2",
  "kind": "instance",
  "lexical_name": "Module.FinitePresentation.isLocalizedModule_map",
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
  "slug": "module-finitepresentation-islocalizedmodule-map--6304525507e37d427bd404a5",
  "source": {
    "blob": "f8d72c1205c62f1d65e2ec1ec2305e4e42384d04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 565,
    "line": 543,
    "path": "GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant4c561ed0da0f3e0309cbf68c39aed18113e0a726860ab9a880cd57096b6ec8a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6304525507e37d427bd404a549f800c7523be3df8000ebe34eb9ffa22a6e63ff",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FinitePresentation/Variant4c561ed0da0f3e0309cbf68c39aed18113e0a726860ab9a880cd57096b6ec8a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e20f4769a2d0bb5aa97796202c92a352b08d991cdc3fbced9fb73274194d4ab2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 543–565.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Module.FinitePresentation.isLocalizedModule_map [Module.FinitePresentation R M] :
    IsLocalizedModule S (IsLocalizedModule.map S f g) := by
  constructor
  · intro s
    rw [Module.End.isUnit_iff]
    have := (Module.End.isUnit_iff _).mp (IsLocalizedModule.map_units (S := S) (f := g) s)
    constructor
    · exact fun _ _ e ↦ LinearMap.ext fun m ↦ this.left (LinearMap.congr_fun e m)
    · intro h
      use ((IsLocalizedModule.map_units (S := S) (f := g) s).unit⁻¹).1 ∘ₗ h
      ext x
      exact Module.End.isUnit_apply_inv_apply_of_isUnit
        (IsLocalizedModule.map_units (S := S) (f := g) s) (h x)
  · intro h
    obtain ⟨h', s, e⟩ := Module.FinitePresentation.exists_lift_of_isLocalizedModule S g (h ∘ₗ f)
    refine ⟨⟨h', s⟩, ?_⟩
    apply IsLocalizedModule.ext S f (IsLocalizedModule.map_units g)
    refine e.symm.trans (by ext; simp)
  · intro h₁ h₂ e
    apply Module.Finite.exists_smul_of_comp_eq_of_isLocalizedModule S g
    ext x
    simpa using LinearMap.congr_fun e (f x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FinitePresentation/Variant4c561ed0da0f3e0309cbf68c39aed18113e0a726860ab9a880cd57096b6ec8a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant4c561ed0da0f3e0309cbf68c39aed18113e0a726860ab9a880cd57096b6ec8a5.lean#L543).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8d72c1205c62f1d65e2ec1ec2305e4e42384d04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
