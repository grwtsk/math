# sum_antidiagonal_card_esymm_psum_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7a51428-4831-43b7-06bf-b6ce516bd478",
  "kind": "theorem",
  "lexical_name": "sum_antidiagonal_card_esymm_psum_eq_zero",
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
  "slug": "sum-antidiagonal-card-esymm-psum-eq-zero--89b7a85c36f72a01eb5004bb",
  "source": {
    "blob": "162ff87bb0c867897d0f1efa568abc8e43973c67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 245,
    "path": "GRWTSK/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89b7a85c36f72a01eb5004bb5b9a8e9c417b1d8300d23c2d1f6a41f624789af1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7a51428-4831-43b7-06bf-b6ce516bd478`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_antidiagonal_card_esymm_psum_eq_zero :
    ∑ a ∈ antidiagonal (Fintype.card σ), (-1) ^ a.fst * esymm σ R a.fst * psum σ R a.snd = 0 := by
  let k := Fintype.card σ
  suffices (-1 : MvPolynomial σ R) ^ (k + 1) *
      ∑ a ∈ antidiagonal k, (-1) ^ a.fst * esymm σ R a.fst * psum σ R a.snd = 0 by
    simpa using this
  simp [k, ← sum_filter_add_sum_filter_not (antidiagonal k) (fun a ↦ a.fst < k),
    ← mul_esymm_eq_sum, mul_add, ← mul_assoc, ← pow_add, mul_comm ↑k (esymm σ R k)]

/-- A version of Newton's identities which may be more useful in the case that we know the values of
the elementary symmetric polynomials and would like to calculate the values of the power sums. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NewtonIdentities/Varianta9516754ed4efe76a0ad0d38ef601a97fe7ce9b0db054854ebaaa94efee02ae4.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `162ff87bb0c867897d0f1efa568abc8e43973c67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
