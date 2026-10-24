# _root_.GRWTSK.Algebra.LinearAlgebra.TraceAux.Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.Matrix.trace_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6151da9f-5ed7-cc6f-ceff-92d71267ae8a",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.TraceAux.Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.Matrix.trace_map",
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
  "slug": "root-grwtsk-algebra-linearalgebra-traceaux-variant826685b1dd321fa7b3cfa5--93461ac22eaf43ee44a82ce9",
  "source": {
    "blob": "95fc2cff42ba059c3818fb3a4aba5da9382fbf71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 321,
    "path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93461ac22eaf43ee44a82ce9886ea90cc0f5258511ce453b3133e217a85337e1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6151da9f-5ed7-cc6f-ceff-92d71267ae8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem _root_.GRWTSK.Algebra.LinearAlgebra.TraceAux.Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.Matrix.trace_map {K m n : Type*} [Field K] [Fintype m] [Fintype n]
    [DecidableEq m] [DecidableEq n] {F : Type*} [EquivLike F (Matrix m m K) (Matrix n n K)]
    [AlgEquivClass F K _ _] (f : F) (x : Matrix m m K) : (f x).trace = x.trace := by
  simpa [toMatrixAlgEquiv', Matrix.toLinAlgEquiv'] using
    LinearMap.trace_map ((Matrix.toLinAlgEquiv'.symm.trans
      (AlgEquiv.ofClass f)).trans Matrix.toLinAlgEquiv') x.toLin'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95fc2cff42ba059c3818fb3a4aba5da9382fbf71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
