# operatorEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0cf00d7ba7f7440c30dc46349ae5fef2828323098929c55a1b2ab13bf82b770d",
  "kind": "def",
  "lexical_name": "operatorEquiv",
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
  "slug": "operatorequiv--297bc227d86b918f64fb85d1",
  "source": {
    "blob": "2ee742c18a6c3a1f807bfe28da6354f6476ac662",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 70,
    "path": "GRWTSK/Algebra/RingTheory/WeightedInvolution.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:297bc227d86b918f64fb85d1ccd401f0ad64994083cbc6d1d09af6e7af863feb",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/WeightedInvolution.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0cf00d7ba7f7440c30dc46349ae5fef2828323098929c55a1b2ab13bf82b770d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def operatorEquiv (sigma : A →ₐ[R] A) (hsigma : Function.Involutive sigma)
    (u : A) (d e : R) (hd : u * sigma u = algebraMap R A d) (hde : d * e = 1)
    (k : ℕ) : A ≃ₗ[R] A where
  toLinearMap := operator sigma u k
  invFun f := e ^ k • operator sigma u k f
  left_inv f := by
    change e ^ k • operator sigma u k (operator sigma u k f) = f
    rw [operator_square sigma hsigma u d hd, smul_smul, ← mul_pow,
      mul_comm e d, hde, one_pow, one_smul]
  right_inv f := by
    change operator sigma u k (e ^ k • operator sigma u k f) = f
    rw [(operator sigma u k).map_smul, operator_square sigma hsigma u d hd,
      smul_smul, ← mul_pow, mul_comm e d, hde, one_pow, one_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/WeightedInvolution.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/WeightedInvolution.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ee742c18a6c3a1f807bfe28da6354f6476ac662` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
