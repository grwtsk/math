# sum_hyperbolaRight_eq_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38acab9f-6ee7-d045-3b1b-9d790e126aef",
  "kind": "theorem",
  "lexical_name": "sum_hyperbolaRight_eq_left",
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
  "slug": "sum-hyperbolaright-eq-left--0ba567edf349af66c6cea9df",
  "source": {
    "blob": "3d0eef3f07450b8199acad938667e8229ec1654f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 171,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ba567edf349af66c6cea9dfe34d11f7dfe0672eaa4facb45085d7268b24943e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38acab9f-6ee7-d045-3b1b-9d790e126aef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_hyperbolaRight_eq_left (N : Nat) (F : Nat -> Nat -> Real)
    (hsymm : ∀ a b, F a b = F b a) :
    (∑ p ∈ hyperbolaRight N, F p.1 p.2) =
      ∑ p ∈ hyperbolaLeft N, F p.1 p.2 := by
  classical
  refine Finset.sum_bij (fun p _ => (p.2, p.1)) ?_ ?_ ?_ ?_
  · intro p hp
    simp only [hyperbolaRight, hyperbolaLeft,
      Finset.mem_filter, Finset.mem_product, Finset.mem_Icc] at hp ⊢
    rcases hp with ⟨⟨⟨hp1, hp1N⟩, ⟨hp2, hp2s⟩⟩, hprod⟩
    exact ⟨⟨⟨hp2, hp2s⟩, ⟨hp1, hp1N⟩⟩,
      by simpa [Nat.mul_comm] using hprod⟩
  · intro p hp q hq heq
    exact Prod.swap_injective heq
  · intro q hq
    refine ⟨(q.2, q.1), ?_, by simp⟩
    simp only [hyperbolaRight, hyperbolaLeft,
      Finset.mem_filter, Finset.mem_product, Finset.mem_Icc] at hq ⊢
    rcases hq with ⟨⟨⟨hq1, hq1s⟩, ⟨hq2, hq2N⟩⟩, hprod⟩
    exact ⟨⟨⟨hq2, hq2N⟩, ⟨hq1, hq1s⟩⟩,
      by simpa [Nat.mul_comm] using hprod⟩
  · intro p hp
    exact hsymm p.1 p.2

/-- Balanced Dirichlet-hyperbola identity for a symmetric weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d0eef3f07450b8199acad938667e8229ec1654f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
