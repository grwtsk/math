# cyclicInnerProduct_projector_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afcb5b95-afad-0df5-43c3-b0bf98c2c476",
  "kind": "theorem",
  "lexical_name": "cyclicInnerProduct_projector_right",
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
  "slug": "cyclicinnerproduct-projector-right--45273da27337eeb7d21be0cb",
  "source": {
    "blob": "47d533bdb68501f73d0d11b2b5cb53627a3a16d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 144,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant52b1fd786310d86c94e73e5b7417ec3ec5edcc790c8b15ce2b57bcdb3c87b4c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45273da27337eeb7d21be0cbfba79929d2aaee3d0c2b0b007820c6e2cfc75f13",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant52b1fd786310d86c94e73e5b7417ec3ec5edcc790c8b15ce2b57bcdb3c87b4c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afcb5b95-afad-0df5-43c3-b0bf98c2c476`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cyclicInnerProduct_projector_right
    (j : ZMod n) (left right : CyclicSignal n) :
    cyclicInnerProduct left (cyclicCharacterProjector j right) =
      ((n : ℂ)⁻¹ * cyclicCharacterCoefficient j right) *
        conj (cyclicCharacterCoefficient j left) := by
  classical
  unfold cyclicInnerProduct cyclicCharacterProjector
  calc
    (∑ r : ZMod n,
        conj (left r) *
          ((n : ℂ)⁻¹ * cyclicCharacter j r *
            cyclicCharacterCoefficient j right)) =
        ∑ r : ZMod n,
          ((n : ℂ)⁻¹ *
            cyclicCharacterCoefficient j right) *
            (conj (left r) * cyclicCharacter j r) := by
      apply Finset.sum_congr rfl
      intro r _
      ring
    _ = ((n : ℂ)⁻¹ *
          cyclicCharacterCoefficient j right) *
        ∑ r : ZMod n, conj (left r) * cyclicCharacter j r := by
      symm
      exact Finset.mul_sum
        (Finset.univ : Finset (ZMod n))
        (fun r ↦ conj (left r) * cyclicCharacter j r)
        ((n : ℂ)⁻¹ * cyclicCharacterCoefficient j right)
    _ = ((n : ℂ)⁻¹ * cyclicCharacterCoefficient j right) *
        conj (cyclicCharacterCoefficient j left) := by
      rw [conj_cyclicCharacterCoefficient]

/-- Character projectors are self-adjoint for the finite counting inner product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant52b1fd786310d86c94e73e5b7417ec3ec5edcc790c8b15ce2b57bcdb3c87b4c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant52b1fd786310d86c94e73e5b7417ec3ec5edcc790c8b15ce2b57bcdb3c87b4c2.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47d533bdb68501f73d0d11b2b5cb53627a3a16d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
