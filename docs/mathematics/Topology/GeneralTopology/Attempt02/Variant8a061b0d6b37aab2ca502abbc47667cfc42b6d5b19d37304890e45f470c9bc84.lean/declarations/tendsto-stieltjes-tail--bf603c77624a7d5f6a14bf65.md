# tendsto_stieltjes_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:216fcd51-3b63-3804-ba65-608e4ef50ca7",
  "kind": "theorem",
  "lexical_name": "tendsto_stieltjes_tail",
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
  "slug": "tendsto-stieltjes-tail--bf603c77624a7d5f6a14bf65",
  "source": {
    "blob": "2e50f6bba737218702b50c791dc0b41f71937b5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 145,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf603c77624a7d5f6a14bf659865111ad915fc617f385477e57ba131f77c39a0",
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

Occurrence: `result:216fcd51-3b63-3804-ba65-608e4ef50ca7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_stieltjes_tail :
    Tendsto (fun n : ℕ => stieltjesSequence (n + 4)) atTop (𝓝 firstStieltjesConstant) :=
  tendsto_atTop_ciInf stieltjes_tail_antitone stieltjes_tail_bddBelow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e50f6bba737218702b50c791dc0b41f71937b5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
