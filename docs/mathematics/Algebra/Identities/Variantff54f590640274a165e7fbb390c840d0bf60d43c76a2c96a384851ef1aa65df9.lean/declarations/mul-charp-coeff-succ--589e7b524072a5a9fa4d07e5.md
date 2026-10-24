# mul_charP_coeff_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8952e0e0-ef49-b4d6-2bd3-e4c410ee1aff",
  "kind": "theorem",
  "lexical_name": "mul_charP_coeff_succ",
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
  "slug": "mul-charp-coeff-succ--589e7b524072a5a9fa4d07e5",
  "source": {
    "blob": "15fd056a63ae5c9613bb1c69ec4675d1c8897f0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 121,
    "path": "GRWTSK/Algebra/Identities/Variantff54f590640274a165e7fbb390c840d0bf60d43c76a2c96a384851ef1aa65df9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:589e7b524072a5a9fa4d07e53ac6095f5df2b610dd4f38f674dd5d4986075670",
  "verification": {
    "reference": "docs/verification/Algebra/Identities/Variantff54f590640274a165e7fbb390c840d0bf60d43c76a2c96a384851ef1aa65df9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8952e0e0-ef49-b4d6-2bd3-e4c410ee1aff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_charP_coeff_succ [CharP R p] (x : 𝕎 R) (i : ℕ) :
    (x * p).coeff (i + 1) = x.coeff i ^ p := by
  rw [← frobenius_verschiebung, coeff_frobenius_charP, verschiebung_coeff_succ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Identities/Variantff54f590640274a165e7fbb390c840d0bf60d43c76a2c96a384851ef1aa65df9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Identities/Variantff54f590640274a165e7fbb390c840d0bf60d43c76a2c96a384851ef1aa65df9.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15fd056a63ae5c9613bb1c69ec4675d1c8897f0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
