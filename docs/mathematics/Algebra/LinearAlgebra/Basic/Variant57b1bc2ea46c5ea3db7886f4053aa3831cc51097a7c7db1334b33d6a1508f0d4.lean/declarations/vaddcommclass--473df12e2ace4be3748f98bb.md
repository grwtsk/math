# vaddCommClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:748d9f6cff36022ca7555df7b33f4a6fd5853c6756a2b7a49d825685e01f29ca",
  "kind": "instance",
  "lexical_name": "vaddCommClass",
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
  "slug": "vaddcommclass--473df12e2ace4be3748f98bb",
  "source": {
    "blob": "6898c548580504800719bdbc199828d76c0f3ea0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 102,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant57b1bc2ea46c5ea3db7886f4053aa3831cc51097a7c7db1334b33d6a1508f0d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:473df12e2ace4be3748f98bb102c42a0adc8218991e610d1a20e863a419e29db",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant57b1bc2ea46c5ea3db7886f4053aa3831cc51097a7c7db1334b33d6a1508f0d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:748d9f6cff36022ca7555df7b33f4a6fd5853c6756a2b7a49d825685e01f29ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance vaddCommClass [VAdd M β] [VAdd α β] [VAddCommClass M α β] : VAddCommClass p α β :=
  ⟨fun a => vadd_comm (a : M)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant57b1bc2ea46c5ea3db7886f4053aa3831cc51097a7c7db1334b33d6a1508f0d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant57b1bc2ea46c5ea3db7886f4053aa3831cc51097a7c7db1334b33d6a1508f0d4.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6898c548580504800719bdbc199828d76c0f3ea0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
