# _root_.GRWTSK.Algebra.LinearAlgebra.Normalizer.Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.LieIdeal.idealizer_eq_normalizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b189a10b-55af-f792-0453-4b612abe2e1e",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.Normalizer.Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.LieIdeal.idealizer_eq_normalizer",
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
  "slug": "root-grwtsk-algebra-linearalgebra-normalizer-varianta91be108fbab58659b14--815e5df8447edb448a86aab0",
  "source": {
    "blob": "f1b67066f583934d52290c38a6e88e9c2970d536",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 115,
    "path": "GRWTSK/Algebra/LinearAlgebra/Normalizer/Variant1ec377a28f5086a996624b513fb4b283ea64c3a473efe7f0d7300e0d99c8bda4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:815e5df8447edb448a86aab0b8ebdf25155dd235c28554027d8d30ec2ba5de30",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Normalizer/Variant1ec377a28f5086a996624b513fb4b283ea64c3a473efe7f0d7300e0d99c8bda4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b189a10b-55af-f792-0453-4b612abe2e1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.LinearAlgebra.Normalizer.Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.LieIdeal.idealizer_eq_normalizer (I : LieIdeal R L) :
    I.idealizer = I.normalizer := by
  ext x; exact forall_congr' fun y ↦ by simp only [← lie_skew x y, neg_mem_iff]

end LieSubmodule

namespace LieSubalgebra

variable (H : LieSubalgebra R L)

/-- Regarding a Lie subalgebra `H ⊆ L` as a module over itself, its normalizer is in fact a Lie
subalgebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Normalizer/Variant1ec377a28f5086a996624b513fb4b283ea64c3a473efe7f0d7300e0d99c8bda4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Normalizer/Variant1ec377a28f5086a996624b513fb4b283ea64c3a473efe7f0d7300e0d99c8bda4.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1b67066f583934d52290c38a6e88e9c2970d536` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
