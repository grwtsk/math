# skeleton_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae3c3f3cde6555c13d871454a132d1868a92db04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7581f8ca-2909-2b01-4b60-5ed4caa0d6c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9af1e3c3-f99c-9492-6502-405abf1c4293",
  "kind": "lemma",
  "lexical_name": "skeleton_succ",
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
  "slug": "skeleton-succ--5bb0f1607294cd231b94b60f",
  "source": {
    "blob": "ae3c3f3cde6555c13d871454a132d1868a92db04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bb0f1607294cd231b94b60f92fc5de0c003312f6f556ed0652e951879a51c63",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9af1e3c3-f99c-9492-6502-405abf1c4293`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma skeleton_succ (n : ℕ) :
    X.skeleton (n + 1) =
      X.skeleton n ⊔ ⨆ (x : X.nonDegenerate n), Subcomplex.ofSimplex x.1 := by
  apply le_antisymm
  · conv_lhs => dsimp [skeleton]
    simp only [iSup_le_iff]
    rintro ⟨d, hd⟩ x
    rw [Nat.lt_succ_iff] at hd
    obtain hd | rfl := hd.lt_or_eq
    · exact (X.ofSimplex_le_skeleton _ hd).trans le_sup_left
    · exact le_trans (le_trans (by rfl) (le_iSup _ x)) le_sup_right
  · simp only [sup_le_iff, iSup_le_iff]
    constructor
    · exact X.skeleton.monotone (by simp)
    · intro x
      apply X.ofSimplex_le_skeleton _ (by simp)

variable {X} {Y : SSet.{u}} (i : X ⟶ Y)

/-- The skeleton of a monomorphism `i : X ⟶ Y` of simplicial sets.
It sends `n : ℕ` to `Subcomplex.range i ⊔ Y.skeleton n`.
See `SSet.relativeCellComplexOfMono` for the main result regarding
this definition.
(Even though `[Mono i]` is technically not required in this definition,
the intended use of this definition and the corresponding API is
when `[Mono i]` holds.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae3c3f3cde6555c13d871454a132d1868a92db04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
