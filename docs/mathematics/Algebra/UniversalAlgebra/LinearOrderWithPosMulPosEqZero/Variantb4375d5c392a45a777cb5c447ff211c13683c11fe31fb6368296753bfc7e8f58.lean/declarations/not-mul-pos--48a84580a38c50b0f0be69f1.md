# not_mul_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb3057e1-7ec5-b7b9-0b4e-ac7cd5933914",
  "kind": "theorem",
  "lexical_name": "not_mul_pos",
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
  "slug": "not-mul-pos--48a84580a38c50b0f0be69f1",
  "source": {
    "blob": "e3582815740a1d81e80573a0f5b229f9965ad317",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 90,
    "path": "GRWTSK/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48a84580a38c50b0f0be69f1faac190f95bfcfc78590c6b3f0bcbbcf5004add4",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb3057e1-7ec5-b7b9-0b4e-ac7cd5933914`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_mul_pos : ¬∀ {M : Type} [LinearOrderedCommMonoidWithZero M],
    ∀ a b : M, 0 < a → 0 < b → 0 < a * b := by
  intro h
  specialize h ε ε (by boom) (by boom)
  exact (lt_irrefl 0 (h.trans_le (by boom))).elim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3582815740a1d81e80573a0f5b229f9965ad317` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
