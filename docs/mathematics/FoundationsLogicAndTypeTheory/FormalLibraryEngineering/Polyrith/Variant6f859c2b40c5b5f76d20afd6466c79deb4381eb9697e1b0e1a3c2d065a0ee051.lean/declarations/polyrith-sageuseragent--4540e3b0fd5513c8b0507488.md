# polyrith.sageUserAgent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7f31b219e7f33b9ba9a766d4abb09c5c5547cc9b76a895ae88c6868dbd4a698",
  "kind": "register_option",
  "lexical_name": "polyrith.sageUserAgent",
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
  "slug": "polyrith-sageuseragent--4540e3b0fd5513c8b0507488",
  "source": {
    "blob": "789f818a47ad3a0baab32d3e4005c0b68ae9a8da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 337,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant6f859c2b40c5b5f76d20afd6466c79deb4381eb9697e1b0e1a3c2d065a0ee051.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4540e3b0fd5513c8b05074883c9fe3c048e6ceb72375243b0e75bfc83404394f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant6f859c2b40c5b5f76d20afd6466c79deb4381eb9697e1b0e1a3c2d065a0ee051.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `register_option` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7f31b219e7f33b9ba9a766d4abb09c5c5547cc9b76a895ae88c6868dbd4a698`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
register_option polyrith.sageUserAgent : String :=
  { defValue := "LeanProver (https://leanprover-community.github.io/)"
    group := "polyrith"
    descr := "The User-Agent header value for HTTP calls to SageMath API" }

/--
This function calls the Sage API at <https://sagecell.sagemath.org/service>.
The output is parsed as `SageResult`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant6f859c2b40c5b5f76d20afd6466c79deb4381eb9697e1b0e1a3c2d065a0ee051.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant6f859c2b40c5b5f76d20afd6466c79deb4381eb9697e1b0e1a3c2d065a0ee051.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `789f818a47ad3a0baab32d3e4005c0b68ae9a8da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
