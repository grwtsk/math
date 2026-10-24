# Ordered.memP_iff_find?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:118cee43-bb8f-ef2d-ff38-bf1b21956381",
  "kind": "theorem",
  "lexical_name": "Ordered.memP_iff_find?",
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
  "slug": "ordered-memp-iff-find--0147a506ec0b71ed9d2707fc",
  "source": {
    "blob": "a56de27973388966c2b4db47ed7d2b083eac3d16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 325,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fa586da54942c22f02c2d2b0ff199762300cc5dd54007050f58182f6b0ad42c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0147a506ec0b71ed9d2707fc6eb6e37bcc5d031585d5f12a612508eda9576f7a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fa586da54942c22f02c2d2b0ff199762300cc5dd54007050f58182f6b0ad42c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:118cee43-bb8f-ef2d-ff38-bf1b21956381`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ordered.memP_iff_find? [Std.TransCmp (α := α) cmp] [IsCut cmp cut]
    (ht : Ordered cmp t) : MemP cut t ↔ ∃ x, t.find? cut = some x := by
  refine ⟨fun H => ?_, fun ⟨x, h⟩ => find?_some_memP h⟩
  induction t with simp [find?] at H ⊢
  | nil => cases H
  | node _ l _ r ihl ihr =>
    let ⟨lx, xr, hl, hr⟩ := ht
    split
    · next ev =>
      refine ihl hl ?_
      rcases H with ev' | hx | hx
      · cases ev.symm.trans ev'
      · exact hx
      · have ⟨z, hz, ez⟩ := Any_def.1 hx
        cases ez.symm.trans <| IsCut.lt_trans (All_def.1 xr _ hz).1 ev
    · next ev =>
      refine ihr hr ?_
      rcases H with ev' | hx | hx
      · cases ev.symm.trans ev'
      · have ⟨z, hz, ez⟩ := Any_def.1 hx
        cases ez.symm.trans <| IsCut.gt_trans (All_def.1 lx _ hz).1 ev
      · exact hx
    · exact ⟨_, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fa586da54942c22f02c2d2b0ff199762300cc5dd54007050f58182f6b0ad42c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fa586da54942c22f02c2d2b0ff199762300cc5dd54007050f58182f6b0ad42c.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a56de27973388966c2b4db47ed7d2b083eac3d16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
