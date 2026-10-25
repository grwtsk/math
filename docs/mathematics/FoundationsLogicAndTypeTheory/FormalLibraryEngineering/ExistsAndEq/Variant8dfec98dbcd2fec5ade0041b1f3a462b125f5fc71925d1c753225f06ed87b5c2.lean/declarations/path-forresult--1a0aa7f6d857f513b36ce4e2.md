# Path.forResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05ea311a4bbc5ee98b38c041b97a6ac10a4c5e269d9ffe33a2fba40e58faa978",
  "kind": "def",
  "lexical_name": "Path.forResult",
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
  "slug": "path-forresult--1a0aa7f6d857f513b36ce4e2",
  "source": {
    "blob": "dfec90abc7dc25e9f31414d8de4ba4e00584ea45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 141,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant8dfec98dbcd2fec5ade0041b1f3a462b125f5fc71925d1c753225f06ed87b5c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a0aa7f6d857f513b36ce4e27a2232d5daef4f56ce2dc529fbfdec4c06acd8b8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant8dfec98dbcd2fec5ade0041b1f3a462b125f5fc71925d1c753225f06ed87b5c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05ea311a4bbc5ee98b38c041b97a6ac10a4c5e269d9ffe33a2fba40e58faa978`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Path.forResult (path : Path) : Path :=
  let (quantifiers, conjunctions) := path.partition (· == .existsBody)
  quantifiers ++ conjunctions

/-- Destructs `h : P` following `path`, as the chain of `refine h.elim fun … ↦ ?_` in the docstring
of `mkBeforeToAfter` does: at an `existsBody` step the quantifier is unpacked with `Exists.elim`,
using the next variable of `exs` as the bound variable; at an `andLeft`/`andRight` step the
conjunction is split with `And.elim`, and the part outside the path becomes a *leaf*. The
continuation `k` receives the leaves (in path order, after those in `acc`) and the hypothesis at
the end of the path, i.e. the equation. All of them are local hypotheses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant8dfec98dbcd2fec5ade0041b1f3a462b125f5fc71925d1c753225f06ed87b5c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant8dfec98dbcd2fec5ade0041b1f3a462b125f5fc71925d1c753225f06ed87b5c2.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfec90abc7dc25e9f31414d8de4ba4e00584ea45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
