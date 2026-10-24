# leftShift_rightShift_eq_negOnePow_rightShift_leftShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca8645b3-82c2-6672-db24-b576cea038b2",
  "kind": "lemma",
  "lexical_name": "leftShift_rightShift_eq_negOnePow_rightShift_leftShift",
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
  "slug": "leftshift-rightshift-eq-negonepow-rightshift-leftshift--4a203636ef56d9a1fea2808d",
  "source": {
    "blob": "e270d8e116357ca726eb6f16c52d9c58d5eedc84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 495,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantc5d7fb83954d4239f978e4e414a46ca4a4e5ccc7cee446ee2fffb8b5c0b3cc82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a203636ef56d9a1fea2808df136f5382502fe63766cdb12f8d574652205997c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantc5d7fb83954d4239f978e4e414a46ca4a4e5ccc7cee446ee2fffb8b5c0b3cc82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca8645b3-82c2-6672-db24-b576cea038b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leftShift_rightShift_eq_negOnePow_rightShift_leftShift
    (a n' n'' : ℤ) (hn' : n' + a = n) (hn'' : n + a = n'') :
    (γ.rightShift a n' hn').leftShift a n hn' =
      a.negOnePow • (γ.leftShift a n'' hn'').rightShift a n hn'' := by
  rw [leftShift_rightShift, rightShift_leftShift, smul_smul, ← hn'', add_comm n a, mul_add,
    Int.negOnePow_add, Int.negOnePow_add, Int.negOnePow_add, Int.negOnePow_mul_self,
    ← mul_assoc, ← mul_assoc, Int.units_mul_self, one_mul]

end Cochain

namespace Cocycle

/-- The map `Cocycle K L n → Cocycle K (L⟦a⟧) n'` when `n' + a = n`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantc5d7fb83954d4239f978e4e414a46ca4a4e5ccc7cee446ee2fffb8b5c0b3cc82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantc5d7fb83954d4239f978e4e414a46ca4a4e5ccc7cee446ee2fffb8b5c0b3cc82.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e270d8e116357ca726eb6f16c52d9c58d5eedc84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
