# isUnit_transpose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43e4cab1-1add-a820-3791-fc03dba094cb",
  "kind": "lemma",
  "lexical_name": "isUnit_transpose",
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
  "slug": "isunit-transpose--9388d7c6b661b52db7fd497f",
  "source": {
    "blob": "eb92735d60b7f721e739089fdd61e8b5d82db1e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 107,
    "path": "GRWTSK/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9388d7c6b661b52db7fd497f0f0434464360adbeab244ef65c9af2c677d15259",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43e4cab1-1add-a820-3791-fc03dba094cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma isUnit_transpose : IsUnit Aᵀ ↔ IsUnit A := by
  simp only [← nonempty_invertible_iff_isUnit,
    (transposeInvertibleEquivInvertible A).nonempty_congr]

end CommSemiring

section Ring

section Woodbury

variable [Fintype m] [DecidableEq m] [Ring α]
    (A : Matrix n n α) (U : Matrix n m α) (C : Matrix m m α) (V : Matrix m n α)
    [Invertible A] [Invertible C] [Invertible (⅟ C + V * ⅟ A * U)]

-- No spaces around multiplication signs for better clarity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb92735d60b7f721e739089fdd61e8b5d82db1e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
