# unexpandTriple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb8036fa00f3ecf97b0a706210a8a64cbeacd0090fe2f8364ee0ee47c3154d20",
  "kind": "def",
  "lexical_name": "unexpandTriple",
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
  "slug": "unexpandtriple--dc6db544a0866ebb6efba48a",
  "source": {
    "blob": "4a628271ab07e0f433d50da5839f489b9ecbaadb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantda207f379f15067d2b35bdfe018ca3a0bc8fa6af52006236806918b8ad71bf29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc6db544a0866ebb6efba48a25f1d4d05734442d2560617cd4ea9460aaf56252",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantda207f379f15067d2b35bdfe018ca3a0bc8fa6af52006236806918b8ad71bf29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb8036fa00f3ecf97b0a706210a8a64cbeacd0090fe2f8364ee0ee47c3154d20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def unexpandTriple : Lean.PrettyPrinter.Unexpander
  | `($(_) $c $P $Q ⊥) => `(⦃ $P ⦄ $c ⦃ $Q ⦄)
  | `($(_) $c $P $Q Lean.Order.bot) => `(⦃ $P ⦄ $c ⦃ $Q ⦄)
  | `($(_) $c $P $Q $E) => `(⦃ $P ⦄ $c ⦃ $Q; $E ⦄)
  | _ => throw ()

namespace Triple

variable {Prog : Type v} {Value : Type u} [Assertion Pred] [Assertion EPred]
  [WP Prog Value Pred EPred]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantda207f379f15067d2b35bdfe018ca3a0bc8fa6af52006236806918b8ad71bf29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantda207f379f15067d2b35bdfe018ca3a0bc8fa6af52006236806918b8ad71bf29.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a628271ab07e0f433d50da5839f489b9ecbaadb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
