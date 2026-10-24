# characterProductSum_eq_zero_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b57e637fba452324ea1524fab02ca7f3896451cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 206,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/abc0a3517055ea5c570c37f0fd36bf293dbeffb19cd04f8fffb8437b6f451fc2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a83bbb54-7796-822c-98b0-b31630a1ecb2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da5a9735-5228-e8a8-2b2b-f19140055181",
  "kind": "theorem",
  "lexical_name": "characterProductSum_eq_zero_of_ne",
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
  "slug": "characterproductsum-eq-zero-of-ne--42dc8f5093f482e2c5d98c3c",
  "source": {
    "blob": "b57e637fba452324ea1524fab02ca7f3896451cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 206,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantabc0a3517055ea5c570c37f0fd36bf293dbeffb19cd04f8fffb8437b6f451fc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42dc8f5093f482e2c5d98c3cea684c10b74939829e21c8646df151fc6f4e4b2e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantabc0a3517055ea5c570c37f0fd36bf293dbeffb19cd04f8fffb8437b6f451fc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da5a9735-5228-e8a8-2b2b-f19140055181`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem characterProductSum_eq_zero_of_ne :
    ∀ {n : Nat}
      (S T : WalshFourier.Frequency n),
      S ≠ T →
      characterProductSum S T = 0
  | 0, S, T, hne => by
      have hST : S = T := by
        funext i
        exact Fin.elim0 i
      exact False.elim (hne hST)
  | n + 1, S, T, hne => by
      by_cases hlast : Hypercube.last S = Hypercube.last T
      · have hdrop : Hypercube.dropLast S ≠ Hypercube.dropLast T := by
          intro h
          exact hne (Hypercube.eq_of_dropLast_eq_last_eq h hlast)
        have ih := characterProductSum_eq_zero_of_ne
          (Hypercube.dropLast S) (Hypercube.dropLast T) hdrop
        cases hs : Hypercube.last S <;>
          cases ht : Hypercube.last T
        · unfold characterProductSum at ih ⊢
          simp only [Hypercube.vertices, List.map_flatMap, List.map_cons,
            List.map_nil]
          rw [ListTools.sumInt_flatMap_pair]
          let lower : Hypercube.Point n → Int :=
            fun x =>
              character (Hypercube.dropLast S) x *
                character (Hypercube.dropLast T) x
          have hpair :
              ListTools.sumInt
                ((Hypercube.vertices n).map
                  (fun x =>
                    character S (Hypercube.extend x false) *
                        character T (Hypercube.extend x false) +
                      character S (Hypercube.extend x true) *
                        character T (Hypercube.extend x true))) =
                ListTools.sumInt
                  ((Hypercube.vertices n).map
                    (fun x => lower x + lower x)) := by
            apply ListTools.sumInt_map_congr
            intro x
            simp [lower, character_extend, hs, ht]
          change
            ListTools.sumInt ((Hypercube.vertices n).map lower) = 0 at ih
          rw [hpair, ListTools.sumInt_map_add, ih]
          simp
        · have h : False := by
            simp [hs, ht] at hlast
          exact False.elim h
        · have h : False := by
            simp [hs, ht] at hlast
          exact False.elim h
        · unfold characterProductSum at ih ⊢
          simp only [Hypercube.vertices, List.map_flatMap, List.map_cons,
            List.map_nil]
          rw [ListTools.sumInt_flatMap_pair]
          let lower : Hypercube.Point n → Int :=
            fun x =>
              character (Hypercube.dropLast S) x *
                character (Hypercube.dropLast T) x
          have hpair :
              ListTools.sumInt
                ((Hypercube.vertices n).map
                  (fun x =>
                    character S (Hypercube.extend x false) *
                        character T (Hypercube.extend x false) +
                      character S (Hypercube.extend x true) *
                        character T (Hypercube.extend x true))) =
                ListTools.sumInt
                  ((Hypercube.vertices n).map
                    (fun x => lower x + lower x)) := by
            apply ListTools.sumInt_map_congr
            intro x
            have hneg := neg_mul_neg_eq_mul_of_character
              (character_eq_neg_one_or_one (Hypercube.dropLast S) x)
              (character_eq_neg_one_or_one (Hypercube.dropLast T) x)
            simp [lower, character_extend, hs, ht, Hypercube.spinOfBool,
              hneg]
          change
            ListTools.sumInt ((Hypercube.vertices n).map lower) = 0 at ih
          rw [hpair, ListTools.sumInt_map_add, ih]
          simp
      · cases hs : Hypercube.last S <;>
          cases ht : Hypercube.last T
        · exact False.elim (hlast (by simp [hs, ht]))
        · unfold characterProductSum
          simp only [Hypercube.vertices, List.map_flatMap, List.map_cons,
            List.map_nil]
          rw [ListTools.sumInt_flatMap_pair]
          let lower : Hypercube.Point n → Int :=
            fun x =>
              character (Hypercube.dropLast S) x *
                character (Hypercube.dropLast T) x
          have hpair :
              ListTools.sumInt
                ((Hypercube.vertices n).map
                  (fun x =>
                    character S (Hypercube.extend x false) *
                        character T (Hypercube.extend x false) +
                      character S (Hypercube.extend x true) *
                        character T (Hypercube.extend x true))) =
                ListTools.sumInt
                  ((Hypercube.vertices n).map (fun _ => (0 : Int))) := by
            apply ListTools.sumInt_map_congr
            intro x
            have hneg := mul_neg_eq_neg_mul_of_character
              (character_eq_neg_one_or_one (Hypercube.dropLast S) x)
              (character_eq_neg_one_or_one (Hypercube.dropLast T) x)
            simp [character_extend, hs, ht, Hypercube.spinOfBool, hneg]
            omega
          rw [hpair]
          simp
        · unfold characterProductSum
          simp only [Hypercube.vertices, List.map_flatMap, List.map_cons,
            List.map_nil]
          rw [ListTools.sumInt_flatMap_pair]
          let lower : Hypercube.Point n → Int :=
            fun x =>
              character (Hypercube.dropLast S) x *
                character (Hypercube.dropLast T) x
          have hpair :
              ListTools.sumInt
                ((Hypercube.vertices n).map
                  (fun x =>
                    character S (Hypercube.extend x false) *
                        character T (Hypercube.extend x false) +
                      character S (Hypercube.extend x true) *
                        character T (Hypercube.extend x true))) =
                ListTools.sumInt
                  ((Hypercube.vertices n).map (fun _ => (0 : Int))) := by
            apply ListTools.sumInt_map_congr
            intro x
            have hneg := neg_mul_eq_neg_mul_of_character
              (character_eq_neg_one_or_one (Hypercube.dropLast S) x)
              (character_eq_neg_one_or_one (Hypercube.dropLast T) x)
            simp [character_extend, hs, ht, Hypercube.spinOfBool, hneg]
            omega
          rw [hpair]
          simp
        · exact False.elim (hlast (by simp [hs, ht]))

/-- A Walsh character has squared norm `2^n` over `Hypercube.vertices`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantabc0a3517055ea5c570c37f0fd36bf293dbeffb19cd04f8fffb8437b6f451fc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantabc0a3517055ea5c570c37f0fd36bf293dbeffb19cd04f8fffb8437b6f451fc2.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b57e637fba452324ea1524fab02ca7f3896451cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
