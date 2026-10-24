# isProductOfIsTerminalIsPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d9f6baf89495375567815124bb8fac870eb360daced1be0d51fddd9412b00c8",
  "kind": "def",
  "lexical_name": "isProductOfIsTerminalIsPullback",
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
  "slug": "isproductofisterminalispullback--eab9a31e4a0d74d65d747f0a",
  "source": {
    "blob": "a4d832eb6c67003430bf56895a578dc29cb988c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 52,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant50439aef75720130d54838e286ef45323f460a5889d3828ce772315bab441c01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eab9a31e4a0d74d65d747f0ac374cf28e1b18f7c36fdb88f4df74e8807ff88e3",
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

Occurrence: `declaration:4d9f6baf89495375567815124bb8fac870eb360daced1be0d51fddd9412b00c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isProductOfIsTerminalIsPullback {W X Y Z : C} (f : X ⟶ Z) (g : Y ⟶ Z) (h : W ⟶ X) (k : W ⟶ Y)
    (H₁ : IsTerminal Z)
    (H₂ : IsLimit (PullbackCone.mk _ _ (show h ≫ f = k ≫ g from H₁.hom_ext _ _))) :
    IsLimit (BinaryFan.mk h k) := by
  apply isBinaryProductOfIsTerminalIsPullback _ _ H₁
  exact H₂

/-- The product is the pullback over the terminal object. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant50439aef75720130d54838e286ef45323f460a5889d3828ce772315bab441c01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant50439aef75720130d54838e286ef45323f460a5889d3828ce772315bab441c01.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4d832eb6c67003430bf56895a578dc29cb988c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
