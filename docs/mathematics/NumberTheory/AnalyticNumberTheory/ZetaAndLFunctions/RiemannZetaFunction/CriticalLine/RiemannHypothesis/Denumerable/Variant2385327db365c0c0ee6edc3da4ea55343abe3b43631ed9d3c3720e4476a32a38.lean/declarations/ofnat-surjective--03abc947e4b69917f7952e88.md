# ofNat_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b92c5fe-39cc-aead-507e-016c11348905",
  "kind": "theorem",
  "lexical_name": "ofNat_surjective",
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
  "slug": "ofnat-surjective--03abc947e4b69917f7952e88",
  "source": {
    "blob": "14ef91cd00038155e10b9da0d1279c3692ebe85f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 244,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Denumerable/Variant2385327db365c0c0ee6edc3da4ea55343abe3b43631ed9d3c3720e4476a32a38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03abc947e4b69917f7952e8874d4a9e09337e1de428739ceebd723c8a61dcc40",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Denumerable/Variant2385327db365c0c0ee6edc3da4ea55343abe3b43631ed9d3c3720e4476a32a38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b92c5fe-39cc-aead-507e-016c11348905`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofNat_surjective : Surjective (ofNat s)
  | ⟨x, hx⟩ => by
    set t : List s :=
      ((List.range x).filter fun y => y ∈ s).pmap
        (fun (y : ℕ) (hy : y ∈ s) => ⟨y, hy⟩)
        (by intro a ha; simpa using! (List.mem_filter.mp ha).2) with ht
    have hmt : ∀ {y : s}, y ∈ t ↔ y < ⟨x, hx⟩ := by
      simp [List.mem_filter, Subtype.ext_iff, ht]
    cases hmax : List.maximum t with
    | bot =>
      refine ⟨0, le_antisymm bot_le (le_of_not_gt fun h => List.not_mem_nil (a := (⊥ : s)) ?_)⟩
      rwa [← List.maximum_eq_bot.1 hmax, hmt]
    | coe m =>
      have wf : ↑m < x := by simpa using! hmt.mp (List.maximum_mem hmax)
      rcases ofNat_surjective m with ⟨a, rfl⟩
      refine ⟨a + 1, le_antisymm (succ_le_of_lt wf) ?_⟩
      exact le_succ_of_forall_lt_le fun z hz => List.le_maximum_of_mem (hmt.2 hz) hmax
  termination_by n => n.val

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Denumerable/Variant2385327db365c0c0ee6edc3da4ea55343abe3b43631ed9d3c3720e4476a32a38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Denumerable/Variant2385327db365c0c0ee6edc3da4ea55343abe3b43631ed9d3c3720e4476a32a38.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14ef91cd00038155e10b9da0d1279c3692ebe85f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
