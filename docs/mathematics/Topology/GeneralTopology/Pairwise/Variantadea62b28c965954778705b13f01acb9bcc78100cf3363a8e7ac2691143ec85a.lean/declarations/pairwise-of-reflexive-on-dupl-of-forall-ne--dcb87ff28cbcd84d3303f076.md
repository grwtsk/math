# pairwise_of_reflexive_on_dupl_of_forall_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51849399-6402-d015-6b6f-9edd00345b34",
  "kind": "theorem",
  "lexical_name": "pairwise_of_reflexive_on_dupl_of_forall_ne",
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
  "slug": "pairwise-of-reflexive-on-dupl-of-forall-ne--dcb87ff28cbcd84d3303f076",
  "source": {
    "blob": "48c212f926356cfa40937f5b57dedc1e03747b3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 280,
    "path": "GRWTSK/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcb87ff28cbcd84d3303f076cc7ddeb593e73cd3382737a80f6504a2944b587c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51849399-6402-d015-6b6f-9edd00345b34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairwise_of_reflexive_on_dupl_of_forall_ne [DecidableEq α] {l : List α} {r : α → α → Prop}
    (hr : ∀ a, 1 < count a l → r a a) (h : ∀ a ∈ l, ∀ b ∈ l, a ≠ b → r a b) : l.Pairwise r := by
  induction' l with hd tl IH
  · simp
  · rw [List.pairwise_cons]
    constructor
    · intro x hx
      by_cases H : hd = x
      · rw [H]
        refine' hr _ _
        simpa [count_cons, H, Nat.succ_lt_succ_iff, count_pos_iff_mem] using hx
      · exact h hd (mem_cons_self _ _) x (mem_cons_of_mem _ hx) H
    · refine' IH _ _
      · intro x hx
        refine' hr _ _
        rw [count_cons]
        split_ifs
        · exact hx.trans (Nat.lt_succ_self _)
        · exact hx
      · intro x hx y hy
        exact h x (mem_cons_of_mem _ hx) y (mem_cons_of_mem _ hy)
#align list.pairwise_of_reflexive_on_dupl_of_forall_ne List.pairwise_of_reflexive_on_dupl_of_forall_ne

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48c212f926356cfa40937f5b57dedc1e03747b3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
