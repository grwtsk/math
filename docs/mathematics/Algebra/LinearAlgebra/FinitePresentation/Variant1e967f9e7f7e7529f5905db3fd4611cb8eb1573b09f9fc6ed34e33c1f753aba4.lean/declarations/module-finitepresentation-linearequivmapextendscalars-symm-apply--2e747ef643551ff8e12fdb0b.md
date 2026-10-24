# Module.FinitePresentation.linearEquivMapExtendScalars_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ae31d2f88080cb67c0b331e2525441c1752172b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 669,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e967f9e7f7e7529f5905db3fd4611cb8eb1573b09f9fc6ed34e33c1f753aba4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d2e6cb8-8a41-0064-8ad6-577b414db8e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd87967a-6faf-137e-cada-19252b34522c",
  "kind": "lemma",
  "lexical_name": "Module.FinitePresentation.linearEquivMapExtendScalars_symm_apply",
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
  "slug": "module-finitepresentation-linearequivmapextendscalars-symm-apply--2e747ef643551ff8e12fdb0b",
  "source": {
    "blob": "8ae31d2f88080cb67c0b331e2525441c1752172b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 679,
    "line": 669,
    "path": "GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant1e967f9e7f7e7529f5905db3fd4611cb8eb1573b09f9fc6ed34e33c1f753aba4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e747ef643551ff8e12fdb0be2e42c023b5a356816386a6943afaf2167ff15ac",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FinitePresentation/Variant1e967f9e7f7e7529f5905db3fd4611cb8eb1573b09f9fc6ed34e33c1f753aba4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd87967a-6faf-137e-cada-19252b34522c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 669–679.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.FinitePresentation.linearEquivMapExtendScalars_symm_apply
    [Module.FinitePresentation R M] (f : M →ₗ[R] N) :
    (Module.FinitePresentation.linearEquivMapExtendScalars S).symm
    ((IsLocalizedModule.mapExtendScalars S (LocalizedModule.mkLinearMap S M)
    (LocalizedModule.mkLinearMap S N) (Localization S)) f) =
    (LocalizedModule.mkLinearMap S (M →ₗ[R] N)) f :=
  IsLocalizedModule.linearEquiv_symm_apply S _ _ f

open TensorProduct LinearMap

variable (N) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FinitePresentation/Variant1e967f9e7f7e7529f5905db3fd4611cb8eb1573b09f9fc6ed34e33c1f753aba4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant1e967f9e7f7e7529f5905db3fd4611cb8eb1573b09f9fc6ed34e33c1f753aba4.lean#L669).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ae31d2f88080cb67c0b331e2525441c1752172b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
