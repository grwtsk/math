# actualXiEarlyReturned_split_orders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4530339-b3d8-2330-abda-46c918835fb6",
  "kind": "theorem",
  "lexical_name": "actualXiEarlyReturned_split_orders",
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
  "slug": "actualxiearlyreturned-split-orders--ea3441103149271c91eb115e",
  "source": {
    "blob": "3039b8f510f4cccd246e273e680b9bda4f2d61b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualXiEarlyReturnedWork/Variant45c8261d11c5f8abc6d5bced5fdb46e1f488df9c19f47f9db486d414dacf46bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea3441103149271c91eb115ef06e28bd81254c0c275a9aa5774e7f5df83049ed",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualXiEarlyReturnedWork/Variant45c8261d11c5f8abc6d5bced5fdb46e1f488df9c19f47f9db486d414dacf46bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4530339-b3d8-2330-abda-46c918835fb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiEarlyReturned_split_orders {A : ℝ} (hA : 91 ≤ A) :
    Real.log 7 ≤ 2 * Real.log A ∧ 2 * Real.log A ≤ 2 * A := by
  have hp : 0 < A := by linarith
  have hl : Real.log 7 ≤ Real.log A :=
    Real.log_le_log (by norm_num) (by linarith)
  have hn : 0 ≤ Real.log A := Real.log_nonneg (by linarith)
  constructor
  · linarith
  · linarith [Real.log_le_sub_one_of_pos hp]

/-- Genuine source continuity and finite L1 precede either partial integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualXiEarlyReturnedWork/Variant45c8261d11c5f8abc6d5bced5fdb46e1f488df9c19f47f9db486d414dacf46bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualXiEarlyReturnedWork/Variant45c8261d11c5f8abc6d5bced5fdb46e1f488df9c19f47f9db486d414dacf46bb.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3039b8f510f4cccd246e273e680b9bda4f2d61b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
