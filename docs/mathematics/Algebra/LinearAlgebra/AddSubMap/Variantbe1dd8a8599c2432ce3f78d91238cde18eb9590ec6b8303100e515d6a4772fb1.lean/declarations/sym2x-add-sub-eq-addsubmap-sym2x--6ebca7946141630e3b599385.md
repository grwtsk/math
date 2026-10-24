# sym2x_add_sub_eq_addSubMap_sym2x

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2bf5a1fbb850966eb6252995608d6e1a4792e0dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be1dd8a8599c2432ce3f78d91238cde18eb9590ec6b8303100e515d6a4772fb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:068c82e1-c5a6-77ac-b3e2-ffd8b808c58e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:957eb688-b79e-79f4-2c35-a7922dd36cde",
  "kind": "lemma",
  "lexical_name": "sym2x_add_sub_eq_addSubMap_sym2x",
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
  "slug": "sym2x-add-sub-eq-addsubmap-sym2x--6ebca7946141630e3b599385",
  "source": {
    "blob": "2bf5a1fbb850966eb6252995608d6e1a4792e0dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 243,
    "path": "GRWTSK/Algebra/LinearAlgebra/AddSubMap/Variantbe1dd8a8599c2432ce3f78d91238cde18eb9590ec6b8303100e515d6a4772fb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ebca7946141630e3b599385bc552301d56b8ea3aa9477f49812ff0c91cafb7d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AddSubMap/Variantbe1dd8a8599c2432ce3f78d91238cde18eb9590ec6b8303100e515d6a4772fb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:957eb688-b79e-79f4-2c35-a7922dd36cde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sym2x_add_sub_eq_addSubMap_sym2x (P Q : W.Point) :
    ∃ t : F, t ≠ 0 ∧ t • sym2x (P + Q) (P - Q) = (addSubMap W · |>.eval <| sym2x P Q) := by
  rcases eq_or_ne P Q with rfl | hPQ
  · simpa using P.sym2x_add_self_zero
  rcases eq_or_ne Q (-P) with rfl | hPQ'
  · simpa [sym2x_comm] using P.sym2x_add_self_zero
  match P, Q with
  | P, 0 =>  exact ⟨1, one_ne_zero, by simpa using P.sym2x_self_eq_addSubMap⟩
  | 0, Q =>
    refine ⟨1, one_ne_zero, ?_⟩
    simpa [sym2x_comm] using Q.sym2x_self_eq_addSubMap
  | some xP yP hP, some xQ yQ hQ =>
    have hxPQ : xP ≠ xQ := fun Heq ↦ by grind only [X_eq_iff.mp Heq]
    refine ⟨(xP - xQ) ^ 2, pow_ne_zero 2 (sub_ne_zero_of_ne hxPQ), ?_⟩
    rw [addSubMap_sym2x_some_some, sym2x, xRep_add_of_X_ne hP hQ hxPQ,
      xRep_sub_of_X_ne hP hQ hxPQ, b₂, b₄, b₆, b₈]
    ext i : 1
    -- The following relations are needed for the `grobner` calls below.
    have HeqP := (W.equation_iff xP yP).mp hP.1
    have HeqQ := (W.equation_iff xQ yQ).mp hQ.1
    fin_cases i <;> simp [field] <;> grobner

end Field

end WeierstrassCurve.Affine.Point

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AddSubMap/Variantbe1dd8a8599c2432ce3f78d91238cde18eb9590ec6b8303100e515d6a4772fb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AddSubMap/Variantbe1dd8a8599c2432ce3f78d91238cde18eb9590ec6b8303100e515d6a4772fb1.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bf5a1fbb850966eb6252995608d6e1a4792e0dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
