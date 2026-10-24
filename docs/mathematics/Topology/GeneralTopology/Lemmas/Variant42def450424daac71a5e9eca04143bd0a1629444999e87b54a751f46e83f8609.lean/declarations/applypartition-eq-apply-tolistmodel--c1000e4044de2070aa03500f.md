# applyPartition_eq_apply_toListModel'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b776bf12-9d4e-4b86-a961-3d7b0fb0dbd7",
  "kind": "theorem",
  "lexical_name": "applyPartition_eq_apply_toListModel'",
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
  "slug": "applypartition-eq-apply-tolistmodel--c1000e4044de2070aa03500f",
  "source": {
    "blob": "342b13ed03f55afa231c980200374ff3ab10825e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 523,
    "line": 509,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant42def450424daac71a5e9eca04143bd0a1629444999e87b54a751f46e83f8609.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1000e4044de2070aa03500f5115858d3b59acd5dbdbe0434a6597463cd3db3a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant42def450424daac71a5e9eca04143bd0a1629444999e87b54a751f46e83f8609.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b776bf12-9d4e-4b86-a961-3d7b0fb0dbd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–523.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem applyPartition_eq_apply_toListModel' [Ord α] [TransOrd α] {k : α → Ordering}
    [IsStrictCut compare k] {l : Impl α β} (hlo : l.Ordered)
    {f : List ((a : α) × β a) → (c : Cell α β k) → (l.contains' k → c.contains) → List ((a : α) × β a) → δ}
    (g : (ll : List ((a : α) × β a)) → δ)
    (h : ∀ {ll rr : List ((a : α) × β a)} {c : Cell α β k} {h₁},
      (ll ++ c.inner.toList ++ rr).Pairwise (fun a b => compare a.1 b.1 = .lt) → (∀ p ∈ ll, k p.1 = .gt) →
      (∀ p ∈ rr, k p.1 = .lt) → f ll c h₁ rr = g (ll ++ c.inner.toList ++ rr)) :
    applyPartition k l f = g l.toListModel := by
  rw [applyPartition_eq hlo, h]
  · congr; exact (toListModel_eq_append _ hlo).symm
  · rw [List.findCell_inner, ← toListModel_eq_append _ hlo]
    exact hlo
  · simp
  · simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant42def450424daac71a5e9eca04143bd0a1629444999e87b54a751f46e83f8609.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant42def450424daac71a5e9eca04143bd0a1629444999e87b54a751f46e83f8609.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `342b13ed03f55afa231c980200374ff3ab10825e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
