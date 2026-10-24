# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a1d2a3f5e52d5842e8825229158719670dfd0e144ec757d1eb41fc4316df3de",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--11ae5822c0505e3cb6dcb7d2",
  "source": {
    "blob": "31fe0fc9c2c7e6597ed6a376578344e123b2aa62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 37,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Checks/Positive/Moments.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11ae5822c0505e3cb6dcb7d2d636de98b93abe1c35f85a137bd1c7a5cd75a79a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Checks/Positive/Moments.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a1d2a3f5e52d5842e8825229158719670dfd0e144ec757d1eb41fc4316df3de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : (∑ d ∈ Finset.Icc 1 4,
    |ArithmeticFunction.moebius d| *
      commonDivisorMoment 4 d (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1)) = 7 := by
  have h1 : commonDivisorMoment 4 1 (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) = 6 := by decide
  have h2 : commonDivisorMoment 4 2 (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) = 1 := by decide
  have h3 : commonDivisorMoment 4 3 (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) = 0 := by decide
  have h4 : commonDivisorMoment 4 4 (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) = 0 := by decide
  norm_num [show Finset.Icc 1 4 = {1, 2, 3, 4} by decide, h1, h2, h3, h4,
    ArithmeticFunction.moebius_apply_one,
    ArithmeticFunction.moebius_apply_prime (by decide : Nat.Prime 2)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Checks/Positive/Moments.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Checks/Positive/Moments.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31fe0fc9c2c7e6597ed6a376578344e123b2aa62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
