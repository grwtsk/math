# exists_height_avoiding_rectangleDivisor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee0df72a-4c92-3805-e705-d63097c5e4f9",
  "kind": "theorem",
  "lexical_name": "exists_height_avoiding_rectangleDivisor",
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
  "slug": "exists-height-avoiding-rectangledivisor--639b097c3f6ee9f6817f4a4c",
  "source": {
    "blob": "c57a0771ca0f3b82e36754c565ae4c31b21927cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 62,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RectangleDivisorAvoidance/Variantbb57deb67c892b0ca52ca390cd99f0c8ec16e54504cee93541366615cb62be26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:639b097c3f6ee9f6817f4a4cce7f2d4047cca44f17205881823d77acec819ea3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RectangleDivisorAvoidance/Variantbb57deb67c892b0ca52ca390cd99f0c8ec16e54504cee93541366615cb62be26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee0df72a-4c92-3805-e705-d63097c5e4f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_height_avoiding_rectangleDivisor
    {f : ℂ → ℂ} {z w : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w))
    {a b : ℝ} (hab : a < b) :
    ∃ t ∈ Set.Ioo a b,
      ∀ p ∈ rectangleDivisorSupportFinset f z w hf, p.im ≠ t := by
  obtain ⟨t, ht, hav⟩ :=
    exists_height_avoiding_finite (rectangleDivisor_support_finite hf) hab
  refine ⟨t, ht, ?_⟩
  intro p hp
  exact hav p ((mem_rectangleDivisorSupportFinset hf).mp hp)

/-- Select a vertical contour coordinate avoiding the divisor support on a
compact rectangle. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RectangleDivisorAvoidance/Variantbb57deb67c892b0ca52ca390cd99f0c8ec16e54504cee93541366615cb62be26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RectangleDivisorAvoidance/Variantbb57deb67c892b0ca52ca390cd99f0c8ec16e54504cee93541366615cb62be26.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c57a0771ca0f3b82e36754c565ae4c31b21927cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
