# Types.Quot.equivOrbitRelQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dbba7cc3f5f2152885343530cf445d66dc97fbe1bebd645d2edf568674596953",
  "kind": "def",
  "lexical_name": "Types.Quot.equivOrbitRelQuotient",
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
  "slug": "types-quot-equivorbitrelquotient--bdf4c73ddbbaacca4f069418",
  "source": {
    "blob": "50df41bfc584033db27db6723d5bacb808e5b579",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 91,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bdf4c73ddbbaacca4f06941800b8deeeb14ba6ad71faef5d39292b60a40b6410",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dbba7cc3f5f2152885343530cf445d66dc97fbe1bebd645d2edf568674596953`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Types.Quot.equivOrbitRelQuotient :
    Types.Quot J ≃ MulAction.orbitRel.Quotient G (J.obj (SingleObj.star G)) where
  toFun := Quot.lift (fun p => ⟦p.2⟧) <| fun a b h => Quotient.sound <|
    (Types.Quot.Rel.iff_orbitRel J a.2 b.2).mp h
  invFun := Quot.lift (fun x => Quot.mk _ ⟨SingleObj.star G, x⟩) <| fun a b h =>
    Quot.sound <| (Types.Quot.Rel.iff_orbitRel J a b).mpr h
  left_inv := fun x => Quot.inductionOn x (fun _ ↦ rfl)
  right_inv := fun x => Quot.inductionOn x (fun _ ↦ rfl)

/-- The colimit of `J : SingleObj G ⥤ Type u` is equivalent to the quotient of
`J.obj (SingleObj.star G)` by the induced action. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50df41bfc584033db27db6723d5bacb808e5b579` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
