# ContinuousLinearMap.ofHomothety

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25ddacd68719510413f445d395dcd3ee81eed9de73f84f23ac26d8e0ce979d51",
  "kind": "def",
  "lexical_name": "ContinuousLinearMap.ofHomothety",
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
  "slug": "continuouslinearmap-ofhomothety--720ec6fddb191fcfe441d295",
  "source": {
    "blob": "82416d2e646d83a4509dcd38da4884e070746c90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 176,
    "path": "GRWTSK/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:720ec6fddb191fcfe441d29556dad504f682a38a0d6910b20a854a73093094e9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25ddacd68719510413f445d395dcd3ee81eed9de73f84f23ac26d8e0ce979d51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ContinuousLinearMap.ofHomothety (f : E →ₛₗ[σ] F) (a : ℝ) (hf : ∀ x, ‖f x‖ = a * ‖x‖) :
    E →SL[σ] F :=
  f.mkContinuous a fun x => le_of_eq (hf x)

variable {σ₂₁ : 𝕜₂ →+* 𝕜} [RingHomInvPair σ σ₂₁] [RingHomInvPair σ₂₁ σ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82416d2e646d83a4509dcd38da4884e070746c90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
