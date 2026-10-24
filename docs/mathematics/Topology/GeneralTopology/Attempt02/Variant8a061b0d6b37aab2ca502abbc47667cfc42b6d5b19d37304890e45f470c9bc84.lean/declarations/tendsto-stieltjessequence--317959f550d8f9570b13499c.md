# tendsto_stieltjesSequence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ae1ee0b-13e5-fe09-8f5f-3922e255e2d6",
  "kind": "theorem",
  "lexical_name": "tendsto_stieltjesSequence",
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
  "slug": "tendsto-stieltjessequence--317959f550d8f9570b13499c",
  "source": {
    "blob": "2e50f6bba737218702b50c791dc0b41f71937b5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 149,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:317959f550d8f9570b13499c63aed1fa6d666645759dad7b7dc7dbdd49fedd4c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ae1ee0b-13e5-fe09-8f5f-3922e255e2d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_stieltjesSequence :
    Tendsto stieltjesSequence atTop (𝓝 firstStieltjesConstant) :=
  (tendsto_add_atTop_iff_nat 4).mp tendsto_stieltjes_tail

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e50f6bba737218702b50c791dc0b41f71937b5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
