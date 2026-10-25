# irreflexive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4310593bf188802a301ebb1d25d2c6ccfe54d6462b1dc2611c4065b0906cda1",
  "kind": "def",
  "lexical_name": "irreflexive",
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
  "slug": "irreflexive--b4699f92a21de65ba4b67297",
  "source": {
    "blob": "3e5c29613d9fe3c4c1ec28a8c11432152cf673e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1079,
    "line": 1075,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantcb9fce668fad7f03049c01c2cdd4f4926295f06fa686a71af13fc968e04391b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4699f92a21de65ba4b67297d0e540c3bd4a1e8723eb3b28a96bb09f5a55a2c9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantcb9fce668fad7f03049c01c2cdd4f4926295f06fa686a71af13fc968e04391b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4310593bf188802a301ebb1d25d2c6ccfe54d6462b1dc2611c4065b0906cda1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1075–1079.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def irreflexive : L.Sentence :=
  ∀'∼(r.boundedFormula₂ (&0) &0)
#align first_order.language.relations.irreflexive FirstOrder.Language.Relations.irreflexive

/-- The sentence indicating that a basic relation symbol is symmetric. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantcb9fce668fad7f03049c01c2cdd4f4926295f06fa686a71af13fc968e04391b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantcb9fce668fad7f03049c01c2cdd4f4926295f06fa686a71af13fc968e04391b4.lean#L1075).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e5c29613d9fe3c4c1ec28a8c11432152cf673e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
