# trace_prodMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e058c40-cd6e-87b1-1a1f-8331707c3011",
  "kind": "theorem",
  "lexical_name": "trace_prodMap",
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
  "slug": "trace-prodmap--4dba5b98e1bbb7ba1ef86c87",
  "source": {
    "blob": "95fc2cff42ba059c3818fb3a4aba5da9382fbf71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 216,
    "path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dba5b98e1bbb7ba1ef86c87d0dcfc7773cb91f39bc0dfefa5d99a711e49239e",
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

Occurrence: `result:0e058c40-cd6e-87b1-1a1f-8331707c3011`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trace_prodMap :
    trace R (M × N) ∘ₗ prodMapLinear R M N M N R =
      (coprod id id : R × R →ₗ[R] R) ∘ₗ prodMap (trace R M) (trace R N) := by
  let e := (dualTensorHomEquiv R M M).prodCongr (dualTensorHomEquiv R N N)
  have h : Function.Surjective e.toLinearMap := e.surjective
  refine (cancel_right h).1 ?_
  ext <;> simp [e]

variable {R M N P}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95fc2cff42ba059c3818fb3a4aba5da9382fbf71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
