# parallelPair_initial_mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "938e98c7e64e660397ff3c5b327cb1c126b5c4d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd3d9bc4682781221bc823a3cc3a5fa5fb5333b4e2d9b800c05271d30c337172.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1d1a595-e1dc-25c9-27a1-335f2416d100",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a0e99c2-117f-2700-8dd7-bdc806a0e070",
  "kind": "lemma",
  "lexical_name": "parallelPair_initial_mk'",
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
  "slug": "parallelpair-initial-mk--8235fa1c676d8365a6bdf655",
  "source": {
    "blob": "938e98c7e64e660397ff3c5b327cb1c126b5c4d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 25,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ParallelPair/Variantbd3d9bc4682781221bc823a3cc3a5fa5fb5333b4e2d9b800c05271d30c337172.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8235fa1c676d8365a6bdf6558ce0c7311d8d64c9085569d89aab7102c579d9de",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ParallelPair/Variantbd3d9bc4682781221bc823a3cc3a5fa5fb5333b4e2d9b800c05271d30c337172.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a0e99c2-117f-2700-8dd7-bdc806a0e070`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma parallelPair_initial_mk' {X Y : C} (f g : X ⟶ Y)
    (h₁ : ∀ Z, Nonempty (X ⟶ Z))
    (h₂ : ∀ ⦃Z : C⦄ (i j : X ⟶ Z),
      Zigzag (J := CostructuredArrow (parallelPair f g) Z)
        (mk (Y := zero) i) (mk (Y := zero) j)) :
    (parallelPair f g).Initial where
  out Z := by
    have : Nonempty (CostructuredArrow (parallelPair f g) Z) :=
      ⟨mk (Y := zero) (h₁ Z).some⟩
    have : ∀ (x : CostructuredArrow (parallelPair f g) Z), Zigzag x
      (mk (Y := zero) (h₁ Z).some) := by
        rintro ⟨(_|_), ⟨⟩, φ⟩
        · apply h₂
        · refine Zigzag.trans ?_ (h₂ (f ≫ φ) _)
          exact Zigzag.of_inv (homMk left)
    exact zigzag_isConnected (fun x y => (this x).trans (this y).symm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ParallelPair/Variantbd3d9bc4682781221bc823a3cc3a5fa5fb5333b4e2d9b800c05271d30c337172.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ParallelPair/Variantbd3d9bc4682781221bc823a3cc3a5fa5fb5333b4e2d9b800c05271d30c337172.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `938e98c7e64e660397ff3c5b327cb1c126b5c4d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
