# preordToPartOrdForgetAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24669cb854b05fdad42dbf5d3546d2cdabc8bd0026cdde0ce27a3ad179d6c8f6",
  "kind": "def",
  "lexical_name": "preordToPartOrdForgetAdjunction",
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
  "slug": "preordtopartordforgetadjunction--0b1ac82596e42a32f7818d84",
  "source": {
    "blob": "1aa069c3af09a7b309d3c9aeea538d3be0e6c820",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 200,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrd/Variant7e43b65654c85d946df4d31cd4d9b4d6752587b4174082f3da5b466c71f4cb04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b1ac82596e42a32f7818d843903bc0df7712f849dcf5d473060b915f10963a8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrd/Variant7e43b65654c85d946df4d31cd4d9b4d6752587b4174082f3da5b466c71f4cb04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24669cb854b05fdad42dbf5d3546d2cdabc8bd0026cdde0ce27a3ad179d6c8f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preordToPartOrdForgetAdjunction :
    preordToPartOrd.{u} ⊣ forget₂ PartOrd Preord :=
  Adjunction.mkOfHomEquiv
    { homEquiv _ _ :=
        { toFun f := Preord.ofHom
            ⟨f ∘ toAntisymmetrization (· ≤ ·), f.hom.mono.comp toAntisymmetrization_mono⟩
          invFun f := PartOrd.ofHom
            ⟨fun a => Quotient.liftOn' a f (fun _ _ h => (AntisymmRel.image h f.hom.mono).eq),
              fun a b => Quotient.inductionOn₂' a b fun _ _ h => f.hom.mono h⟩
          left_inv _ := PartOrd.ext fun x => Quotient.inductionOn' x fun _ => rfl }
      homEquiv_naturality_left_symm _ _ :=
        PartOrd.ext fun x => Quotient.inductionOn' x fun _ => rfl }

-- The `simpNF` linter would complain as `Functor.comp_obj`, `Preord.dual_obj` both apply to LHS
-- of `preordToPartOrdCompToDualIsoToDualCompPreordToPartOrd_hom_app_coe`
/-- `PreordToPartOrd` and `OrderDual` commute. -/
@[simps! -isSimp hom_app_hom_coe inv_app_hom_coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrd/Variant7e43b65654c85d946df4d31cd4d9b4d6752587b4174082f3da5b466c71f4cb04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrd/Variant7e43b65654c85d946df4d31cd4d9b4d6752587b4174082f3da5b466c71f4cb04.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1aa069c3af09a7b309d3c9aeea538d3be0e6c820` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
