# hasWeakLimit_cospan_of_hasLimit_pair_of_hasWeakLimit_parallelPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3069b29544772d9848dee8bd11ba253ae8928d0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 226,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7b83ae2bdce95b908a8eab12af4a1ccbdd01777617b61cca561938515071497.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc277f4d-4ac0-eed9-3889-2ecc8c495ef0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6590c067-b807-567f-ee94-0a76e2dc7401",
  "kind": "theorem",
  "lexical_name": "hasWeakLimit_cospan_of_hasLimit_pair_of_hasWeakLimit_parallelPair",
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
  "slug": "hasweaklimit-cospan-of-haslimit-pair-of-hasweaklimit-parallelpair--29140b5219ae8816a5e2a1f4",
  "source": {
    "blob": "3069b29544772d9848dee8bd11ba253ae8928d0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 226,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variante7b83ae2bdce95b908a8eab12af4a1ccbdd01777617b61cca561938515071497.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29140b5219ae8816a5e2a1f47fbabab8ed37f13ac1b8645e413c9ec0cc128209",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variante7b83ae2bdce95b908a8eab12af4a1ccbdd01777617b61cca561938515071497.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6590c067-b807-567f-ee94-0a76e2dc7401`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasWeakLimit_cospan_of_hasLimit_pair_of_hasWeakLimit_parallelPair [HasLimit (pair X Y)]
    [HasWeakLimit (parallelPair (prod.fst ≫ f) (prod.snd ≫ g))] : HasWeakLimit (cospan f g) :=
  HasWeakLimit.mk
    { cone :=
        PullbackCone.mk (weakEqualizer.ι (prod.fst ≫ f) (prod.snd ≫ g) ≫ prod.fst)
          (weakEqualizer.ι _ _ ≫ prod.snd) <| by
          rw [Category.assoc, weakEqualizer.condition]
          simp
      isWeakLimit :=
        PullbackCone.IsWeakLimit.mk _ (fun s ↦ weakEqualizer.lift
          (prod.lift (s.π.app .left) (s.π.app .right)) <| by
            simp [limit.lift_π_assoc, PullbackCone.condition])
          (by simp) (by simp) }

attribute [local instance] hasWeakLimit_cospan_of_hasLimit_pair_of_hasWeakLimit_parallelPair in
/-- If a category has all binary products and all weak equalizers, then it also has all
weak pullbacks. As usual, this is not an instance, since there may be a more direct way to
construct weak pullbacks. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variante7b83ae2bdce95b908a8eab12af4a1ccbdd01777617b61cca561938515071497.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variante7b83ae2bdce95b908a8eab12af4a1ccbdd01777617b61cca561938515071497.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3069b29544772d9848dee8bd11ba253ae8928d0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
