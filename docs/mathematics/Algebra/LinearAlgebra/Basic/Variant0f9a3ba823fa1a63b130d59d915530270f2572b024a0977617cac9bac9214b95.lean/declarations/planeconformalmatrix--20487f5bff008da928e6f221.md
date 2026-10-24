# planeConformalMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:388418545a4a976500462c996a6e8df7911778da7b07669abe6c17f0298fe461",
  "kind": "def",
  "lexical_name": "planeConformalMatrix",
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
  "slug": "planeconformalmatrix--20487f5bff008da928e6f221",
  "source": {
    "blob": "bcf579c5fd1f56d1018585b48a979bc94b440dc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 34,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant0f9a3ba823fa1a63b130d59d915530270f2572b024a0977617cac9bac9214b95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20487f5bff008da928e6f221498cced025149d713c2764dfc65989c767b84d92",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant0f9a3ba823fa1a63b130d59d915530270f2572b024a0977617cac9bac9214b95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:388418545a4a976500462c996a6e8df7911778da7b07669abe6c17f0298fe461`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def planeConformalMatrix {R} [Field R] (a b : R) (hab : a ^ 2 + b ^ 2 ≠ 0) :
    Matrix.GeneralLinearGroup (Fin 2) R :=
  GeneralLinearGroup.mkOfDetNeZero !![a, -b; b, a] (by simpa [det_fin_two, sq] using hab)

/- TODO: Add Iwasawa matrices `n_x=!![1,x; 0,1]`, `a_t=!![exp(t/2),0;0,exp(-t/2)]` and
  `k_θ=!![cos θ, sin θ; -sin θ, cos θ]`
-/
end Examples

namespace GeneralLinearGroup

section Center

variable {R n : Type*} [Fintype n] [DecidableEq n] [CommRing R]

/-- The center of `GL n R` consists of scalar matrices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant0f9a3ba823fa1a63b130d59d915530270f2572b024a0977617cac9bac9214b95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant0f9a3ba823fa1a63b130d59d915530270f2572b024a0977617cac9bac9214b95.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcf579c5fd1f56d1018585b48a979bc94b440dc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
