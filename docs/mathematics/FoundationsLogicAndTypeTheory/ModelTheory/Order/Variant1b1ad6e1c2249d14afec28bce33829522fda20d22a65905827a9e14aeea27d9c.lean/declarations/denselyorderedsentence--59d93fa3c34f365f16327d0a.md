# denselyOrderedSentence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f4afe8cebb64657f3a2cd328d06d1189bcf83b2c1e5377ab3ba1645cb011cc2",
  "kind": "def",
  "lexical_name": "denselyOrderedSentence",
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
  "slug": "denselyorderedsentence--59d93fa3c34f365f16327d0a",
  "source": {
    "blob": "c1eb205699b71ab18ddedcf0abc38c48b6cc05c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 188,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variant1b1ad6e1c2249d14afec28bce33829522fda20d22a65905827a9e14aeea27d9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59d93fa3c34f365f16327d0a9b57aa9daf03919ab04f18620f8e83c92ea0f098",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variant1b1ad6e1c2249d14afec28bce33829522fda20d22a65905827a9e14aeea27d9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f4afe8cebb64657f3a2cd328d06d1189bcf83b2c1e5377ab3ba1645cb011cc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def denselyOrderedSentence : L.Sentence :=
  ∀'∀'((&0).lt &1 ⟹ ∃'((&0).lt &2 ⊓ (&2).lt &1))

/-- The theory of dense linear orders without endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variant1b1ad6e1c2249d14afec28bce33829522fda20d22a65905827a9e14aeea27d9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variant1b1ad6e1c2249d14afec28bce33829522fda20d22a65905827a9e14aeea27d9c.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1eb205699b71ab18ddedcf0abc38c48b6cc05c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
