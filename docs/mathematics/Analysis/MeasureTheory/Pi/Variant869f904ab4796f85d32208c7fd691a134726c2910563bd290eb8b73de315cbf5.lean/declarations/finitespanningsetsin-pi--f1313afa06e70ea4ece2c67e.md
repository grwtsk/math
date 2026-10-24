# FiniteSpanningSetsIn.pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38db2de24eef538accda1fc9d580c76c4d2b85a536b1a3bf1e76050d9b933043",
  "kind": "def",
  "lexical_name": "FiniteSpanningSetsIn.pi",
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
  "slug": "finitespanningsetsin-pi--f1313afa06e70ea4ece2c67e",
  "source": {
    "blob": "2bda5be28956dcce27306c9b51fdb7eeca526f1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 242,
    "path": "GRWTSK/Analysis/MeasureTheory/Pi/Variant869f904ab4796f85d32208c7fd691a134726c2910563bd290eb8b73de315cbf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1313afa06e70ea4ece2c67e2795da31ac500b2d31d549ee7155902e247cbb7e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Pi/Variant869f904ab4796f85d32208c7fd691a134726c2910563bd290eb8b73de315cbf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38db2de24eef538accda1fc9d580c76c4d2b85a536b1a3bf1e76050d9b933043`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FiniteSpanningSetsIn.pi {C : ∀ i, Set (Set (α i))}
    (hμ : ∀ i, (μ i).FiniteSpanningSetsIn (C i)) :
    (Measure.pi μ).FiniteSpanningSetsIn (pi univ '' pi univ C) := by
  haveI := fun i => (hμ i).sigmaFinite
  haveI := Fintype.toEncodable ι
  refine ⟨fun n => Set.pi univ fun i => (hμ i).set ((@decode (ι → ℕ) _ n).getD default i),
    fun n => ?_, fun n => ?_, ?_⟩ <;>
  -- TODO (kmill) If this let comes before the refine, while the noncomputability checker
  -- correctly sees this definition is computable, the Lean VM fails to see the binding is
  -- computationally irrelevant. The `noncomputable section` doesn't help because all it does
  -- is insert `noncomputable` for you when necessary.
  let e : ℕ → ι → ℕ := fun n => (@decode (ι → ℕ) _ n).getD default
  · refine mem_image_of_mem _ fun i _ => (hμ i).set_mem _
  · calc
      Measure.pi μ (Set.pi univ fun i => (hμ i).set (e n i)) ≤
          Measure.pi μ (Set.pi univ fun i => toMeasurable (μ i) ((hμ i).set (e n i))) :=
        measure_mono (pi_mono fun i _ => subset_toMeasurable _ _)
      _ = ∏ i, μ i (toMeasurable (μ i) ((hμ i).set (e n i))) :=
        (pi_pi_aux μ _ fun i => measurableSet_toMeasurable _ _)
      _ = ∏ i, μ i ((hμ i).set (e n i)) := by simp only [measure_toMeasurable]
      _ < ∞ := ENNReal.prod_lt_top fun i _ => (hμ i).finite _
  · simp_rw [(surjective_decode_getD (ι → ℕ) default).iUnion_comp fun x =>
        Set.pi univ fun i => (hμ i).set (x i),
      iUnion_univ_pi fun i => (hμ i).set, (hμ _).spanning, Set.pi_univ]

/-- A measure on a finite product space equals the product measure if they are equal on rectangles
  with as sides sets that generate the corresponding σ-algebras. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Pi/Variant869f904ab4796f85d32208c7fd691a134726c2910563bd290eb8b73de315cbf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Pi/Variant869f904ab4796f85d32208c7fd691a134726c2910563bd290eb8b73de315cbf5.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bda5be28956dcce27306c9b51fdb7eeca526f1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
