# isCoproductOfIsInitialIsPushout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21af567fcc74c23e2e05d2f8cf59ba37c4a6dfe8335a97ad355e9ae3955a8bd9",
  "kind": "def",
  "lexical_name": "isCoproductOfIsInitialIsPushout",
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
  "slug": "iscoproductofisinitialispushout--98a28bcf0a419143ec406e96",
  "source": {
    "blob": "a4d832eb6c67003430bf56895a578dc29cb988c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 160,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant50439aef75720130d54838e286ef45323f460a5889d3828ce772315bab441c01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98a28bcf0a419143ec406e96eda614de6ce3994b08b1afe6f2043bf52ea93fda",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant50439aef75720130d54838e286ef45323f460a5889d3828ce772315bab441c01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21af567fcc74c23e2e05d2f8cf59ba37c4a6dfe8335a97ad355e9ae3955a8bd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isCoproductOfIsInitialIsPushout {W X Y Z : C} (f : X ⟶ Z) (g : Y ⟶ Z) (h : W ⟶ X) (k : W ⟶ Y)
    (H₁ : IsInitial W)
    (H₂ : IsColimit (PushoutCocone.mk _ _ (show h ≫ f = k ≫ g from H₁.hom_ext _ _))) :
    IsColimit (BinaryCofan.mk f g) := by
  apply isBinaryCoproductOfIsInitialIsPushout _ _ H₁
  exact H₂

/-- The coproduct is the pushout under the initial object. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant50439aef75720130d54838e286ef45323f460a5889d3828ce772315bab441c01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant50439aef75720130d54838e286ef45323f460a5889d3828ce772315bab441c01.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4d832eb6c67003430bf56895a578dc29cb988c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
