# Accuracy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:414a704b3cf9585c4095a2640168912c1be4accb8a85d855578413d6600756d3",
  "kind": "inductive",
  "lexical_name": "Accuracy",
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
  "slug": "accuracy--d6612c4d4c7d61a6a60ecbf7",
  "source": {
    "blob": "5c27140e69aaff44afe25ff197ece264ef6e2319",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variantf4652202683db8a4c01fe7b18401ce9b07178052b66a4a43ba0037ab1cf838e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6612c4d4c7d61a6a60ecbf717f859b7013f945692f66569d68bb7c008e564a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variantf4652202683db8a4c01fe7b18401ce9b07178052b66a4a43ba0037ab1cf838e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:414a704b3cf9585c4095a2640168912c1be4accb8a85d855578413d6600756d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Accuracy where
  /--
  The approximation is exactly equal to the infinitely precise value.
  -/
  | exact
  /--
  The approximation is strictly smaller than the infinitely precise value,
  and the given `Ordering` describes the result of comparing the
  infinitely precise value and the approximation plus half a ulp.
  -/
  | inexact (relativeToPlusOneHalfUlp : Ordering)

namespace Accuracy

/--
Rounds the given mantissa with the given accuracy according to the
round-to-nearest strategy, with ties breaking in favor of even
mantissas.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variantf4652202683db8a4c01fe7b18401ce9b07178052b66a4a43ba0037ab1cf838e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variantf4652202683db8a4c01fe7b18401ce9b07178052b66a4a43ba0037ab1cf838e8.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c27140e69aaff44afe25ff197ece264ef6e2319` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
