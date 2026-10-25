# nontrivial_coe_nodup_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:110eb6dc-2cb0-1190-d398-b8e86e179abf",
  "kind": "theorem",
  "lexical_name": "nontrivial_coe_nodup_iff",
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
  "slug": "nontrivial-coe-nodup-iff--3b055482407c1230179e02a4",
  "source": {
    "blob": "ff1407b42ba1c0ae1bbe9ee2c4c076236142c712",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 641,
    "line": 628,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant43d7a7e0642f56f414ae36624cd069401d19077c1f292d398460d4e369fd6cc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b055482407c1230179e02a4d83dd6eb0d5af6daa3c0b00b91a4af8891de8798",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant43d7a7e0642f56f414ae36624cd069401d19077c1f292d398460d4e369fd6cc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:110eb6dc-2cb0-1190-d398-b8e86e179abf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 628–641.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nontrivial_coe_nodup_iff {l : List α} (hl : l.Nodup) :
    Nontrivial (l : Cycle α) ↔ 2 ≤ l.length := by
  rw [Nontrivial]
  rcases l with (_ | ⟨hd, _ | ⟨hd', tl⟩⟩)
  · simp
  · simp
  · simp only [mem_cons, exists_prop, mem_coe_iff, List.length, Ne.def, Nat.succ_le_succ_iff,
      zero_le, iff_true_iff]
    refine' ⟨hd, hd', _, by simp⟩
    simp only [not_or, mem_cons, nodup_cons] at hl
    exact hl.left.left
#align cycle.nontrivial_coe_nodup_iff Cycle.nontrivial_coe_nodup_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant43d7a7e0642f56f414ae36624cd069401d19077c1f292d398460d4e369fd6cc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant43d7a7e0642f56f414ae36624cd069401d19077c1f292d398460d4e369fd6cc3.lean#L628).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff1407b42ba1c0ae1bbe9ee2c4c076236142c712` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
