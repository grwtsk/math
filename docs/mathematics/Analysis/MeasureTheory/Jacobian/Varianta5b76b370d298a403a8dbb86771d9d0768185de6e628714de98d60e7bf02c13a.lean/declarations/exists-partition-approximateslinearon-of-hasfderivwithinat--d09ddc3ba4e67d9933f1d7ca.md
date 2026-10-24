# exists_partition_approximatesLinearOn_of_hasFDerivWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df69e1e6f76d78b8db59cbf9ea29a278020dd71d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16d17572-98f3-b2c3-8922-c1f4f4644812",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f17ee8c6-cba3-7c5d-0490-daeb29a4197f",
  "kind": "theorem",
  "lexical_name": "exists_partition_approximatesLinearOn_of_hasFDerivWithinAt",
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
  "slug": "exists-partition-approximateslinearon-of-hasfderivwithinat--d09ddc3ba4e67d9933f1d7ca",
  "source": {
    "blob": "df69e1e6f76d78b8db59cbf9ea29a278020dd71d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 254,
    "path": "GRWTSK/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d09ddc3ba4e67d9933f1d7ca35147808451622a02b29f9f6c4ed5b5a14a0aea4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f17ee8c6-cba3-7c5d-0490-daeb29a4197f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_partition_approximatesLinearOn_of_hasFDerivWithinAt [SecondCountableTopology F]
    (f : E → F) (s : Set E) (f' : E → E →L[ℝ] F) (hf' : ∀ x ∈ s, HasFDerivWithinAt f (f' x) s x)
    (r : (E →L[ℝ] F) → ℝ≥0) (rpos : ∀ A, r A ≠ 0) :
    ∃ (t : ℕ → Set E) (A : ℕ → E →L[ℝ] F),
      Pairwise (Disjoint on t) ∧
        (∀ n, MeasurableSet (t n)) ∧
          (s ⊆ ⋃ n, t n) ∧
            (∀ n, ApproximatesLinearOn f (A n) (s ∩ t n) (r (A n))) ∧
              (s.Nonempty → ∀ n, ∃ y ∈ s, A n = f' y) := by
  rcases exists_closed_cover_approximatesLinearOn_of_hasFDerivWithinAt f s f' hf' r rpos with
    ⟨t, A, t_closed, st, t_approx, ht⟩
  refine'
    ⟨disjointed t, A, disjoint_disjointed _,
      MeasurableSet.disjointed fun n => (t_closed n).measurableSet, _, _, ht⟩
  · rw [iUnion_disjointed]; exact st
  · intro n; exact (t_approx n).mono_set (inter_subset_inter_right _ (disjointed_subset _ _))
#align exists_partition_approximates_linear_on_of_has_fderiv_within_at exists_partition_approximatesLinearOn_of_hasFDerivWithinAt

namespace MeasureTheory

/-!
### Local lemmas

We check that a function which is well enough approximated by a linear map expands the volume
essentially like this linear map, and that its derivative (if it exists) is almost everywhere close
to the approximating linear map.
-/


/-- Let `f` be a function which is sufficiently close (in the Lipschitz sense) to a given linear
map `A`. Then it expands the volume of any set by at most `m` for any `m > det A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df69e1e6f76d78b8db59cbf9ea29a278020dd71d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
