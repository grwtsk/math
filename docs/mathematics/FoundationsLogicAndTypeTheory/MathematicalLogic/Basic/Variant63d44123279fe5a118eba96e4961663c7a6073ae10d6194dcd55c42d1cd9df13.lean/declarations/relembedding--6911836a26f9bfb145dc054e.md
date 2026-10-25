# RelEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:365f3c177228c4c9288cee2325358fb44394b65de00390ca88b8cf5fdea2a960",
  "kind": "structure",
  "lexical_name": "RelEmbedding",
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
  "slug": "relembedding--6911836a26f9bfb145dc054e",
  "source": {
    "blob": "311540d0db8cb2155ba005e59cea661a8ae0004b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 211,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant63d44123279fe5a118eba96e4961663c7a6073ae10d6194dcd55c42d1cd9df13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6911836a26f9bfb145dc054ea52658b70c5fe4c5a99af03ee736a49e7de63e55",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant63d44123279fe5a118eba96e4961663c7a6073ae10d6194dcd55c42d1cd9df13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:365f3c177228c4c9288cee2325358fb44394b65de00390ca88b8cf5fdea2a960`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RelEmbedding {α β : Type*} (r : α → α → Prop) (s : β → β → Prop) extends α ↪ β where
  /-- Elements are related iff they are related after apply a `RelEmbedding` -/
  map_rel_iff' : ∀ {a b}, s (toEmbedding a) (toEmbedding b) ↔ r a b

/-- A relation embedding with respect to a given pair of relations `r` and `s`
is an embedding `f : α ↪ β` such that `r a b ↔ s (f a) (f b)`. -/
infixl:25 " ↪r " => RelEmbedding

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant63d44123279fe5a118eba96e4961663c7a6073ae10d6194dcd55c42d1cd9df13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant63d44123279fe5a118eba96e4961663c7a6073ae10d6194dcd55c42d1cd9df13.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `311540d0db8cb2155ba005e59cea661a8ae0004b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
