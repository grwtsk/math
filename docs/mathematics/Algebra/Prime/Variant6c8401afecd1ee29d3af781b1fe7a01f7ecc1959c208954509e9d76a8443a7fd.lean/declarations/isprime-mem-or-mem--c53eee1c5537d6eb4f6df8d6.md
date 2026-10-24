# IsPrime.mem_or_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19566dcc-4937-7cbe-ee2b-970fe4ecbc6c",
  "kind": "theorem",
  "lexical_name": "IsPrime.mem_or_mem",
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
  "slug": "isprime-mem-or-mem--c53eee1c5537d6eb4f6df8d6",
  "source": {
    "blob": "66f91d6db99842228a2a5b9eacb4a6425b418b88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 70,
    "path": "GRWTSK/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c53eee1c5537d6eb4f6df8d665806fed0d0a14d74ef6f7a5284d97075e688812",
  "verification": {
    "reference": "docs/verification/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19566dcc-4937-7cbe-ee2b-970fe4ecbc6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPrime.mem_or_mem {I : Ideal α} (hI : I.IsPrime) {x y : α} : x * y ∈ I → x ∈ I ∨ y ∈ I :=
  hI.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66f91d6db99842228a2a5b9eacb4a6425b418b88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
