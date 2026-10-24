# coefficientMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb4f4b985ddecfb438d68ac701d9e5c57d3a855ce179c5ccdd5fd8482edc40a6",
  "kind": "def",
  "lexical_name": "coefficientMul",
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
  "slug": "coefficientmul--ab50e8f90c29fd730386f157",
  "source": {
    "blob": "edee2ce00089a3bb2b0959021be4d935256ed327",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 27,
    "path": "GRWTSK/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab50e8f90c29fd730386f1572b69046cd562c9dbdf44cee4ff3d499c2ccfbc1e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb4f4b985ddecfb438d68ac701d9e5c57d3a855ce179c5ccdd5fd8482edc40a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coefficientMul : E ⊗[ℚ] E →ₗ[ℚ] E :=
  _root_.TensorProduct.lift {
    toFun := fun a => {
      toFun := fun b => a * b
      map_add' := by intros; simp [mul_add]
      map_smul' := by
        intro q b
        simp [Algebra.smul_def, mul_assoc, mul_comm]
    }
    map_add' := by
      intro a b
      ext x
      exact add_mul a b x
    map_smul' := by
      intro q a
      ext x
      simp [Algebra.smul_def, mul_assoc, mul_left_comm, mul_comm]
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edee2ce00089a3bb2b0959021be4d935256ed327` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
