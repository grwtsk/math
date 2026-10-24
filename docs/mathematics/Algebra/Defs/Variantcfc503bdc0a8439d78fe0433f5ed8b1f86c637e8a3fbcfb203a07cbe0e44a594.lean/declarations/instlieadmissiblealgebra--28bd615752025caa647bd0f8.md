# instLieAdmissibleAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:540c5181c2451198a8ec3546e1b79233cb1ee556090ac803a22fc7aea4df13ea",
  "kind": "instance",
  "lexical_name": "instLieAdmissibleAlgebra",
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
  "slug": "instlieadmissiblealgebra--28bd615752025caa647bd0f8",
  "source": {
    "blob": "563dc489045d76fd5bf9992e1fd18d634fa35555",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 115,
    "path": "GRWTSK/Algebra/Defs/Variantcfc503bdc0a8439d78fe0433f5ed8b1f86c637e8a3fbcfb203a07cbe0e44a594.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28bd615752025caa647bd0f81b0570d1382b42f78d0e3736c0a216d29211f846",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantcfc503bdc0a8439d78fe0433f5ed8b1f86c637e8a3fbcfb203a07cbe0e44a594.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:540c5181c2451198a8ec3546e1b79233cb1ee556090ac803a22fc7aea4df13ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instLieAdmissibleAlgebra : LieAdmissibleAlgebra R L where

end LeftPreLieAlgebra

namespace RightPreLieRing

variable [RightPreLieRing L]

/-- `RightPreLieRings` are examples of `LieAdmissibleRings` by the commutativity assumption on
the associator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantcfc503bdc0a8439d78fe0433f5ed8b1f86c637e8a3fbcfb203a07cbe0e44a594.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantcfc503bdc0a8439d78fe0433f5ed8b1f86c637e8a3fbcfb203a07cbe0e44a594.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `563dc489045d76fd5bf9992e1fd18d634fa35555` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
