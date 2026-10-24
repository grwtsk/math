# actual_finite_crossing_selection_le_complete_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c70f969d-3827-d004-2e11-12d5a129d167",
  "kind": "theorem",
  "lexical_name": "actual_finite_crossing_selection_le_complete_tail",
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
  "slug": "actual-finite-crossing-selection-le-complete-tail--bd6a5f8e63a1885fae09f29d",
  "source": {
    "blob": "b3704f0283fb599dba0ea23faa9949e5d8a050a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteCrossingTailBudget/Variantb48e0265cf5a47c4a659f18ad6d1203331d92525ed8613cb9929fc7f4e0f9231.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd6a5f8e63a1885fae09f29dbf58bfc3f723048011f47f72102834b8152a18ce",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteCrossingTailBudget/Variantb48e0265cf5a47c4a659f18ad6d1203331d92525ed8613cb9929fc7f4e0f9231.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c70f969d-3827-d004-2e11-12d5a129d167`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_finite_crossing_selection_le_complete_tail {N : ℕ} (hN : 3 ≤ N)
    (s : Finset ℕ) (hs : ∀ n ∈ s, N ≤ n ∧ isCrossing n) :
    (∑ n ∈ s, cellClock n (n + 1 : ℕ) * max |storage (n - 1)| |storage n|) ≤
      tailPrice N := by
  classical
  have he : (∑ n ∈ s, priceTerm N n) =
      ∑ n ∈ s, cellClock n (n + 1 : ℕ) * max |storage (n - 1)| |storage n| := by
    apply Finset.sum_congr rfl
    intro n hn
    simp only [priceTerm, if_pos (hs n hn)]
  rw [← he]
  exact every_finite_gated_selection_le_complete_tail hN s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteCrossingTailBudget/Variantb48e0265cf5a47c4a659f18ad6d1203331d92525ed8613cb9929fc7f4e0f9231.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteCrossingTailBudget/Variantb48e0265cf5a47c4a659f18ad6d1203331d92525ed8613cb9929fc7f4e0f9231.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3704f0283fb599dba0ea23faa9949e5d8a050a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
