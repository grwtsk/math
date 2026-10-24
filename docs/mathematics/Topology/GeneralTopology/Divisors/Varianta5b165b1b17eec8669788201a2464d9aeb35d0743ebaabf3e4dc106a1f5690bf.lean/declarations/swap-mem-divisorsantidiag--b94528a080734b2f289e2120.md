# swap_mem_divisorsAntidiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9cfbc63-407a-6fe0-74e2-b71d0ccbbe7d",
  "kind": "lemma",
  "lexical_name": "swap_mem_divisorsAntidiag",
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
  "slug": "swap-mem-divisorsantidiag--b94528a080734b2f289e2120",
  "source": {
    "blob": "d5c9e5d2d965db5c04daffc92ac6b5dda71a6f10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 720,
    "line": 718,
    "path": "GRWTSK/Topology/GeneralTopology/Divisors/Varianta5b165b1b17eec8669788201a2464d9aeb35d0743ebaabf3e4dc106a1f5690bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b94528a080734b2f289e2120b3e0a93305d061df68b29f6c988d1a2e846ddadd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Divisors/Varianta5b165b1b17eec8669788201a2464d9aeb35d0743ebaabf3e4dc106a1f5690bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9cfbc63-407a-6fe0-74e2-b71d0ccbbe7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 718–720.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma swap_mem_divisorsAntidiag : xy.swap ∈ z.divisorsAntidiag ↔ xy ∈ z.divisorsAntidiag := by
  simp [mul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Divisors/Varianta5b165b1b17eec8669788201a2464d9aeb35d0743ebaabf3e4dc106a1f5690bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Divisors/Varianta5b165b1b17eec8669788201a2464d9aeb35d0743ebaabf3e4dc106a1f5690bf.lean#L718).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5c9e5d2d965db5c04daffc92ac6b5dda71a6f10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
