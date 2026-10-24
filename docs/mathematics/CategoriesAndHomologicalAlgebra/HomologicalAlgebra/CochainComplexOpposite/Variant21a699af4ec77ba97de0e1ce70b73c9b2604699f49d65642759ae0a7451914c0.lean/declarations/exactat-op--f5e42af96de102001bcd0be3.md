# exactAt_op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3dc57f99-a897-d558-f1d1-331049f81994",
  "kind": "lemma",
  "lexical_name": "exactAt_op",
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
  "slug": "exactat-op--f5e42af96de102001bcd0be3",
  "source": {
    "blob": "92e1321fe4880966b8716a8ded1b4c62112b2f30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 203,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplexOpposite/Variant21a699af4ec77ba97de0e1ce70b73c9b2604699f49d65642759ae0a7451914c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5e42af96de102001bcd0be3030311a6e5414f7db3a1ed99a3bbdcf755b45e42",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplexOpposite/Variant21a699af4ec77ba97de0e1ce70b73c9b2604699f49d65642759ae0a7451914c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dc57f99-a897-d558-f1d1-331049f81994`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exactAt_op {K : CochainComplex C ℤ} {n : ℤ} (hK : K.ExactAt n)
    (m : ℤ) (hm : n + m = 0 := by lia) :
    ((opEquivalence C).functor.obj (op K)).ExactAt m := by
  obtain rfl : n = -m := by lia
  rw [HomologicalComplex.exactAt_iff' _ (m - 1) m (m + 1) (by simp) (by simp),
    ← ShortComplex.exact_unop_iff]
  rwa [HomologicalComplex.exactAt_iff' _ (-(m + 1)) (-m) (-(m - 1)) (by grind [prev])
    (by grind [next])] at hK

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplexOpposite/Variant21a699af4ec77ba97de0e1ce70b73c9b2604699f49d65642759ae0a7451914c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplexOpposite/Variant21a699af4ec77ba97de0e1ce70b73c9b2604699f49d65642759ae0a7451914c0.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92e1321fe4880966b8716a8ded1b4c62112b2f30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
