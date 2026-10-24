# grothendieckTopology_eq_inf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84d50d0d2a13ded4369f6f03fdac5e3385a35b0e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99ce8dff-6d0a-7c1d-8feb-a59fa198cddf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26121f59-cb1f-7709-db3e-ef5216d59805",
  "kind": "lemma",
  "lexical_name": "grothendieckTopology_eq_inf",
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
  "slug": "grothendiecktopology-eq-inf--7672d3b2b23a7ba38874f4aa",
  "source": {
    "blob": "84d50d0d2a13ded4369f6f03fdac5e3385a35b0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 96,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variant525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7672d3b2b23a7ba38874f4aaa68ef75720f715d9a0aa2076aec06488e9c6c3f8",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/MorphismProperty/Variant525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26121f59-cb1f-7709-db3e-ef5216d59805`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma grothendieckTopology_eq_inf [IsJointlySurjectivePreserving ⊤] :
    grothendieckTopology P = (surjectiveFamiliesPretopology ⊓ P.pretopology).toGrothendieck := by
  apply le_antisymm ((Pretopology.gi Scheme.{u}).gc.monotone_l (pretopology_le_inf P))
  intro X S ⟨T, ⟨hs, hP⟩, hle⟩
  let _ : Type (u + 1) := Presieve X
  let J := (Y : Scheme.{u}) × (Y ⟶ X)
  choose Y y f hf hy using hs
  let 𝒰 : Cover.{u} P X :=
    { J := X
      obj := Y
      map := f
      f := id
      covers := fun x ↦ ⟨y x, hy x⟩
      map_prop := fun x ↦ hP (hf x)
    }
  refine ⟨Presieve.ofArrows 𝒰.obj 𝒰.map, ⟨𝒰, rfl⟩, ?_⟩
  rintro Z g ⟨x⟩
  exact hle _ (hf x)

variable {P}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/MorphismProperty/Variant525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variant525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84d50d0d2a13ded4369f6f03fdac5e3385a35b0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
