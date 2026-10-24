# exists_interval_clearance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c15993e-e15f-35c4-ceb0-10ed18c88fbb",
  "kind": "theorem",
  "lexical_name": "exists_interval_clearance",
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
  "slug": "exists-interval-clearance--10766a640532842de8aaffa1",
  "source": {
    "blob": "4a6389ec7a7d6fb4b501e59d9b885c15843cca6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 118,
    "path": "GRWTSK/Analysis/Real/FiniteIntervalSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10766a640532842de8aaffa177c2d522e91603bc67cf559e77150cdc6fde066c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/FiniteIntervalSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c15993e-e15f-35c4-ceb0-10ed18c88fbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_interval_clearance {ι : Type*} (S : Finset ι) (v : ι → ℝ) (a : ℝ) :
    ∃ H : ℝ, a + 2 * clearance S.card ≤ H ∧
      H ≤ a + 1 - 2 * clearance S.card ∧
      ∀ i ∈ S, clearance S.card ≤ |H - v i| := by
  classical
  have hcard : Fintype.card {i // i ∈ S} = S.card :=
    Fintype.card_of_subtype S (fun _ => Iff.rfl)
  obtain ⟨j, hj⟩ := exists_clear_gridPoint a (fun i : {i // i ∈ S} => v i.val)
  refine ⟨gridPoint a (Fintype.card {i // i ∈ S}) j, ?_, ?_, ?_⟩
  · simpa only [hcard] using (gridPoint_bounds a _ j).1
  · simpa only [hcard] using (gridPoint_bounds a _ j).2
  · intro i hi
    simpa only [hcard] using hj ⟨i, hi⟩

/-- Any certified perturbation spends exactly its error allowance from the clearance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/FiniteIntervalSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/FiniteIntervalSeparation.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a6389ec7a7d6fb4b501e59d9b885c15843cca6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
