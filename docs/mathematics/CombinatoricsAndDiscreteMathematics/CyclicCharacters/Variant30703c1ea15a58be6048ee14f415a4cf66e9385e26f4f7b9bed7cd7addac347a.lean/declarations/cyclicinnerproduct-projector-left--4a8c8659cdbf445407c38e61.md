# cyclicInnerProduct_projector_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f970ba70d1eef2141b3aeb3e891de7fc25f8e0b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:832e750d-ff70-4e5f-c3dd-4e630d9340ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d262a17-fb14-6fdb-3d20-92d0eb164b5a",
  "kind": "theorem",
  "lexical_name": "cyclicInnerProduct_projector_left",
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
  "slug": "cyclicinnerproduct-projector-left--4a8c8659cdbf445407c38e61",
  "source": {
    "blob": "f970ba70d1eef2141b3aeb3e891de7fc25f8e0b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 106,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a8c8659cdbf445407c38e61ba48e8f6ed11c1ce95b6e14838a8e3bb90c358c7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d262a17-fb14-6fdb-3d20-92d0eb164b5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cyclicInnerProduct_projector_left
    (j : ZMod n) (left right : CyclicSignal n) :
    cyclicInnerProduct (cyclicCharacterProjector j left) right =
      conj ((n : ℂ)⁻¹ * cyclicCharacterCoefficient j left) *
        cyclicCharacterCoefficient j right := by
  classical
  unfold cyclicInnerProduct cyclicCharacterProjector
  calc
    (∑ r : ZMod n,
        conj ((n : ℂ)⁻¹ * cyclicCharacter j r *
          cyclicCharacterCoefficient j left) * right r) =
        ∑ r : ZMod n,
          conj ((n : ℂ)⁻¹ *
            cyclicCharacterCoefficient j left) *
            (conj (cyclicCharacter j r) * right r) := by
      apply Finset.sum_congr rfl
      intro r _
      simp only [map_mul]
      ring
    _ = conj ((n : ℂ)⁻¹ *
          cyclicCharacterCoefficient j left) *
        ∑ r : ZMod n, conj (cyclicCharacter j r) * right r := by
      symm
      exact Finset.mul_sum
        (Finset.univ : Finset (ZMod n))
        (fun r ↦ conj (cyclicCharacter j r) * right r)
        (conj ((n : ℂ)⁻¹ * cyclicCharacterCoefficient j left))
    _ = conj ((n : ℂ)⁻¹ * cyclicCharacterCoefficient j left) *
        cyclicCharacterCoefficient j right := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f970ba70d1eef2141b3aeb3e891de7fc25f8e0b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
