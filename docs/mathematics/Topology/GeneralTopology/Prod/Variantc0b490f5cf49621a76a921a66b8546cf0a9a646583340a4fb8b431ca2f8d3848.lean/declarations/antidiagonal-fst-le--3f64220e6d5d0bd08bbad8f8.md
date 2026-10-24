# antidiagonal.fst_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6db99d6-e4b9-d14e-dd73-2da927d44dc6",
  "kind": "theorem",
  "lexical_name": "antidiagonal.fst_le",
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
  "slug": "antidiagonal-fst-le--3f64220e6d5d0bd08bbad8f8",
  "source": {
    "blob": "4415e5e53a8ffa948cc0edd2d4a55593cbf397d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 141,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f64220e6d5d0bd08bbad8f8bc5e3d6fe0245141229f61e4155b60677edb924f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6db99d6-e4b9-d14e-dd73-2da927d44dc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem antidiagonal.fst_le {n : A} {kl : A × A} (hlk : kl ∈ antidiagonal n) : kl.1 ≤ n := by
  rw [le_iff_exists_add]
  use kl.2
  rwa [mem_antidiagonal, eq_comm] at hlk

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4415e5e53a8ffa948cc0edd2d4a55593cbf397d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
