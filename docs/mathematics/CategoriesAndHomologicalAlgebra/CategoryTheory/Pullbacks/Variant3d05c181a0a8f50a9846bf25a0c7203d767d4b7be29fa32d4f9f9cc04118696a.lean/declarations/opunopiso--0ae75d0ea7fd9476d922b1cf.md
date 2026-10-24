# opUnopIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9fb1ef309da1b3733393d26739cb04c6a2ecc33c5fede3a20a08664fa4756ab",
  "kind": "def",
  "lexical_name": "opUnopIso",
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
  "slug": "opunopiso--0ae75d0ea7fd9476d922b1cf",
  "source": {
    "blob": "5ebe4f6986e43a1d21a52a623921241f015e0f90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 204,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant3d05c181a0a8f50a9846bf25a0c7203d767d4b7be29fa32d4f9f9cc04118696a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ae75d0ea7fd9476d922b1cfe29bd4f733a04226b17d5c3cc100d5cff00e4df8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant3d05c181a0a8f50a9846bf25a0c7203d767d4b7be29fa32d4f9f9cc04118696a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9fb1ef309da1b3733393d26739cb04c6a2ecc33c5fede3a20a08664fa4756ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def opUnopIso {X Y Z : C} {f : X ⟶ Y} {g : X ⟶ Z} (c : PushoutCocone f g) : c.op.unop ≅ c :=
  PushoutCocone.ext (Iso.refl _) (by simp) (by simp)

set_option backward.defeqAttrib.useBackward true in
/-- If `c` is a pushout cocone in `Cᵒᵖ`, then `c.unop.op` is isomorphic to `c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant3d05c181a0a8f50a9846bf25a0c7203d767d4b7be29fa32d4f9f9cc04118696a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant3d05c181a0a8f50a9846bf25a0c7203d767d4b7be29fa32d4f9f9cc04118696a.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ebe4f6986e43a1d21a52a623921241f015e0f90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
