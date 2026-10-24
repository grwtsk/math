# boundary_classification

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bc02b48-0723-95f3-592d-5f273fe43e8e",
  "kind": "theorem",
  "lexical_name": "boundary_classification",
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
  "slug": "boundary-classification--6d054e0515414e9329e52bc5",
  "source": {
    "blob": "9e394b2dded12270c17772977493e034997ba4da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e92e44a32871c71951079066a5cd443bb7f7baf219c4a3b1e12a3ca7236a6ceBoundary/Variant9043e8e035e97ae5edbc6e67ef73cc69b36fe97a9e5a8a439758f6a8880756e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d054e0515414e9329e52bc55fa725f46d757190ce6eb650d2d4ba03578c8b56",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e92e44a32871c71951079066a5cd443bb7f7baf219c4a3b1e12a3ca7236a6ceBoundary/Variant9043e8e035e97ae5edbc6e67ef73cc69b36fe97a9e5a8a439758f6a8880756e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bc02b48-0723-95f3-592d-5f273fe43e8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_classification {n : ℕ} (r c : Fin (n + 1) ↪o ℕ)
    (hboundary : ¬ Separated r c) :
    (∃ i, c i < r i) ∨
      (∃ i : Fin n, c i.castSucc < r i.succ) ∨
        ((∀ i, r i ≤ c i) ∧
          (∀ i : Fin n, r i.succ ≤ c i.castSucc) ∧
            c 0 < r (Fin.last n)) := by
  by_cases hdiag : ∀ i, r i ≤ c i
  · by_cases hoverlap : ∀ i : Fin n, r i.succ ≤ c i.castSucc
    · exact Or.inr (Or.inr ⟨hdiag, hoverlap,
        lt_of_not_ge (fun h => hboundary ((separated_iff_last_le_first r c).mpr h))⟩)
    · obtain ⟨i, hi⟩ := not_forall.mp hoverlap
      exact Or.inr (Or.inl ⟨i, lt_of_not_ge hi⟩)
  · obtain ⟨i, hi⟩ := not_forall.mp hdiag
    exact Or.inl ⟨i, lt_of_not_ge hi⟩

/-- At rank two every non-separated minor is triangular, so only coefficient
nonnegativity is needed for its boundary case. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e92e44a32871c71951079066a5cd443bb7f7baf219c4a3b1e12a3ca7236a6ceBoundary/Variant9043e8e035e97ae5edbc6e67ef73cc69b36fe97a9e5a8a439758f6a8880756e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e92e44a32871c71951079066a5cd443bb7f7baf219c4a3b1e12a3ca7236a6ceBoundary/Variant9043e8e035e97ae5edbc6e67ef73cc69b36fe97a9e5a8a439758f6a8880756e4.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e394b2dded12270c17772977493e034997ba4da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
