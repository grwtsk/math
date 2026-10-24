# Module.FaithfullyFlat.faithfulSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1946b54c0e7d704dd0b8c586e3383fb7eaf63d730855316d9bbe0fafc4193ed3",
  "kind": "instance",
  "lexical_name": "Module.FaithfullyFlat.faithfulSMul",
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
  "slug": "module-faithfullyflat-faithfulsmul--352f02d11e3c2b2bc406e80f",
  "source": {
    "blob": "283c4cf0a956dfeba81e210652ebcc48f2ec51ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 96,
    "path": "GRWTSK/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:352f02d11e3c2b2bc406e80f15d483fb29ce4a5a9beefaac5570bfdf8e25c1e9",
  "verification": {
    "reference": "docs/verification/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1946b54c0e7d704dd0b8c586e3383fb7eaf63d730855316d9bbe0fafc4193ed3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Module.FaithfullyFlat.faithfulSMul : FaithfulSMul A B := by
  constructor
  intro a₁ a₂ ha
  apply Module.FaithfullyFlat.tensorProduct_mk_injective (A := A) (B := B) A
  simp only [TensorProduct.mk_apply]
  rw [← mul_one a₁, ← mul_one a₂]
  simp only [← smul_eq_mul, ← TensorProduct.smul_tmul, ha (1 : B)]

open Algebra.TensorProduct in
/-- If `B` is a faithfully flat `A`-algebra, the preimage of the pushforward of any
ideal `I` is again `I`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `283c4cf0a956dfeba81e210652ebcc48f2ec51ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
