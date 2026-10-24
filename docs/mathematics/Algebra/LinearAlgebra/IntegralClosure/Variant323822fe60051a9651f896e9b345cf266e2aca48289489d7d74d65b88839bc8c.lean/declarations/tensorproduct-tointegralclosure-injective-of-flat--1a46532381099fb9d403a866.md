# TensorProduct.toIntegralClosure_injective_of_flat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:117f45ed-8021-8a54-4905-c57a81b164fc",
  "kind": "lemma",
  "lexical_name": "TensorProduct.toIntegralClosure_injective_of_flat",
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
  "slug": "tensorproduct-tointegralclosure-injective-of-flat--1a46532381099fb9d403a866",
  "source": {
    "blob": "dafcd035a18243fbde809cbb881a37dc98ce6b7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 58,
    "path": "GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a46532381099fb9d403a866fe41efc35979017d15d7f8ce7b2e3132a29f0aa9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:117f45ed-8021-8a54-4905-c57a81b164fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma TensorProduct.toIntegralClosure_injective_of_flat [Module.Flat R S] :
    Function.Injective (toIntegralClosure R S B) := by
  refine Function.Injective.of_comp (f := (integralClosure _ _).val) ?_
  rw [← AlgHom.coe_comp, toIntegralClosure, AlgHom.val_comp_codRestrict]
  exact Module.Flat.lTensor_preserves_injective_linearMap (M := S)
    (integralClosure R B).val.toLinearMap Subtype.val_injective

/-- "Base change preserves integral closure" is stable under composition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dafcd035a18243fbde809cbb881a37dc98ce6b7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
