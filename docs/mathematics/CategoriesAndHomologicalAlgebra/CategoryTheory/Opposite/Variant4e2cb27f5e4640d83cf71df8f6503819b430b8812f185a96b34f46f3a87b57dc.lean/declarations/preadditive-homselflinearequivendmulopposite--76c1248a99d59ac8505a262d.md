# Preadditive.homSelfLinearEquivEndMulOpposite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42f4409bbaa46dfe2bfae665acb95757c8de93ba1e9329c009d583b757728ab1",
  "kind": "def",
  "lexical_name": "Preadditive.homSelfLinearEquivEndMulOpposite",
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
  "slug": "preadditive-homselflinearequivendmulopposite--76c1248a99d59ac8505a262d",
  "source": {
    "blob": "6f664e87c9275b58f18b4608ba38f7d24961d245",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 88,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76c1248a99d59ac8505a262d9e818bb82e25a7c041b7bfa422a17eb1d7f9d0da",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42f4409bbaa46dfe2bfae665acb95757c8de93ba1e9329c009d583b757728ab1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Preadditive.homSelfLinearEquivEndMulOpposite (G : C) : (G ⟶ G) ≃ₗ[(End G)ᵐᵒᵖ] (End G)ᵐᵒᵖ where
  toFun f := ⟨f⟩
  map_add' := by aesop_cat
  map_smul' := by aesop_cat
  invFun := fun ⟨f⟩ => f
  left_inv := by aesop_cat
  right_inv := by aesop_cat

variable {D : Type*} [Category D] [Preadditive D]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f664e87c9275b58f18b4608ba38f7d24961d245` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
