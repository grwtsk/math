# count_vertices

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1a68dd3-bfb7-7967-6410-ec19753dfdb4",
  "kind": "theorem",
  "lexical_name": "count_vertices",
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
  "slug": "count-vertices--9538be6c1b394838cc70e305",
  "source": {
    "blob": "29f5e1505c6a0370c32d09d5404f8985e19f3f35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 387,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant6738fcd0e5e58cd1a3d7065cbbf4f64875cf7afa70ba87b2d4805b8ff14956a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9538be6c1b394838cc70e305ed767cf39c94912bc8125433684ff85497b993eb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant6738fcd0e5e58cd1a3d7065cbbf4f64875cf7afa70ba87b2d4805b8ff14956a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1a68dd3-bfb7-7967-6410-ec19753dfdb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_vertices : {n : Nat} → (x : Hypercube.Point n) →
    (Hypercube.vertices n).count x = 1
  | 0, x => by
      have hx : (fun i => nomatch i : Hypercube.Point 0) = x :=
        funext fun i => Fin.elim0 i
      rw [← hx]
      exact List.count_singleton_self
  | n + 1, x => by
      have hpair :
          ∀ l : List (Hypercube.Point n),
            (l.flatMap
              (fun v => [Hypercube.extend v false, Hypercube.extend v true])).count x =
              l.count (Hypercube.dropLast x) := by
        intro l
        induction l with
        | nil => rfl
        | cons v t ih =>
            rw [List.flatMap_cons, List.count_append, ih]
            have hcount2 :
                ([Hypercube.extend v false, Hypercube.extend v true].count x) =
                  ([v].count (Hypercube.dropLast x)) := by
              by_cases hv : Hypercube.dropLast x = v
              · cases hb : Hypercube.last x
                · have h0 : Hypercube.extend v false = x :=
                    ((eq_extend_iff x v false).mpr ⟨hv, hb⟩).symm
                  have h1 : Hypercube.extend v true ≠ x := by
                    intro h
                    have := ((eq_extend_iff x v true).mp h.symm).2
                    rw [hb] at this
                    cases this
                  simp [List.count_cons, h0, h1, hv, beq_iff_eq]
                · have h0 : Hypercube.extend v false ≠ x := by
                    intro h
                    have := ((eq_extend_iff x v false).mp h.symm).2
                    rw [hb] at this
                    cases this
                  have h1 : Hypercube.extend v true = x :=
                    ((eq_extend_iff x v true).mpr ⟨hv, hb⟩).symm
                  simp [List.count_cons, h0, h1, hv, beq_iff_eq]
              · have h0 : Hypercube.extend v false ≠ x := by
                  intro h
                  exact hv ((eq_extend_iff x v false).mp h.symm).1
                have h1 : Hypercube.extend v true ≠ x := by
                  intro h
                  exact hv ((eq_extend_iff x v true).mp h.symm).1
                have hv' : v ≠ Hypercube.dropLast x := fun h => hv h.symm
                simp [List.count_cons, h0, h1, hv', beq_iff_eq]
            rw [hcount2]
            simp [List.count_cons]
            omega
      simp only [Hypercube.vertices]
      rw [hpair, count_vertices (Hypercube.dropLast x)]

/-- The image of the vertex list under a point bijection is a permutation of
the vertex list. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant6738fcd0e5e58cd1a3d7065cbbf4f64875cf7afa70ba87b2d4805b8ff14956a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant6738fcd0e5e58cd1a3d7065cbbf4f64875cf7afa70ba87b2d4805b8ff14956a3.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29f5e1505c6a0370c32d09d5404f8985e19f3f35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
