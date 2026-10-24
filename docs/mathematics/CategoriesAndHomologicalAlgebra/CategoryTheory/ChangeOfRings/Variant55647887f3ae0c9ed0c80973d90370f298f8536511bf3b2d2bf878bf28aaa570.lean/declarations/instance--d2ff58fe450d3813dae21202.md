# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb0a6606419e334e13a6824da34699c89e062a543395623e76d4455a54edf92d",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--d2ff58fe450d3813dae21202",
  "source": {
    "blob": "ddee0fd1ce72b50ccdb91956c214c2980ed3b477",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 126,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant55647887f3ae0c9ed0c80973d90370f298f8536511bf3b2d2bf878bf28aaa570.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2ff58fe450d3813dae212026fb8409a938996a7aa9106f558c61c84b253589c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant55647887f3ae0c9ed0c80973d90370f298f8536511bf3b2d2bf878bf28aaa570.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb0a6606419e334e13a6824da34699c89e062a543395623e76d4455a54edf92d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) sMulCommClass_mk {R : Type u₁} {S : Type u₂} [Ring R] [CommRing S]
    (f : R →+* S) (M : Type v) [I : AddCommGroup M] [Module S M] :
    have : SMul R M := (RestrictScalars.obj' f (ModuleCat.mk M)).isModule.toSMul
    SMulCommClass R S M :=
  -- Porting note: cannot synth SMul R M
  have : SMul R M := (RestrictScalars.obj' f (ModuleCat.mk M)).isModule.toSMul
  @SMulCommClass.mk R S M (_) _
   <| fun r s m => (by simp [← mul_smul, mul_comm] : f r • s • m = s • f r • m)
#align category_theory.Module.smul_comm_class_mk CategoryTheory.ModuleCat.sMulCommClass_mk

open TensorProduct

variable {R : Type u₁} {S : Type u₂} [CommRing R] [CommRing S] (f : R →+* S)

section CategoryTheory.ModuleCat.Unbundled

variable (M : Type v) [AddCommMonoid M] [Module R M]

-- mathport name: «expr ⊗ₜ[ , ] »
-- This notation is necessary because we need to reason about `s ⊗ₜ m` where `s : S` and `m : M`;
-- without this notation, one need to work with `s : (restrictScalars f).obj ⟨S⟩`.
scoped[ChangeOfRings]
  notation s "⊗ₜ[" R "," f "]" m => @TensorProduct.tmul R _ _ _ _ _ (Module.compHom _ f) _ s m

end Unbundled

namespace ExtendScalars

open ChangeOfRings

variable (M : ModuleCat.{v} R)

/-- Extension of scalars turn an `R`-module into `S`-module by M ↦ S ⨂ M
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant55647887f3ae0c9ed0c80973d90370f298f8536511bf3b2d2bf878bf28aaa570.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant55647887f3ae0c9ed0c80973d90370f298f8536511bf3b2d2bf878bf28aaa570.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddee0fd1ce72b50ccdb91956c214c2980ed3b477` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
