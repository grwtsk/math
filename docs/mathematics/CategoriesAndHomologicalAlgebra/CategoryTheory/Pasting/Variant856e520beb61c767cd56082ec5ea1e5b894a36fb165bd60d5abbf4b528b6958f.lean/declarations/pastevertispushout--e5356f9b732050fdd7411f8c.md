# pasteVertIsPushout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b38236c2f095ad8755dd1cd01b65bd12762269c48b40745944f1e01e996ac936",
  "kind": "def",
  "lexical_name": "pasteVertIsPushout",
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
  "slug": "pastevertispushout--e5356f9b732050fdd7411f8c",
  "source": {
    "blob": "06835e66c01a91ba1ea771cb87ba5a07f2347311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 396,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variant856e520beb61c767cd56082ec5ea1e5b894a36fb165bd60d5abbf4b528b6958f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5356f9b732050fdd7411f8c01d60716540d524262ec40a817cafca61f296bfc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variant856e520beb61c767cd56082ec5ea1e5b894a36fb165bd60d5abbf4b528b6958f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b38236c2f095ad8755dd1cd01b65bd12762269c48b40745944f1e01e996ac936`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def pasteVertIsPushout (H₁ : IsColimit t₁) (H₂ : IsColimit t₂) :
    IsColimit (t₁.pasteVert t₂ hi₂) := by
  apply PushoutCocone.isColimitOfFlip <| IsColimit.ofIsoColimit _ (t₁.pasteVertFlip t₂ hi₂).symm
  exact pasteHorizIsPushout hi₂ (PushoutCocone.flipIsColimit H₁) (PushoutCocone.flipIsColimit H₂)

variable (t₂)

/-- Given
```
Y₃ - i₃ -> X₃
|          |
g₂         f₂
∨          ∨
Y₂ - i₂ -> X₂
|          |
g₁         f₁
∨          ∨
Y₁ - i₁ -> X₁
```
The bottom square is a pushout if the top square and the big square are.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variant856e520beb61c767cd56082ec5ea1e5b894a36fb165bd60d5abbf4b528b6958f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variant856e520beb61c767cd56082ec5ea1e5b894a36fb165bd60d5abbf4b528b6958f.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06835e66c01a91ba1ea771cb87ba5a07f2347311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
