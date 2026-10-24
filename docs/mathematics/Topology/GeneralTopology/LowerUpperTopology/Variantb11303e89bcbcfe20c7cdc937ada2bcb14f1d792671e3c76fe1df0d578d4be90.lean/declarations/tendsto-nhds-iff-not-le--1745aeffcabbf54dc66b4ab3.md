# tendsto_nhds_iff_not_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecb218c9-da4c-6245-e8b0-7afb4d89517a",
  "kind": "theorem",
  "lexical_name": "tendsto_nhds_iff_not_le",
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
  "slug": "tendsto-nhds-iff-not-le--1745aeffcabbf54dc66b4ab3",
  "source": {
    "blob": "7f438753b4a4740368c926faa98fa56bf53ad371",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 429,
    "path": "GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variantb11303e89bcbcfe20c7cdc937ada2bcb14f1d792671e3c76fe1df0d578d4be90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1745aeffcabbf54dc66b4ab3fd28d76a227b5db5420bc875d3184b548228407f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LowerUpperTopology/Variantb11303e89bcbcfe20c7cdc937ada2bcb14f1d792671e3c76fe1df0d578d4be90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecb218c9-da4c-6245-e8b0-7afb4d89517a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_nhds_iff_not_le {β : Type*} {f : β → α} {l : Filter β} {x : α} :
    Filter.Tendsto f l (𝓝 x) ↔ ∀ y, ¬x ≤ y → ∀ᶠ z in l, ¬f z ≤ y :=
  IsLower.tendsto_nhds_iff_not_le (α := αᵒᵈ)

/--
The closure of a singleton `{a}` in the upper topology is the left-infinite right-closed interval
(-∞,a].
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LowerUpperTopology/Variantb11303e89bcbcfe20c7cdc937ada2bcb14f1d792671e3c76fe1df0d578d4be90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variantb11303e89bcbcfe20c7cdc937ada2bcb14f1d792671e3c76fe1df0d578d4be90.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f438753b4a4740368c926faa98fa56bf53ad371` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
