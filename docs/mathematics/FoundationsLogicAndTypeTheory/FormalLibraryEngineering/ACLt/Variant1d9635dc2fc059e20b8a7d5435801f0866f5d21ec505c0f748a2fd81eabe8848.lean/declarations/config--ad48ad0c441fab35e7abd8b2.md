# config

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6e0bc737fe79568969943a1dc5d570ae83daa88c8fbb1a7ad804b3ca852e665",
  "kind": "def",
  "lexical_name": "config",
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
  "slug": "config--ad48ad0c441fab35e7abd8b2",
  "source": {
    "blob": "5a82060fed12b5b2995adb3b6fbfef7677dcf25b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ACLt/Variant1d9635dc2fc059e20b8a7d5435801f0866f5d21ec505c0f748a2fd81eabe8848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad48ad0c441fab35e7abd8b2d26369b6675dfaf9a0f6d385600a264e59f7eb9a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ACLt/Variant1d9635dc2fc059e20b8a7d5435801f0866f5d21ec505c0f748a2fd81eabe8848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b6e0bc737fe79568969943a1dc5d570ae83daa88c8fbb1a7ad804b3ca852e665`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def config : ConfigWithKey :=
  { transparency := .reducible, iota := false, proj := .no : Config }.toConfigWithKey

mutual

/--
  An AC-compatible ordering.

  Recall that an AC-compatible ordering if it is monotonic, well-founded, and total.
  Both KBO and LPO are AC-compatible. KBO is faster, but we do not cache the weight of
  each expression in Lean 4. Even if we did, we would need to have a weight where implicit instance arguments are ignored.
  So, we use a LPO-like term ordering.

  Remark: this method is used to implement ordered rewriting. We ignore implicit instance
  arguments to address an issue reported at issue #972.

  Remark: the order is not really total on terms since
   - We instance implicit arguments.
   - We ignore metadata.
   - We ignore universe parameters at constants.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ACLt/Variant1d9635dc2fc059e20b8a7d5435801f0866f5d21ec505c0f748a2fd81eabe8848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ACLt/Variant1d9635dc2fc059e20b8a7d5435801f0866f5d21ec505c0f748a2fd81eabe8848.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a82060fed12b5b2995adb3b6fbfef7677dcf25b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
