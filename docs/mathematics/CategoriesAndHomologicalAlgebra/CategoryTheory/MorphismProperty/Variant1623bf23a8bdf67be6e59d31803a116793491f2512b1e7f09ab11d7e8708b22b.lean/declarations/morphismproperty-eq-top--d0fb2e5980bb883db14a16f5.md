# morphismProperty_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7d2b8e9-c9ed-99e3-a7b9-1789fc34e979",
  "kind": "lemma",
  "lexical_name": "morphismProperty_eq_top",
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
  "slug": "morphismproperty-eq-top--d0fb2e5980bb883db14a16f5",
  "source": {
    "blob": "fea6adc96fdf6d000b378059ec969986add12e20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 33,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1623bf23a8bdf67be6e59d31803a116793491f2512b1e7f09ab11d7e8708b22b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0fb2e5980bb883db14a16f5d43e24ee3955cc21a448888b4e359de67c02f82c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1623bf23a8bdf67be6e59d31803a116793491f2512b1e7f09ab11d7e8708b22b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7d2b8e9-c9ed-99e3-a7b9-1789fc34e979`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma morphismProperty_eq_top
    (P : MorphismProperty (Paths V))
    (id : ∀ {v : V}, P (𝟙 ((of V).obj v)))
    (comp : ∀ {u v w : V}
      (p : (of V).obj u ⟶ (of V).obj v) (q : v ⟶ w), P p → P (p ≫ (of V).map q)) :
    P = ⊤ := by
  ext; constructor
  · simp
  · exact fun _ ↦ induction (fun f ↦ P f) id comp _

/-- A reformulation of `CategoryTheory.Paths.induction'` in terms of `MorphismProperty`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1623bf23a8bdf67be6e59d31803a116793491f2512b1e7f09ab11d7e8708b22b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1623bf23a8bdf67be6e59d31803a116793491f2512b1e7f09ab11d7e8708b22b.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fea6adc96fdf6d000b378059ec969986add12e20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
