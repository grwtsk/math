# FriendlyOperation.destruct_apply_eq_unfold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64c14073-7d27-b3cb-3dbd-2f129c30069c",
  "kind": "theorem",
  "lexical_name": "FriendlyOperation.destruct_apply_eq_unfold",
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
  "slug": "friendlyoperation-destruct-apply-eq-unfold--2ab76ebb373ad2640b81268d",
  "source": {
    "blob": "aaca1e94fc40afade93caf4ad11cbdcd37ac682b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 383,
    "path": "GRWTSK/Topology/MetricTopology/Corecursion/Variantbfd143182b00c7190dcbf53bf87b534d234fc7386f986631abbb04547530a3f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ab76ebb373ad2640b81268da862e1f576ef54cc41bad9ac649ab76300d04066",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Corecursion/Variantbfd143182b00c7190dcbf53bf87b534d234fc7386f986631abbb04547530a3f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64c14073-7d27-b3cb-3dbd-2f129c30069c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FriendlyOperation.destruct_apply_eq_unfold {op : Seq α → Seq α} (h : FriendlyOperation op)
    {s : Seq α} :
    destruct (op s) = (h.unfold s.head).map (fun (hd, op') => (hd, op'.val s.tail)) := by
  unfold unfold
  cases s with
  | nil =>
    generalize op nil = t
    cases t <;> simp
  | cons s_hd s_tl =>
    simp only [Seq.tail_cons, Seq.head_cons]
    generalize ht0 : op (.cons s_hd nil) = t0 at *
    generalize ht : op (.cons s_hd s_tl) = t at *
    have : t0.head = t.head := by
      rw [← ht0, ← ht, FriendlyOperation.op_cons_head_eq h]
    cases t0 with
    | nil =>
      cases t with
      | nil => simp
      | cons => simp at this
    | cons =>
      cases t with
      | nil => simp at this
      | cons => simp_all

set_option backward.isDefEq.respectTransparency false in
/-- If `op` is friendly, then `op s` and `op t` have the same head if `s` and `t`
have the same head. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Corecursion/Variantbfd143182b00c7190dcbf53bf87b534d234fc7386f986631abbb04547530a3f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Corecursion/Variantbfd143182b00c7190dcbf53bf87b534d234fc7386f986631abbb04547530a3f3.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaca1e94fc40afade93caf4ad11cbdcd37ac682b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
