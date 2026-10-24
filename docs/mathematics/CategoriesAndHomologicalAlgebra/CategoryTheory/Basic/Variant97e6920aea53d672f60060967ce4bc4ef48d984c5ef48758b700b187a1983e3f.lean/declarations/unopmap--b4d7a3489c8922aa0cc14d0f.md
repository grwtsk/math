# unopMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:557659898c186017560ac75d758f92beec45d7998f10b3fc62557a1600fd52ed",
  "kind": "def",
  "lexical_name": "unopMap",
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
  "slug": "unopmap--b4d7a3489c8922aa0cc14d0f",
  "source": {
    "blob": "dbed55d20ef07d8d5cc495ae730c264dc7ab3bde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 273,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant97e6920aea53d672f60060967ce4bc4ef48d984c5ef48758b700b187a1983e3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4d7a3489c8922aa0cc14d0fb2765ea21d23ab8fac8aa149e0159cf814bd5154",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant97e6920aea53d672f60060967ce4bc4ef48d984c5ef48758b700b187a1983e3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:557659898c186017560ac75d758f92beec45d7998f10b3fc62557a1600fd52ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unopMap {S₁ S₂ : ShortComplex Cᵒᵖ} (φ : S₁ ⟶ S₂) : S₂.unop ⟶ S₁.unop where
  τ₁ := φ.τ₃.unop
  τ₂ := φ.τ₂.unop
  τ₃ := φ.τ₁.unop
  comm₁₂ := by
    dsimp
    simp only [← unop_comp, φ.comm₂₃]
  comm₂₃ := by
    dsimp
    simp only [← unop_comp, φ.comm₁₂]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant97e6920aea53d672f60060967ce4bc4ef48d984c5ef48758b700b187a1983e3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant97e6920aea53d672f60060967ce4bc4ef48d984c5ef48758b700b187a1983e3f.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbed55d20ef07d8d5cc495ae730c264dc7ab3bde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
