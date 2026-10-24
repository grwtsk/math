# step_leftInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3909923d-6347-1c6e-5a7a-637ddf7336fb",
  "kind": "theorem",
  "lexical_name": "step_leftInverse",
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
  "slug": "step-leftinverse--12f15412d96eebe699871e82",
  "source": {
    "blob": "bde4095259dfca0b25519323409d43125a8eab91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 324,
    "path": "GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12f15412d96eebe699871e827b1fcf9f23914af14873de5b85bdc7703a4df90e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3909923d-6347-1c6e-5a7a-637ddf7336fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem step_leftInverse (p : Weights ι) (b : ι → Bool) :
    Function.LeftInverse (inverseStep p b) (step p b) := by
  intro x
  change phase b (diffuse p (diffuse p (phase b x))) = x
  rw [diffuse_involutive p (phase b x), phase_involutive b x]

/-- Law 10: the opposite inverse direction is also explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bde4095259dfca0b25519323409d43125a8eab91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
