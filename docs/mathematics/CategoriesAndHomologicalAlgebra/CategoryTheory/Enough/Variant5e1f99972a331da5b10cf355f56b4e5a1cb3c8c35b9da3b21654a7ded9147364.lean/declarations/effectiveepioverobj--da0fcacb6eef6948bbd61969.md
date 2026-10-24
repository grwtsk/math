# effectiveEpiOverObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84e2d93a2275a881e26ee950e3c40cc5fd623cf21b2a2eb01ac33e256c460d97",
  "kind": "def",
  "lexical_name": "effectiveEpiOverObj",
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
  "slug": "effectiveepioverobj--da0fcacb6eef6948bbd61969",
  "source": {
    "blob": "bb6d2c5230e1085765eb091cf2844135d5f5cb57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 51,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Enough/Variant5e1f99972a331da5b10cf355f56b4e5a1cb3c8c35b9da3b21654a7ded9147364.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da0fcacb6eef6948bbd61969bf20694fd5c120d03bc636bca8b58a80f8a49e5b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Enough/Variant5e1f99972a331da5b10cf355f56b4e5a1cb3c8c35b9da3b21654a7ded9147364.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84e2d93a2275a881e26ee950e3c40cc5fd623cf21b2a2eb01ac33e256c460d97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def effectiveEpiOverObj (X : D) : D :=
  F.obj (EffectivelyEnough.presentation (F := F) X).some.p

/--
The epimorphism `F.effectiveEpiOver : F.effectiveEpiOverObj X ⟶ X` from the arbitrarily chosen
object in the image of `F` over `X`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Enough/Variant5e1f99972a331da5b10cf355f56b4e5a1cb3c8c35b9da3b21654a7ded9147364.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Enough/Variant5e1f99972a331da5b10cf355f56b4e5a1cb3c8c35b9da3b21654a7ded9147364.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb6d2c5230e1085765eb091cf2844135d5f5cb57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
