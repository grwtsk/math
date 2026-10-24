# AlgHom.mulLeftRight_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce138ddf03e89987590c687c22937f6c39887788",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a44bcdbc012d75ac1e563df4630b6d11419da8634901789fb18972105dd6a62.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3fa676f-f4e4-bc57-7a6c-8681593e564c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7a908bd-9a57-d561-d8e2-e8a47be009da",
  "kind": "lemma",
  "lexical_name": "AlgHom.mulLeftRight_apply",
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
  "slug": "alghom-mulleftright-apply--a2756b8a8094d9336bb0c1a2",
  "source": {
    "blob": "ce138ddf03e89987590c687c22937f6c39887788",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 49,
    "path": "GRWTSK/Algebra/Defs/Variant6a44bcdbc012d75ac1e563df4630b6d11419da8634901789fb18972105dd6a62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2756b8a8094d9336bb0c1a2be3cc9bdd1afdbfeb664a70a1ef72f75ccb397b5",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant6a44bcdbc012d75ac1e563df4630b6d11419da8634901789fb18972105dd6a62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7a908bd-9a57-d561-d8e2-e8a47be009da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AlgHom.mulLeftRight_apply (a : A) (b : Aᵐᵒᵖ) (x : A) :
    AlgHom.mulLeftRight R A (a ⊗ₜ b) x = a * x * b.unop := by
  simp only [AlgHom.mulLeftRight, Algebra.lsmul_coe]
  change TensorProduct.Algebra.moduleAux _ _ = _
  simp [TensorProduct.Algebra.moduleAux, ← mul_assoc]

/-- An Azumaya algebra is a finitely generated, projective and faithful R-algebra where
  `AlgHom.mulLeftRight R A : (A ⊗[R] Aᵐᵒᵖ) →ₐ[R] Module.End R A` is an isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant6a44bcdbc012d75ac1e563df4630b6d11419da8634901789fb18972105dd6a62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant6a44bcdbc012d75ac1e563df4630b6d11419da8634901789fb18972105dd6a62.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce138ddf03e89987590c687c22937f6c39887788` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
