# gramMinus_posDef

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52c76d57-5ef8-b02c-e6d6-70aba85dd007",
  "kind": "theorem",
  "lexical_name": "gramMinus_posDef",
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
  "slug": "gramminus-posdef--80c1f09c36f1861863ae8c4f",
  "source": {
    "blob": "a7b6c75c02d94f46249cb5bae07379aa0b0eb881",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 66,
    "path": "GRWTSK/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80c1f09c36f1861863ae8c4f57ed6cf40375b39e7a00e0f4761123b803389e79",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52c76d57-5ef8-b02c-e6d6-70aba85dd007`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gramMinus_posDef : gramMinus.PosDef := by
  apply Matrix.PosDef.of_dotProduct_mulVec_pos gramMinus_hermitian
  intro x hx
  rw [gramMinus_energy]
  nlinarith [sum_sq_pos hx,sq_nonneg (x 0+x 1),sq_nonneg (x 1+x 2),sq_nonneg (x 2-x 0)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7b6c75c02d94f46249cb5bae07379aa0b0eb881` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
