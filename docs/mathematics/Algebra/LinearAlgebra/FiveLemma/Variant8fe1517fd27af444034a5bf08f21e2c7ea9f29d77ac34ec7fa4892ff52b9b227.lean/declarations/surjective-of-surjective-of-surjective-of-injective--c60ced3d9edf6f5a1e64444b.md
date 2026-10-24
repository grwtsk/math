# surjective_of_surjective_of_surjective_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b3d0091b4664be99f7e37595f02090fb8d1ed6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fe1517fd27af444034a5bf08f21e2c7ea9f29d77ac34ec7fa4892ff52b9b227.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8170be06-6c5f-8375-3020-48a3f86a557d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8e771ad-1a12-3a8b-2106-cc69697b89b2",
  "kind": "lemma",
  "lexical_name": "surjective_of_surjective_of_surjective_of_injective",
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
  "slug": "surjective-of-surjective-of-surjective-of-injective--c60ced3d9edf6f5a1e64444b",
  "source": {
    "blob": "1b3d0091b4664be99f7e37595f02090fb8d1ed6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 123,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiveLemma/Variant8fe1517fd27af444034a5bf08f21e2c7ea9f29d77ac34ec7fa4892ff52b9b227.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c60ced3d9edf6f5a1e64444beec9b4353a6252a005cfd3d2a4fedbd52ba9ed34",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiveLemma/Variant8fe1517fd27af444034a5bf08f21e2c7ea9f29d77ac34ec7fa4892ff52b9b227.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8e771ad-1a12-3a8b-2106-cc69697b89b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma surjective_of_surjective_of_surjective_of_injective (hi₁ : Function.Surjective i₁)
    (hi₃ : Function.Surjective i₃) (hi₄ : Function.Injective i₄) :
    Function.Surjective i₂ :=
  AddMonoidHom.surjective_of_surjective_of_surjective_of_injective
    f₁.toAddMonoidHom f₂.toAddMonoidHom f₃.toAddMonoidHom g₁.toAddMonoidHom g₂.toAddMonoidHom
    g₃.toAddMonoidHom i₁.toAddMonoidHom i₂.toAddMonoidHom i₃.toAddMonoidHom i₄.toAddMonoidHom
    (AddMonoidHom.ext fun x ↦ DFunLike.congr_fun hc₁ x)
    (AddMonoidHom.ext fun x ↦ DFunLike.congr_fun hc₂ x)
    (AddMonoidHom.ext fun x ↦ DFunLike.congr_fun hc₃ x) hf₂ hg₁ hg₂ hi₁ hi₃ hi₄

include hf₁ hf₂ hg₁ hc₁ hc₂ hc₃ in
/-- One four lemma in terms of modules. For a diagram explaining the variables,
see the module docstring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiveLemma/Variant8fe1517fd27af444034a5bf08f21e2c7ea9f29d77ac34ec7fa4892ff52b9b227.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiveLemma/Variant8fe1517fd27af444034a5bf08f21e2c7ea9f29d77ac34ec7fa4892ff52b9b227.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b3d0091b4664be99f7e37595f02090fb8d1ed6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
