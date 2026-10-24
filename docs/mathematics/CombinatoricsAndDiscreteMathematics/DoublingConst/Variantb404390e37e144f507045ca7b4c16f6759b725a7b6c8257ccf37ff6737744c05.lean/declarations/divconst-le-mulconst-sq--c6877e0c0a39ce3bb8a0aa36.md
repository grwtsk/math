# divConst_le_mulConst_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fa37d9f-4086-5d63-8ac7-213ec427592a",
  "kind": "lemma",
  "lexical_name": "divConst_le_mulConst_sq",
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
  "slug": "divconst-le-mulconst-sq--c6877e0c0a39ce3bb8a0aa36",
  "source": {
    "blob": "08b34daa6b3d75843e0179be0dfe24644b81d0bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 195,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6877e0c0a39ce3bb8a0aa361dd611273df58a2ccb9b25733bbb190af06a6ba9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fa37d9f-4086-5d63-8ac7-213ec427592a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma divConst_le_mulConst_sq : δₘ[A] ≤ σₘ[A] ^ 2 := by
  obtain rfl | hA' := A.eq_empty_or_nonempty
  · simp
  refine le_of_mul_le_mul_right ?_ (by positivity : (0 : ℚ≥0) < #A * #A)
  calc
    _ = #(A / A) * (#A : ℚ≥0) := by rw [← mul_assoc, divConst_mul_card]
    _ ≤ #(A * A) * #(A * A) := by norm_cast; exact ruzsa_triangle_inequality_div_mul_mul ..
    _ = _ := by rw [← mulConst_mul_card]; ring

end Group

open scoped Combinatorics.Additive

section CommGroup
variable {G : Type*} [CommGroup G] [DecidableEq G] {A B : Finset G}

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08b34daa6b3d75843e0179be0dfe24644b81d0bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
