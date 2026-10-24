# _root_.GRWTSK.Algebra.LinearAlgebra.MatrixToLinearMapPrimeAux.Variantf9b238d5ac2c4fb9ece8539d0d637e9cfc4a5d8e6a96240786cf78a0198c69e6.Matrix.Nondegenerate.toLinearMap₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be6d41bc-a13a-c9e0-9b3a-e9121955a2ca",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.MatrixToLinearMapPrimeAux.Variantf9b238d5ac2c4fb9ece8539d0d637e9cfc4a5d8e6a96240786cf78a0198c69e6.Matrix.Nondegenerate.toLinearMap₂",
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
  "slug": "root-grwtsk-algebra-linearalgebra-matrixtolinearmapprimeaux-variantf9b23--8821161afdd3e102a0588c25",
  "source": {
    "blob": "16059923752c0ee67c34f06507385927faaedb49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 714,
    "line": 709,
    "path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variantb517bf3a5de848c8faffa66dfa20a3b993058651d10c02ee0a0770aed3de001a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8821161afdd3e102a0588c258e8be3360df094c01a5c8a315265957be7e2a260",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SesquilinearForm/Variantb517bf3a5de848c8faffa66dfa20a3b993058651d10c02ee0a0770aed3de001a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be6d41bc-a13a-c9e0-9b3a-e9121955a2ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 709–714.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.MatrixToLinearMapPrimeAux.Variantf9b238d5ac2c4fb9ece8539d0d637e9cfc4a5d8e6a96240786cf78a0198c69e6.Matrix.Nondegenerate.toLinearMap₂ {M : Matrix ι ι R₁} (h : M.Nondegenerate)
    (b : Basis ι R₁ M₁) : (toLinearMap₂ b b M).SeparatingLeft :=
  (Matrix.separatingLeft_toLinearMap₂'_iff_separatingLeft_toLinearMap₂ b).mp h.toLinearMap₂'
#align matrix.nondegenerate.to_linear_map₂ Matrix.Nondegenerate.toLinearMap₂

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SesquilinearForm/Variantb517bf3a5de848c8faffa66dfa20a3b993058651d10c02ee0a0770aed3de001a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variantb517bf3a5de848c8faffa66dfa20a3b993058651d10c02ee0a0770aed3de001a.lean#L709).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16059923752c0ee67c34f06507385927faaedb49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
