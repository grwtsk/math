# not_real_of_infinitesimal_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a39eda9e-d78d-d7a8-9a55-40564d77db2b",
  "kind": "theorem",
  "lexical_name": "not_real_of_infinitesimal_ne_zero",
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
  "slug": "not-real-of-infinitesimal-ne-zero--2a184a1e8385813e46d86581",
  "source": {
    "blob": "e0f5557a0b450887d01f69df6f3072fb5227760d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 598,
    "path": "GRWTSK/Topology/GeneralTopology/Hyperreal/Variant8c200787aecd62af96b6b3a73d3e6c8836532fa2c7a992bdb9912d9ff6236343.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a184a1e8385813e46d865814d2b3b9a926505ae17e8f6ef98437d00a3a86a06",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hyperreal/Variant8c200787aecd62af96b6b3a73d3e6c8836532fa2c7a992bdb9912d9ff6236343.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a39eda9e-d78d-d7a8-9a55-40564d77db2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 598–601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_real_of_infinitesimal_ne_zero (x : ℝ*) : Infinitesimal x → x ≠ 0 → ∀ r : ℝ, x ≠ r :=
  fun hi hx r hr =>
  hx <| hr.trans <| coe_eq_zero.2 <| IsSt.unique (hr.symm ▸ isSt_refl_real r : IsSt x r) hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hyperreal/Variant8c200787aecd62af96b6b3a73d3e6c8836532fa2c7a992bdb9912d9ff6236343.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hyperreal/Variant8c200787aecd62af96b6b3a73d3e6c8836532fa2c7a992bdb9912d9ff6236343.lean#L598).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0f5557a0b450887d01f69df6f3072fb5227760d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
