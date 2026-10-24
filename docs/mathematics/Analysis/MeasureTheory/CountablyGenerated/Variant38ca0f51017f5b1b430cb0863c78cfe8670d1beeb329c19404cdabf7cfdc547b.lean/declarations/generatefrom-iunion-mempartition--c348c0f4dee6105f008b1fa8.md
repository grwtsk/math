# generateFrom_iUnion_memPartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:048e624b-29e7-2f5d-5729-666134e48ba2",
  "kind": "lemma",
  "lexical_name": "generateFrom_iUnion_memPartition",
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
  "slug": "generatefrom-iunion-mempartition--c348c0f4dee6105f008b1fa8",
  "source": {
    "blob": "ac0bd980ce8cc705b8545067c50c1179c151a466",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 557,
    "line": 538,
    "path": "GRWTSK/Analysis/MeasureTheory/CountablyGenerated/Variant38ca0f51017f5b1b430cb0863c78cfe8670d1beeb329c19404cdabf7cfdc547b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c348c0f4dee6105f008b1fa82d31a544eec4e8a4461267ea95177ec76de5bef4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CountablyGenerated/Variant38ca0f51017f5b1b430cb0863c78cfe8670d1beeb329c19404cdabf7cfdc547b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:048e624b-29e7-2f5d-5729-666134e48ba2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–557.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma generateFrom_iUnion_memPartition (t : ℕ → Set α) :
    generateFrom (⋃ n, memPartition t n) = generateFrom (range t) := by
  refine le_antisymm (generateFrom_le fun u hu ↦ ?_) (generateFrom_le fun u hu ↦ ?_)
  · simp only [mem_iUnion] at hu
    obtain ⟨n, hun⟩ := hu
    induction n generalizing u with
    | zero =>
      simp only [memPartition_zero, mem_singleton_iff] at hun
      rw [hun]
      exact MeasurableSet.univ
    | succ n ih =>
      simp only [memPartition_succ, mem_ofPred_eq] at hun
      obtain ⟨v, hv, huv⟩ := hun
      rcases huv with rfl | rfl
      · exact (ih v hv).inter (measurableSet_generateFrom ⟨n, rfl⟩)
      · exact (ih v hv).diff (measurableSet_generateFrom ⟨n, rfl⟩)
  · simp only [mem_range] at hu
    obtain ⟨n, rfl⟩ := hu
    exact generateFrom_mono (subset_iUnion _ _) _ (measurableSet_generateFrom_memPartition t n)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CountablyGenerated/Variant38ca0f51017f5b1b430cb0863c78cfe8670d1beeb329c19404cdabf7cfdc547b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CountablyGenerated/Variant38ca0f51017f5b1b430cb0863c78cfe8670d1beeb329c19404cdabf7cfdc547b.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac0bd980ce8cc705b8545067c50c1179c151a466` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
