# centeredDisclosure_coverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9f53443-b072-73b6-c771-ccb837de6ab2",
  "kind": "theorem",
  "lexical_name": "centeredDisclosure_coverage",
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
  "slug": "centereddisclosure-coverage--075e742a27d9cb9a561c9320",
  "source": {
    "blob": "0016f32ce7bbe576202a2ff26341fb06622746f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 153,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:075e742a27d9cb9a561c9320089be7d522dd2448f0b18154d361dbf55f451567",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9f53443-b072-73b6-c771-ccb837de6ab2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredDisclosure_coverage (P : Finset ℕ) (U n : ℕ)
    (hP : ∀ r ∈ P, r.Prime) (hcover : ∀ r, r.Prime → r ≤ U → r ∈ P) :
    centeredDisclosure (primeDivisors P U) n = centeredDisclosure (Finset.Icc 1 U) n := by
  classical
  have hsub : primeDivisors P U ⊆ Finset.Icc 1 U := by
    intro e he
    obtain ⟨he, hcut⟩ := Finset.mem_filter.mp he
    obtain ⟨S, hS, rfl⟩ := Finset.mem_image.mp he
    exact Finset.mem_Icc.mpr ⟨Finset.prod_pos (fun r hr =>
      (hP r ((Finset.mem_powerset.mp hS) hr)).pos), hcut⟩
  unfold centeredDisclosure
  apply Finset.sum_subset hsub
  intro d hd hnot
  have hnsq : ¬ Squarefree d := by
    intro hsq
    apply hnot
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_image.mpr ⟨d.primeFactors, ?_, Nat.prod_primeFactors_of_squarefree hsq⟩,
      (Finset.mem_Icc.mp hd).2⟩
    apply Finset.mem_powerset.mpr
    intro r hr
    obtain ⟨hrp, hrd, _⟩ := Nat.mem_primeFactors.mp hr
    exact hcover r hrp ((Nat.le_of_dvd (Finset.mem_Icc.mp hd).1 hrd).trans
      (Finset.mem_Icc.mp hd).2)
  rw [ArithmeticFunction.moebius_eq_zero_of_not_squarefree hnsq]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0016f32ce7bbe576202a2ff26341fb06622746f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
