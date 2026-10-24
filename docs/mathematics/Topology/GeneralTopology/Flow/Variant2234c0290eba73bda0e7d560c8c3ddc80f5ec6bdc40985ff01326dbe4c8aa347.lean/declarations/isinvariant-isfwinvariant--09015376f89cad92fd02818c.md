# IsInvariant.isFwInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a58f3855-b611-f495-ad94-a45acdfb046d",
  "kind": "theorem",
  "lexical_name": "IsInvariant.isFwInvariant",
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
  "slug": "isinvariant-isfwinvariant--09015376f89cad92fd02818c",
  "source": {
    "blob": "41864fa5f9d6cfe2816b26b38efdfeac18a0afd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09015376f89cad92fd02818c4c3caa179cc26be1a9b68703eef342442d933a65",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a58f3855-b611-f495-ad94-a45acdfb046d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsInvariant.isFwInvariant [Preorder τ] [Zero τ] {ϕ : τ → α → α} {s : Set α}
    (h : IsInvariant ϕ s) : IsFwInvariant ϕ s := fun t _ht => h t
#align is_invariant.is_fw_invariant IsInvariant.isFwInvariant

/-- If `τ` is a `CanonicallyOrderedAddMonoid` (e.g., `ℕ` or `ℝ≥0`), then the notions
`IsFwInvariant` and `IsInvariant` are equivalent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41864fa5f9d6cfe2816b26b38efdfeac18a0afd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
