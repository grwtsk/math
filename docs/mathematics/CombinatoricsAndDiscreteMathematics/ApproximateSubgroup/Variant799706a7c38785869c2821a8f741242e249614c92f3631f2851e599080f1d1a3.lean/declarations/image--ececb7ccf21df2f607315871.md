# image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8777d1a5-a646-b8b0-3f89-68691e392ada",
  "kind": "lemma",
  "lexical_name": "image",
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
  "slug": "image--ececb7ccf21df2f607315871",
  "source": {
    "blob": "c1ff56a827f718bdf3d50a3c4fafa7bdb781cad7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ececb7ccf21df2f607315871028a43ee3a0758283ebef08616ceab600f98ece7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8777d1a5-a646-b8b0-3f89-68691e392ada`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma image {F H : Type*} [Group H] [FunLike F G H] [MonoidHomClass F G H] (f : F)
    (hA : IsApproximateSubgroup K A) : IsApproximateSubgroup K (f '' A) where
  one_mem := ⟨1, hA.one_mem, map_one _⟩
  inv_eq_self := by simp [← Set.image_inv, hA.inv_eq_self]
  sq_covBySMul := by
    classical
    obtain ⟨F, hF, hAF⟩ := hA.sq_covBySMul
    refine ⟨F.image f, ?_, ?_⟩
    · calc
        (#(F.image f) : ℝ) ≤ #F := mod_cast F.card_image_le
        _ ≤ K := hF
    · simp only [← Set.image_pow, Finset.coe_image, ← Set.image_mul, smul_eq_mul] at hAF ⊢
      gcongr

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1ff56a827f718bdf3d50a3c4fafa7bdb781cad7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
