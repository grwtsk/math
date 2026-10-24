# exists_seq_monotone_tendsto_atTop_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84f0b1ad-8bd1-b8d2-3f66-0bb7290ee531",
  "kind": "theorem",
  "lexical_name": "exists_seq_monotone_tendsto_atTop_atTop",
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
  "slug": "exists-seq-monotone-tendsto-attop-attop--d0d217e2b5e9241efb141c5e",
  "source": {
    "blob": "b506f499074f8397c97f1d4496ac592d22bafc9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/CountablyGenerated/Variant3890f337417344b04ff6c20c68ba5776b2d7a3519b97208c213e9a4ab12894dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0d217e2b5e9241efb141c5ede5366f272a895014b77b809e3b5d07457969ceb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CountablyGenerated/Variant3890f337417344b04ff6c20c68ba5776b2d7a3519b97208c213e9a4ab12894dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84f0b1ad-8bd1-b8d2-3f66-0bb7290ee531`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_seq_monotone_tendsto_atTop_atTop (α : Type*) [Preorder α] [Nonempty α]
    [IsDirectedOrder α] [(atTop : Filter α).IsCountablyGenerated] :
    ∃ xs : ℕ → α, Monotone xs ∧ Tendsto xs atTop atTop := by
  obtain ⟨ys, h⟩ := exists_seq_tendsto (atTop : Filter α)
  choose c hleft hright using exists_ge_ge (α := α)
  set xs : ℕ → α := fun n => (List.range n).foldl (fun x n ↦ c x (ys n)) (ys 0)
  have hsucc (n : ℕ) : xs (n + 1) = c (xs n) (ys n) := by simp [xs, List.range_succ]
  refine ⟨xs, ?_, ?_⟩
  · refine monotone_nat_of_le_succ fun n ↦ ?_
    rw [hsucc]
    apply hleft
  · refine (tendsto_add_atTop_iff_nat 1).1 <| tendsto_atTop_mono (fun n ↦ ?_) h
    rw [hsucc]
    apply hright

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CountablyGenerated/Variant3890f337417344b04ff6c20c68ba5776b2d7a3519b97208c213e9a4ab12894dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CountablyGenerated/Variant3890f337417344b04ff6c20c68ba5776b2d7a3519b97208c213e9a4ab12894dc.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b506f499074f8397c97f1d4496ac592d22bafc9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
