# IsInvariant.isFwInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c863339f-b929-d8fa-3600-cef588590cc2",
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
  "slug": "isinvariant-isfwinvariant--ae9880d4669a58bf139e7b3f",
  "source": {
    "blob": "4b7a9b8f8b77f847ed312c29a2af8b40bb02a05e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 63,
    "path": "GRWTSK/Topology/GeneralTopology/Flow/Variante04cc0656caba6b24456442e8e4061db8630f5fe0e7862b79048db6e8d2574d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae9880d4669a58bf139e7b3fff326955e572b887bd912e6f6ba34c9df0984a84",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Flow/Variante04cc0656caba6b24456442e8e4061db8630f5fe0e7862b79048db6e8d2574d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c863339f-b929-d8fa-3600-cef588590cc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsInvariant.isFwInvariant [Preorder τ] [Zero τ] {ϕ : τ → α → α} {s : Set α}
    (h : IsInvariant ϕ s) : IsFwInvariant ϕ s := fun t _ht => h t

/-- If `τ` is a `CanonicallyOrderedAdd` monoid (e.g., `ℕ` or `ℝ≥0`), then the notions
`IsFwInvariant` and `IsInvariant` are equivalent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Flow/Variante04cc0656caba6b24456442e8e4061db8630f5fe0e7862b79048db6e8d2574d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Flow/Variante04cc0656caba6b24456442e8e4061db8630f5fe0e7862b79048db6e8d2574d3.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b7a9b8f8b77f847ed312c29a2af8b40bb02a05e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
