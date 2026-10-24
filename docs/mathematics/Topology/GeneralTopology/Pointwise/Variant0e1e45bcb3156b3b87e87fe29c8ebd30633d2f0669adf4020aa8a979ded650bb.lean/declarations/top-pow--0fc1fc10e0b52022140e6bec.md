# top_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbed9aa7-ecc2-11f9-f952-3736efa835fd",
  "kind": "theorem",
  "lexical_name": "top_pow",
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
  "slug": "top-pow--0fc1fc10e0b52022140e6bec",
  "source": {
    "blob": "65db21e420eeb692be14155c8801d66ede6a3660",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 621,
    "line": 616,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variant0e1e45bcb3156b3b87e87fe29c8ebd30633d2f0669adf4020aa8a979ded650bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fc1fc10e0b52022140e6bec0e366cdec318ac88ff15639c4d8df44877d61c0d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Variant0e1e45bcb3156b3b87e87fe29c8ebd30633d2f0669adf4020aa8a979ded650bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbed9aa7-ecc2-11f9-f952-3736efa835fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 616–621.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem top_pow : ∀ {n : ℕ}, n ≠ 0 → (⊤ : Filter α) ^ n = ⊤
  | 0 => fun h => (h rfl).elim
  | 1 => fun _ => pow_one _
  | n + 2 => fun _ => by rw [pow_succ, top_pow n.succ_ne_zero, top_mul_top]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Variant0e1e45bcb3156b3b87e87fe29c8ebd30633d2f0669adf4020aa8a979ded650bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variant0e1e45bcb3156b3b87e87fe29c8ebd30633d2f0669adf4020aa8a979ded650bb.lean#L616).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65db21e420eeb692be14155c8801d66ede6a3660` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
