# isIntegral_isStableUnderBaseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2792abde-c33e-6833-54b6-4df743d2c31f",
  "kind": "theorem",
  "lexical_name": "isIntegral_isStableUnderBaseChange",
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
  "slug": "isintegral-isstableunderbasechange--41d558a5ad91aeb995f0cce8",
  "source": {
    "blob": "24ca1b6eb3926c566fe749cd58cc094dbd5e2733",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 39,
    "path": "GRWTSK/Algebra/Integral/Variant9cb9dc8ea05ecd6c48df5abbe49d3ceac83b757b64cc02d204fedb483120829d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41d558a5ad91aeb995f0cce8dbd62ebc5a4293529260903ec891c0234f869c81",
  "verification": {
    "reference": "docs/verification/Algebra/Integral/Variant9cb9dc8ea05ecd6c48df5abbe49d3ceac83b757b64cc02d204fedb483120829d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2792abde-c33e-6833-54b6-4df743d2c31f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIntegral_isStableUnderBaseChange : IsStableUnderBaseChange fun f => f.IsIntegral := by
  refine IsStableUnderBaseChange.mk isIntegral_respectsIso ?_
  introv h x
  refine TensorProduct.induction_on x ?_ ?_ ?_
  · apply isIntegral_zero
  · intro x y; exact IsIntegral.tmul x (h y)
  · intro x y hx hy; exact IsIntegral.add hx hy

open Polynomial in
/-- `S` is an integral `R`-algebra if there exists a set `{ r }` that
  spans `R` such that each `Sᵣ` is an integral `Rᵣ`-algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Integral/Variant9cb9dc8ea05ecd6c48df5abbe49d3ceac83b757b64cc02d204fedb483120829d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integral/Variant9cb9dc8ea05ecd6c48df5abbe49d3ceac83b757b64cc02d204fedb483120829d.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24ca1b6eb3926c566fe749cd58cc094dbd5e2733` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
