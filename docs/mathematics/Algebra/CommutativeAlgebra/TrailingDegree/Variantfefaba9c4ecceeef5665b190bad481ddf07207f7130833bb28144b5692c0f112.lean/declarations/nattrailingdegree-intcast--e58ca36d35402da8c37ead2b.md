# natTrailingDegree_intCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5311e1a-a1ea-34f3-263e-4ea6f2f7e1ac",
  "kind": "theorem",
  "lexical_name": "natTrailingDegree_intCast",
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
  "slug": "nattrailingdegree-intcast--e58ca36d35402da8c37ead2b",
  "source": {
    "blob": "ad19bd6b4522bc80ba52468ae6627e916a302848",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 397,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/TrailingDegree/Variantfefaba9c4ecceeef5665b190bad481ddf07207f7130833bb28144b5692c0f112.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e58ca36d35402da8c37ead2bfeb1dabd5a3bb321f099ea5831d654729fa7d833",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/TrailingDegree/Variantfefaba9c4ecceeef5665b190bad481ddf07207f7130833bb28144b5692c0f112.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5311e1a-a1ea-34f3-263e-4ea6f2f7e1ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natTrailingDegree_intCast (n : ℤ) : natTrailingDegree (n : R[X]) = 0 := by
  simp only [← C_eq_intCast, natTrailingDegree_C]

end Ring

section Semiring

variable [Semiring R]

/-- The second-lowest coefficient, or 0 for constants -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/TrailingDegree/Variantfefaba9c4ecceeef5665b190bad481ddf07207f7130833bb28144b5692c0f112.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/TrailingDegree/Variantfefaba9c4ecceeef5665b190bad481ddf07207f7130833bb28144b5692c0f112.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad19bd6b4522bc80ba52468ae6627e916a302848` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
