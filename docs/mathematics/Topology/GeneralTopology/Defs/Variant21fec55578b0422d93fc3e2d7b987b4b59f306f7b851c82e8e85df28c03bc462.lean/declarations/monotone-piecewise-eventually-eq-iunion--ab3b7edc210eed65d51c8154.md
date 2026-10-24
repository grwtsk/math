# Monotone.piecewise_eventually_eq_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:825c17e8-6128-9eba-b610-dcaae97bfc0d",
  "kind": "theorem",
  "lexical_name": "Monotone.piecewise_eventually_eq_iUnion",
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
  "slug": "monotone-piecewise-eventually-eq-iunion--ab3b7edc210eed65d51c8154",
  "source": {
    "blob": "f471717aa748a9a4f7bf2eec89adaca9d8bb2816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 131,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab3b7edc210eed65d51c815414de93fa424242316eeba24b09fcd1bc82b7b17b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:825c17e8-6128-9eba-b610-dcaae97bfc0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Monotone.piecewise_eventually_eq_iUnion {β : α → Type*} [Preorder ι] {s : ι → Set α}
    [∀ i, DecidablePred (· ∈ s i)] [DecidablePred (· ∈ ⋃ i, s i)]
    (hs : Monotone s) (f g : (a : α) → β a) (a : α) :
    ∀ᶠ i in atTop, (s i).piecewise f g a = (⋃ i, s i).piecewise f g a := by
  rcases em (∃ i, a ∈ s i) with ⟨i, hi⟩ | ha
  · refine (eventually_ge_atTop i).mono fun j hij ↦ ?_
    simp only [Set.piecewise_eq_of_mem, hs hij hi, subset_iUnion _ _ hi]
  · filter_upwards with i
    simp only [Set.piecewise_eq_of_notMem, not_exists.1 ha i, mt mem_iUnion.1 ha,
      not_false_eq_true, exists_false]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f471717aa748a9a4f7bf2eec89adaca9d8bb2816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
