# invMulSubgroup_eq_mul_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:661338dc-1aed-422a-563c-847d7a27af79",
  "kind": "lemma",
  "lexical_name": "invMulSubgroup_eq_mul_inv",
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
  "slug": "invmulsubgroup-eq-mul-inv--ebc3aa57fe1b9b90058e49ac",
  "source": {
    "blob": "adec808b853dd7c901a9c8ad0f965d0a5e9f2cfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 187,
    "path": "GRWTSK/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebc3aa57fe1b9b90058e49ac97648dff3ffe7ef9f402af07fd1fb45c5b373cbf",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:661338dc-1aed-422a-563c-847d7a27af79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma invMulSubgroup_eq_mul_inv (A : Finset G) (h) : (invMulSubgroup A h : Set G) = A * A⁻¹ := by
  rw [invMulSubgroup_eq_inv_mul, eq_comm]
  norm_cast
  exact mul_inv_eq_inv_mul_of_doubling_lt_two (by qify at h ⊢; linarith)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adec808b853dd7c901a9c8ad0f965d0a5e9f2cfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
