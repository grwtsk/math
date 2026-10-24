# every_later_real_entrance_retains_the_same_primitive_record

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3082c5df-2fd3-cdcd-b372-993048f07b0f",
  "kind": "theorem",
  "lexical_name": "every_later_real_entrance_retains_the_same_primitive_record",
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
  "slug": "every-later-real-entrance-retains-the-same-primitive-record--b91bcd5777f3ad68ca18b145",
  "source": {
    "blob": "bb8794583f3e168f66e0e98e4f48837984a787b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 118,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularContinuousPrimitive/Variant5d01c7e5889160eaceba3c02f1732849bd78e06fce1fb43f32bc25fc1fbdd8a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b91bcd5777f3ad68ca18b1451b29dbbc020f5516862bec2699fa74e3d0684f77",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularContinuousPrimitive/Variant5d01c7e5889160eaceba3c02f1732849bd78e06fce1fb43f32bc25fc1fbdd8a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3082c5df-2fd3-cdcd-b372-993048f07b0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem every_later_real_entrance_retains_the_same_primitive_record (M : ℕ → ℕ)
    (hM : ∀ j, j + 2 ≤ M j) {a N x : ℝ} (ha : 0 ≤ a)
    (hN : 1 ≤ N) (hx : N ≤ x) :
    relativeRecord M a N x = primitive M a x - primitive M a N := by
  have hx1 : 1 ≤ x := hN.trans hx
  have hupper : ∀ v ∈ insert 0
      ((fun t ↦ primitive M a t - primitive M a N) '' Icc N x),
      v ≤ primitive M a x - primitive M a N := by
    intro v hv
    rcases mem_insert_iff.mp hv with rfl | hv
    · have h := unchanged_bank_primitive_monotoneOn M hM ha hN hx1 hx
      linarith
    · obtain ⟨t, ht, rfl⟩ := hv
      have h := unchanged_bank_primitive_monotoneOn M hM ha (hN.trans ht.1) hx1 ht.2
      linarith
  have hb : BddAbove (insert 0
      ((fun t ↦ primitive M a t - primitive M a N) '' Icc N x)) :=
    ⟨primitive M a x - primitive M a N, hupper⟩
  apply le_antisymm
  · apply csSup_le ⟨0, mem_insert 0 _⟩
    exact hupper
  · apply le_csSup hb
    exact mem_insert_of_mem 0 ⟨x, ⟨hx, le_rfl⟩, rfl⟩

end
end GRWTSK.RiemannHypothesis.Conversation.TriangularContinuousPrimitive
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularContinuousPrimitive/Variant5d01c7e5889160eaceba3c02f1732849bd78e06fce1fb43f32bc25fc1fbdd8a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularContinuousPrimitive/Variant5d01c7e5889160eaceba3c02f1732849bd78e06fce1fb43f32bc25fc1fbdd8a5.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb8794583f3e168f66e0e98e4f48837984a787b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
