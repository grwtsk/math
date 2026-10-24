# ExtensionImageCharacterization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5fadaeca3d43cb7395b7fdfde969b8fcb74686d8f67aa781e5a3ef5d1a35c87d",
  "kind": "def",
  "lexical_name": "ExtensionImageCharacterization",
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
  "slug": "extensionimagecharacterization--aad9b9701471fe4081ec52b6",
  "source": {
    "blob": "593da8fc92f7327e8788edca415a525b29e74cce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 244,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Variant5162ff62e0a0e9f476f131c0b0a19e8a32ab7f262ff7609206fe0a6b0ddfb105.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aad9b9701471fe4081ec52b6536d7050e96ce7cf293ffcfebeedf1109745438e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Variant5162ff62e0a0e9f476f131c0b0a19e8a32ab7f262ff7609206fe0a6b0ddfb105.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5fadaeca3d43cb7395b7fdfde969b8fcb74686d8f67aa781e5a3ef5d1a35c87d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ExtensionImageCharacterization
    (E : ExtensionComparison.{uObj}) : Prop :=
  ∀ e : E.HenExt,
    E.algebraizable e ↔
    ∃ a : E.AlgExt, E.map a = e

/-- Scope and status predicates kept separate from categorical evidence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Variant5162ff62e0a0e9f476f131c0b0a19e8a32ab7f262ff7609206fe0a6b0ddfb105.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Variant5162ff62e0a0e9f476f131c0b0a19e8a32ab7f262ff7609206fe0a6b0ddfb105.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `593da8fc92f7327e8788edca415a525b29e74cce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
