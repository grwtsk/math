# endpointScale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69ca744a02ea5a8e31cb58cfe2f20cf80bf667e1d7fdd48d93e494b8bf2d41df",
  "kind": "def",
  "lexical_name": "endpointScale",
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
  "slug": "endpointscale--67159d8b1c4d82043c8db1fb",
  "source": {
    "blob": "dd3a53eb07e595492cab36dbf8da259b0e352365",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 89,
    "path": "GRWTSK/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant0b9c4392f4ac226f1cfcb980495a5a14cc2eb1037c46c02ad70fc7e21852bd1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67159d8b1c4d82043c8db1fb8a52024674e46bc18ac3579dcf8e3ad9c9dffb2c",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant0b9c4392f4ac226f1cfcb980495a5a14cc2eb1037c46c02ad70fc7e21852bd1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69ca744a02ea5a8e31cb58cfe2f20cf80bf667e1d7fdd48d93e494b8bf2d41df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def endpointScale (v : ℝ) : ℝ :=
  384 * (1 + 10 / v + 45 / v ^ 2 + 105 / v ^ 3 + 105 / v ^ 4)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant0b9c4392f4ac226f1cfcb980495a5a14cc2eb1037c46c02ad70fc7e21852bd1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant0b9c4392f4ac226f1cfcb980495a5a14cc2eb1037c46c02ad70fc7e21852bd1e.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd3a53eb07e595492cab36dbf8da259b0e352365` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
