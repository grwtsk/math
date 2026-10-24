# ZMod'.instCharP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a178c897f4572617a2ef0636bdc5a6e865a031f638835b17e2d8bb044f3580a2",
  "kind": "instance",
  "lexical_name": "ZMod'.instCharP",
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
  "slug": "zmod-instcharp--35d16b923e927c0b699b74c9",
  "source": {
    "blob": "b5999bacd776977303f21b77a0d64b5f811d6cb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 125,
    "path": "GRWTSK/Algebra/ReduceModChar/Variant59cc4c0f7653a9931db9ab999b0da12bf803d4c855fc57abbf4ec8e79c0166c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35d16b923e927c0b699b74c91026a17dffaa5f2db0700e6fee54503861305909",
  "verification": {
    "reference": "docs/verification/Algebra/ReduceModChar/Variant59cc4c0f7653a9931db9ab999b0da12bf803d4c855fc57abbf4ec8e79c0166c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a178c897f4572617a2ef0636bdc5a6e865a031f638835b17e2d8bb044f3580a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ZMod'.instCharP : CharP (ZMod' n) n := inferInstanceAs (CharP (ZMod n) n)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ReduceModChar/Variant59cc4c0f7653a9931db9ab999b0da12bf803d4c855fc57abbf4ec8e79c0166c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ReduceModChar/Variant59cc4c0f7653a9931db9ab999b0da12bf803d4c855fc57abbf4ec8e79c0166c1.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5999bacd776977303f21b77a0d64b5f811d6cb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
