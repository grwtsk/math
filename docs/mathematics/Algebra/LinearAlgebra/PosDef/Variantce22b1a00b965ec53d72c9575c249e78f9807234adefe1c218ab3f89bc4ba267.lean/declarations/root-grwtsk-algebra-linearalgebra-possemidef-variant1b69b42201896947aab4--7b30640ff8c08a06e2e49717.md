# _root_.GRWTSK.Algebra.LinearAlgebra.PosSemidef.Variant1b69b42201896947aab412c7ba340b51aad187ada7c1bcf0bd1545e8a3270acf.Matrix.posDef_diagonal_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db593a21-c266-66fa-248a-f1668fd281a4",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.PosSemidef.Variant1b69b42201896947aab412c7ba340b51aad187ada7c1bcf0bd1545e8a3270acf.Matrix.posDef_diagonal_iff",
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
  "slug": "root-grwtsk-algebra-linearalgebra-possemidef-variant1b69b42201896947aab4--7b30640ff8c08a06e2e49717",
  "source": {
    "blob": "07ac8a17c278a43c89ad4a5135c9bd8ceb339714",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 211,
    "path": "GRWTSK/Algebra/LinearAlgebra/PosDef/Variantce22b1a00b965ec53d72c9575c249e78f9807234adefe1c218ab3f89bc4ba267.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b30640ff8c08a06e2e4971701ef00fa8ae23841a851edf8fe1ed324f594b944",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PosDef/Variantce22b1a00b965ec53d72c9575c249e78f9807234adefe1c218ab3f89bc4ba267.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db593a21-c266-66fa-248a-f1668fd281a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.PosSemidef.Variant1b69b42201896947aab412c7ba340b51aad187ada7c1bcf0bd1545e8a3270acf.Matrix.posDef_diagonal_iff
    [StarOrderedRing R] [DecidableEq n] [NoZeroDivisors R] [Nontrivial R] {d : n → R} :
    PosDef (diagonal d) ↔ ∀ i, 0 < d i :=
  ⟨fun h i => by simpa using h.2 (x := .single i 1), .diagonal⟩

@[simp, nontriviality]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PosDef/Variantce22b1a00b965ec53d72c9575c249e78f9807234adefe1c218ab3f89bc4ba267.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PosDef/Variantce22b1a00b965ec53d72c9575c249e78f9807234adefe1c218ab3f89bc4ba267.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07ac8a17c278a43c89ad4a5135c9bd8ceb339714` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
