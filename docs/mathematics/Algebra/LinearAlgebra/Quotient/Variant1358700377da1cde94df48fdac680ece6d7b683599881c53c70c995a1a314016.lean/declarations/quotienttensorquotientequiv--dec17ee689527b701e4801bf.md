# quotientTensorQuotientEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d4d9b07f2e8bd0923a0455806b94e56ea23d2282e5bd099a556a37bb1f3c310",
  "kind": "def",
  "lexical_name": "quotientTensorQuotientEquiv",
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
  "slug": "quotienttensorquotientequiv--dec17ee689527b701e4801bf",
  "source": {
    "blob": "5f1a42cce43dd6937d69090248fd98f12407178d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 64,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant1358700377da1cde94df48fdac680ece6d7b683599881c53c70c995a1a314016.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dec17ee689527b701e4801bff5ab0ee5721c21d1a309a26774dc01a77a01c611",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variant1358700377da1cde94df48fdac680ece6d7b683599881c53c70c995a1a314016.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d4d9b07f2e8bd0923a0455806b94e56ea23d2282e5bd099a556a37bb1f3c310`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def quotientTensorQuotientEquiv (m : Submodule R M) (n : Submodule R N) :
    (M ⧸ (m : Submodule R M)) ⊗[R] (N ⧸ (n : Submodule R N)) ≃ₗ[R]
    (M ⊗[R] N) ⧸
      (LinearMap.range (map m.subtype LinearMap.id) ⊔
        LinearMap.range (map LinearMap.id n.subtype)) :=
  LinearEquiv.ofLinearMap
    (lift <| Submodule.liftQ _ (LinearMap.flip <| Submodule.liftQ _
      ((mk R (M := M) (N := N)).flip.compr₂ (Submodule.mkQ _)) fun x hx => by
      ext y
      simp only [LinearMap.compr₂_apply, LinearMap.flip_apply, mk_apply, Submodule.mkQ_apply,
        LinearMap.zero_apply, Submodule.Quotient.mk_eq_zero]
      exact Submodule.mem_sup_right ⟨y ⊗ₜ ⟨x, hx⟩, rfl⟩) fun x hx => by
      ext y
      simp only [LinearMap.coe_comp, Function.comp_apply, Submodule.mkQ_apply, LinearMap.flip_apply,
        Submodule.liftQ_apply, LinearMap.compr₂_apply, mk_apply, LinearMap.zero_comp,
        LinearMap.zero_apply, Submodule.Quotient.mk_eq_zero]
      exact Submodule.mem_sup_left ⟨⟨x, hx⟩ ⊗ₜ y, rfl⟩)
    (Submodule.liftQ _ (map (Submodule.mkQ _) (Submodule.mkQ _)) fun x hx => by
      rw [Submodule.mem_sup] at hx
      rcases hx with ⟨_, ⟨a, rfl⟩, _, ⟨b, rfl⟩, rfl⟩
      simp only [LinearMap.mem_ker, map_add]
      set f := (map m.mkQ n.mkQ) ∘ₗ (map m.subtype LinearMap.id)
      set g := (map m.mkQ n.mkQ) ∘ₗ (map LinearMap.id n.subtype)
      have eq : LinearMap.coprod f g = 0 := by
        ext x y
        · simp [f, Submodule.Quotient.mk_eq_zero _ |>.2 x.2]
        · simp [g, Submodule.Quotient.mk_eq_zero _ |>.2 y.2]
      exact congr($eq (a, b)))
    (by ext; simp) (by ext; simp)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variant1358700377da1cde94df48fdac680ece6d7b683599881c53c70c995a1a314016.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variant1358700377da1cde94df48fdac680ece6d7b683599881c53c70c995a1a314016.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f1a42cce43dd6937d69090248fd98f12407178d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
