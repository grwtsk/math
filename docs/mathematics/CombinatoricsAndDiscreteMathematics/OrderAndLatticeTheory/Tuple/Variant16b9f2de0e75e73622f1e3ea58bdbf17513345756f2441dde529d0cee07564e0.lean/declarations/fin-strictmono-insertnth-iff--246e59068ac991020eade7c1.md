# Fin.strictMono_insertNth_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7776171da36386b3a5af9bf2846693c1eab4f04d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/16b9f2de0e75e73622f1e3ea58bdbf17513345756f2441dde529d0cee07564e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6857bb9-1e96-bead-8ab5-c49c082b1792",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ef05e2f-706a-5991-6916-1e7a56f620fd",
  "kind": "lemma",
  "lexical_name": "Fin.strictMono_insertNth_iff",
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
  "slug": "fin-strictmono-insertnth-iff--246e59068ac991020eade7c1",
  "source": {
    "blob": "7776171da36386b3a5af9bf2846693c1eab4f04d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 78,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant16b9f2de0e75e73622f1e3ea58bdbf17513345756f2441dde529d0cee07564e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:246e59068ac991020eade7c183d51646ca7aae3d1297898afcf65c2749ae42ae",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant16b9f2de0e75e73622f1e3ea58bdbf17513345756f2441dde529d0cee07564e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ef05e2f-706a-5991-6916-1e7a56f620fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Fin.strictMono_insertNth_iff (q : Fin (n + 1)) (x : α) (f : Fin n → α) :
    StrictMono (q.insertNth x f) ↔
      StrictMono f ∧ (∀ i, i.castSucc < q → f i < x) ∧ (∀ i, q ≤ i.castSucc → x < f i) := by
  refine ⟨fun h ↦ ⟨fun a b hab ↦ ?_, ⟨fun i hlt ↦ ?_, fun i hlt ↦ ?_⟩⟩, ?_⟩
  · simpa [hab] using h (a := q.succAbove a) (b := q.succAbove b)
  · have : q.succAbove i < q := by simp [succAbove_of_castSucc_lt, hlt]
    simpa using h this
  · have : q < q.succAbove i := by simp [succAbove_of_le_castSucc, hlt, ← le_castSucc_iff]
    simpa using h this
  · rintro ⟨h, hlt, hgt⟩ a b hab
    cases a using succAboveCases q <;> cases b using succAboveCases q
    · simp at hab
    · rename_i j
      have : q ≤ j.castSucc := by simpa [lt_succAbove_iff_le_castSucc] using hab
      simpa using hgt _ this
    · rename_i j
      have : j.castSucc < q := by simpa [succAbove_lt_iff_castSucc_lt] using hab
      simpa using hlt _ this
    · simpa using h <| (strictMono_succAbove _).lt_iff_lt.mp hab

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant16b9f2de0e75e73622f1e3ea58bdbf17513345756f2441dde529d0cee07564e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant16b9f2de0e75e73622f1e3ea58bdbf17513345756f2441dde529d0cee07564e0.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7776171da36386b3a5af9bf2846693c1eab4f04d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
