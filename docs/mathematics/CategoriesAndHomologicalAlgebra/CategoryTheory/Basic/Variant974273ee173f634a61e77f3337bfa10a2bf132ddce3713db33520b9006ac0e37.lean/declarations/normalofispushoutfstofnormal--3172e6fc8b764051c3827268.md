# normalOfIsPushoutFstOfNormal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7fe2616ce9c500e4789c4b3340aa0662cf59f24fce310a20b894b63fcc5a0856",
  "kind": "def",
  "lexical_name": "normalOfIsPushoutFstOfNormal",
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
  "slug": "normalofispushoutfstofnormal--3172e6fc8b764051c3827268",
  "source": {
    "blob": "b555cd0314c3bc45846307e61d8f2a2f45baf4f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 213,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3172e6fc8b764051c3827268f9afbf4e0aa4fc913d8dc4ab89d6b2b367fcd5ef",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7fe2616ce9c500e4789c4b3340aa0662cf59f24fce310a20b894b63fcc5a0856`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalOfIsPushoutFstOfNormal {P Q R S : C} {f : P ⟶ Q} {g : P ⟶ R} {h : Q ⟶ S} {k : R ⟶ S}
    [NormalEpi f] (comm : f ≫ h = g ≫ k) (t : IsColimit (PushoutCocone.mk _ _ comm)) :
    NormalEpi k :=
  normalOfIsPushoutSndOfNormal comm.symm (PushoutCocone.flipIsColimit t)

end

open Opposite

variable [HasZeroMorphisms C]

/-- A normal mono becomes a normal epi in the opposite category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b555cd0314c3bc45846307e61d8f2a2f45baf4f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
