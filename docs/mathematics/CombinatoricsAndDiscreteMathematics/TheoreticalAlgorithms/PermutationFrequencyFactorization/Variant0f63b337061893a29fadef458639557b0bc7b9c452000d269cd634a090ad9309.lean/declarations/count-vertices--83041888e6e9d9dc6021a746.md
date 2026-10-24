# count_vertices

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f1fb11d34de52fbbb2206f96aaf1f31fbf53079",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 379,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f63b337061893a29fadef458639557b0bc7b9c452000d269cd634a090ad9309.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9345aff4-32f9-f39b-a4d3-223f797a461e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97ad216c-835e-bfdc-3401-2fcbf7f846e3",
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
  "slug": "count-vertices--83041888e6e9d9dc6021a746",
  "source": {
    "blob": "7f1fb11d34de52fbbb2206f96aaf1f31fbf53079",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 379,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant0f63b337061893a29fadef458639557b0bc7b9c452000d269cd634a090ad9309.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83041888e6e9d9dc6021a7469fc469e8189a10b382d94b45a8023162a7576bc1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant0f63b337061893a29fadef458639557b0bc7b9c452000d269cd634a090ad9309.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97ad216c-835e-bfdc-3401-2fcbf7f846e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–433.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant0f63b337061893a29fadef458639557b0bc7b9c452000d269cd634a090ad9309.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant0f63b337061893a29fadef458639557b0bc7b9c452000d269cd634a090ad9309.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f1fb11d34de52fbbb2206f96aaf1f31fbf53079` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
