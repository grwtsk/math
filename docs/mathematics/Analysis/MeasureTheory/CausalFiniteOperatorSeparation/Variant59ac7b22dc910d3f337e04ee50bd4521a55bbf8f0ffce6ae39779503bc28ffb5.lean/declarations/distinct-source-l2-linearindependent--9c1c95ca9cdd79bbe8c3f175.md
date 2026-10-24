# distinct_source_L2_linearIndependent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab99dcf2-7d3a-3c1c-bca8-f5ec765d8c4c",
  "kind": "theorem",
  "lexical_name": "distinct_source_L2_linearIndependent",
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
  "slug": "distinct-source-l2-linearindependent--9c1c95ca9cdd79bbe8c3f175",
  "source": {
    "blob": "f7fdd9638aba7e0a551c1ae213b09466e5ab6f93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 90,
    "path": "GRWTSK/Analysis/MeasureTheory/CausalFiniteOperatorSeparation/Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c1c95ca9cdd79bbe8c3f1757cb5ff584c72d0458df65e8171b70f155b5f4b89",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CausalFiniteOperatorSeparation/Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab99dcf2-7d3a-3c1c-bca8-f5ec765d8c4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem distinct_source_L2_linearIndependent {ι : Type*} [Fintype ι]
    {A : ℝ} (hA : 0 < A) (label : ι → ℕ) (positive : ∀ i, 0 < label i)
    (distinct : Function.Injective label) :
    LinearIndependent ℝ (fun i ↦ prescribedSourceL2 A hA (label i)) := by
  classical
  apply Fintype.linearIndependent_iff.mpr
  intro w zeroSum i
  have representatives := finite_source_L2_combination_ae hA label w
  rw [zeroSum] at representatives
  have aeZero := representatives.symm.trans (Lp.coeFn_zero ℝ 2 (volume : Measure ℝ))
  have continuousSum : Continuous
      (fun x : ℝ ↦ ∑ j, w j * SourceGram.sourceVector A (label j) x) := by
    apply continuous_finsetSum
    intro j _
    exact continuous_const.mul ((SourceNormalization.normalized_source_continuous A).comp
      (continuous_id.sub continuous_const))
  have pointwise : (fun x : ℝ ↦ ∑ j, w j * SourceGram.sourceVector A (label j) x) = 0 :=
    MeasureTheory.Measure.eq_of_ae_eq aeZero continuousSum continuous_zero
  have functionSum : (∑ j, w j • SourceGram.sourceVector A (label j)) = 0 := by
    funext x
    have equality := congrFun pointwise x
    simpa using equality
  exact (Fintype.linearIndependent_iff.mp
    (distinct_source_vectors_linearIndependent hA label positive distinct)) w functionSum i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CausalFiniteOperatorSeparation/Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CausalFiniteOperatorSeparation/Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7fdd9638aba7e0a551c1ae213b09466e5ab6f93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
