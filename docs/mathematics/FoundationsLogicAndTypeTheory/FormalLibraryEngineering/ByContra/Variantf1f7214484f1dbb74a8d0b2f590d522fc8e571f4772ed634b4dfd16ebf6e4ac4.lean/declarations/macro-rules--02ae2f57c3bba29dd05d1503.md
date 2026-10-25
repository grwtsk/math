# Anonymous macro_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4f70b6406e4ebd2d95a96d7c0d51a33d70a6117cae9049827b3873a5ccce8c3",
  "kind": "macro_rules",
  "lexical_name": null,
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
  "slug": "macro-rules--02ae2f57c3bba29dd05d1503",
  "source": {
    "blob": "c7e3a03877d881fb757332bd450d1f9bef970886",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByContra/Variantf1f7214484f1dbb74a8d0b2f590d522fc8e571f4772ed634b4dfd16ebf6e4ac4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02ae2f57c3bba29dd05d150313825a837fb2a11a54bd2bfe66c58e018efc2344",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByContra/Variantf1f7214484f1dbb74a8d0b2f590d522fc8e571f4772ed634b4dfd16ebf6e4ac4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4f70b6406e4ebd2d95a96d7c0d51a33d70a6117cae9049827b3873a5ccce8c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro_rules
  | `(tactic| by_contra'%$tk $[_%$under]? $[: $ty]?) =>
    `(tactic| by_contra' $(mkIdentFrom (under.getD tk) `this (canonical := true)):ident $[: $ty]?)
  | `(tactic| by_contra' $e:ident) => `(tactic| (by_contra $e:ident; push_neg at $e:ident))
  | `(tactic| by_contra' $e:ident : $y) => `(tactic|
       (by_contra' h;
        -- if the below `exact` call fails then this tactic should fail with the message
        -- tactic failed: <goal type> and <type of h> are not definitionally equal
        have $e:ident : $y := by { push_neg; exact h };
        clear h ) )
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByContra/Variantf1f7214484f1dbb74a8d0b2f590d522fc8e571f4772ed634b4dfd16ebf6e4ac4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByContra/Variantf1f7214484f1dbb74a8d0b2f590d522fc8e571f4772ed634b4dfd16ebf6e4ac4.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7e3a03877d881fb757332bd450d1f9bef970886` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
