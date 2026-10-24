# isUnit_aeval_of_isUnit_aeval_of_isNilpotent_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8673320-28a1-7821-c451-8eb65364745a",
  "kind": "lemma",
  "lexical_name": "isUnit_aeval_of_isUnit_aeval_of_isNilpotent_sub",
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
  "slug": "isunit-aeval-of-isunit-aeval-of-isnilpotent-sub--ab665717db5ceb57c8bf7ee0",
  "source": {
    "blob": "9760932f03826c06a559d6ec40aa400fa963e6eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 210,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab665717db5ceb57c8bf7ee0e268dcdce48603ea14585be036e220b1d1fadc93",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8673320-28a1-7821-c451-8eb65364745a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isUnit_aeval_of_isUnit_aeval_of_isNilpotent_sub
    (hb : IsUnit (aeval b P)) (hab : IsNilpotent (a - b)) :
    IsUnit (aeval a P) := by
  rw [← add_sub_cancel (aeval b P) (aeval a P)]
  refine IsNilpotent.isUnit_add_left_of_commute ?_ hb (Commute.all _ _)
  exact isNilpotent_aeval_sub_of_isNilpotent_sub P hab

end CommAlgebra

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9760932f03826c06a559d6ec40aa400fa963e6eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
