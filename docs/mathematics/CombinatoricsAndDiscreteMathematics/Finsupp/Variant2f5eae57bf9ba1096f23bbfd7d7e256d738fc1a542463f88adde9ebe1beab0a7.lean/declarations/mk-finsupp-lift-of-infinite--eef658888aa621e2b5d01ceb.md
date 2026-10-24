# mk_finsupp_lift_of_infinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64ae0180-1848-9196-51ad-e2b11c4613c8",
  "kind": "theorem",
  "lexical_name": "mk_finsupp_lift_of_infinite",
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
  "slug": "mk-finsupp-lift-of-infinite--eef658888aa621e2b5d01ceb",
  "source": {
    "blob": "40a714f5c4591d00fd0baea46c9d1d29801f9176",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 33,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finsupp/Variant2f5eae57bf9ba1096f23bbfd7d7e256d738fc1a542463f88adde9ebe1beab0a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eef658888aa621e2b5d01ceb3510b269b7803ccdd2d34d8e86bf44875a5f7522",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finsupp/Variant2f5eae57bf9ba1096f23bbfd7d7e256d738fc1a542463f88adde9ebe1beab0a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64ae0180-1848-9196-51ad-e2b11c4613c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_finsupp_lift_of_infinite (α : Type u) (β : Type v) [Infinite α] [Zero β] [Nontrivial β] :
    #(α →₀ β) = max (lift.{v} #α) (lift.{u} #β) := by
  apply le_antisymm
  · calc
      #(α →₀ β) ≤ #(Finset (α × β)) := mk_le_of_injective (Finsupp.graph_injective α β)
      _ = #(α × β) := mk_finset_of_infinite _
      _ = max (lift.{v} #α) (lift.{u} #β) := by
        rw [mk_prod, mul_eq_max_of_aleph0_le_left] <;> simp

  · apply max_le <;> rw [← lift_id #(α →₀ β), ← lift_umax]
    · obtain ⟨b, hb⟩ := exists_ne (0 : β)
      exact lift_mk_le.{v}.2 ⟨⟨_, Finsupp.single_left_injective hb⟩⟩
    · inhabit α
      exact lift_mk_le.{u}.2 ⟨⟨_, Finsupp.single_injective default⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finsupp/Variant2f5eae57bf9ba1096f23bbfd7d7e256d738fc1a542463f88adde9ebe1beab0a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finsupp/Variant2f5eae57bf9ba1096f23bbfd7d7e256d738fc1a542463f88adde9ebe1beab0a7.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40a714f5c4591d00fd0baea46c9d1d29801f9176` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
