# toNNReal_add_add_neg_add_neg_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af714ba4-f05e-6913-fe5e-cb180aff73fc",
  "kind": "lemma",
  "lexical_name": "toNNReal_add_add_neg_add_neg_eq",
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
  "slug": "tonnreal-add-add-neg-add-neg-eq--af1247fe298859b8ecaf1cb1",
  "source": {
    "blob": "7b38f1476f3121f8b92478b4bb206ba7f2640c61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 282,
    "path": "GRWTSK/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af1247fe298859b8ecaf1cb1382972a81a96d6478ee8f3e53ce7e127af7adcbf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af714ba4-f05e-6913-fe5e-cb180aff73fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toNNReal_add_add_neg_add_neg_eq (f g : C(X, ℝ)₀) :
    ((f + g).toNNReal + (-f).toNNReal + (-g).toNNReal) =
      ((-(f + g)).toNNReal + f.toNNReal + g.toNNReal) := by
  apply toContinuousMap_injective
  simpa only [← toContinuousMapHom_apply, map_add, map_mul, map_neg, toContinuousMapHom_toNNReal]
    using (f : C(X, ℝ)).toNNReal_add_add_neg_add_neg_eq g

end ContinuousMapZero

variable {A : Type*} [NonUnitalRing A] [StarRing A] [Module ℝ A]

namespace NonUnitalStarAlgHom

open ContinuousMapZero

section IsTopologicalRing

variable [TopologicalSpace A] [IsTopologicalRing A]

/-- Given a non-unital star `ℝ≥0`-algebra homomorphism `φ` from `C(X, ℝ≥0)₀` into a non-unital
`ℝ`-algebra `A`, this is the unique extension of `φ` from `C(X, ℝ)₀` to `A` as a non-unital
star `ℝ`-algebra homomorphism. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b38f1476f3121f8b92478b4bb206ba7f2640c61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
