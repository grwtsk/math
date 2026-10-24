# trace_h_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:178e7f63-f5aa-7150-0366-4d0c2d8405b2",
  "kind": "lemma",
  "lexical_name": "trace_h_eq_zero",
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
  "slug": "trace-h-eq-zero--1d24a5fe38e873cc7c22f801",
  "source": {
    "blob": "c750192c7811a4fb2f6beb84906214afdb067372",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 159,
    "path": "GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d24a5fe38e873cc7c22f801b67d8da6410aae55902be3e8309cd079e4f55b5c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:178e7f63-f5aa-7150-0366-4d0c2d8405b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma trace_h_eq_zero :
    (h i).trace = 0 := by
  classical
  let _i := P.indexNeg
  suffices ∑ j, P.pairingIn ℤ j i = 0 by
    simp only [h_eq_diagonal, Matrix.trace_diagonal, Fintype.sum_sum_type, Finset.univ_eq_attach,
      Sum.elim_inl, Pi.zero_apply, Finset.sum_const_zero, Sum.elim_inr, zero_add]
    norm_cast
  suffices ∑ j, P.pairingIn ℤ (-j) i = ∑ j, P.pairingIn ℤ j i from
    eq_zero_of_neg_eq <| by simpa using this
  let σ : ι ≃ ι := Function.Involutive.toPerm _ neg_involutive
  exact σ.sum_comp (P.pairingIn ℤ · i)

attribute [local instance 100] LieRing.ofAssociativeRing

open LinearMap LieModule in
/-- This is the main result of lemma 4.1 from [Geck](Geck2017). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c750192c7811a4fb2f6beb84906214afdb067372` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
