# syntheticHole

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d60050049432be4a3e67500de5ba4c33319a064b51f82f1c5501a0c7cd5577d",
  "kind": "def",
  "lexical_name": "syntheticHole",
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
  "slug": "synthetichole--49f939adc695ea67402990c8",
  "source": {
    "blob": "19b3938e9d6ae22e59c5ffc3d1977c9ead18d505",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 172,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7b9b00d80d97311a51e6226a40e6bed5aead09e300a042b0506479f87f4632b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:49f939adc695ea67402990c818a89e77487d470dd51349f672dc47bab190fd91",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7b9b00d80d97311a51e6226a40e6bed5aead09e300a042b0506479f87f4632b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d60050049432be4a3e67500de5ba4c33319a064b51f82f1c5501a0c7cd5577d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_term_parser] def syntheticHole := leading_parser
  "?" >> (ident <|> "_")

/--
The `⋯` term denotes a term that was omitted by the pretty printer.
The presence of `⋯` in pretty printer output is controlled by the `pp.deepTerms` and `pp.proofs` options,
and these options can be further adjusted using `pp.deepTerms.threshold` and `pp.proofs.threshold`.

It is only meant to be used for pretty printing.
However, in case it is copied and pasted from the Infoview, `⋯` logs a warning and elaborates like `_`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7b9b00d80d97311a51e6226a40e6bed5aead09e300a042b0506479f87f4632b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7b9b00d80d97311a51e6226a40e6bed5aead09e300a042b0506479f87f4632b9.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19b3938e9d6ae22e59c5ffc3d1977c9ead18d505` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
