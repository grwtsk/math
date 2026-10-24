# preordToPartOrdForgetAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88c151afbfec1542015f9f9a4321575b0a316782c8dedb8f351ba054adcb0303",
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
  "slug": "preordtopartordforgetadjunction--c5995ee39a41635f75ec7a43",
  "source": {
    "blob": "2780cb6b0d87b578e10ab338686561ddf36d5ffa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 189,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5995ee39a41635f75ec7a43b182ae6b98e392bb3a2200357900bf9e3063f930",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88c151afbfec1542015f9f9a4321575b0a316782c8dedb8f351ba054adcb0303`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–206.

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
          left_inv _ := PartOrd.ext fun x => Quotient.inductionOn' x fun _ => rfl
          right_inv _ := Preord.ext fun _ => rfl }
      homEquiv_naturality_left_symm _ _ :=
        PartOrd.ext fun x => Quotient.inductionOn' x fun _ => rfl }

-- The `simpNF` linter would complain as `Functor.comp_obj`, `Preord.dual_obj` both apply to LHS
-- of `preordToPartOrdCompToDualIsoToDualCompPreordToPartOrd_hom_app_coe`
/-- `PreordToPartOrd` and `OrderDual` commute. -/
@[simps! -isSimp hom_app_hom_coe inv_app_hom_coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2780cb6b0d87b578e10ab338686561ddf36d5ffa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
