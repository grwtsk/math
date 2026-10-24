# kroneckerTMul_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cdeac634e4c5a0cbcbc8485bf9bca2e394a1f166",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 512,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab684c04-94fb-adde-76e5-9a933c2324d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c88abcc-e065-3e21-0db5-7e80888f493a",
  "kind": "theorem",
  "lexical_name": "kroneckerTMul_assoc",
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
  "slug": "kroneckertmul-assoc--5ca75f537f791bb708c29931",
  "source": {
    "blob": "cdeac634e4c5a0cbcbc8485bf9bca2e394a1f166",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 512,
    "path": "GRWTSK/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ca75f537f791bb708c2993160fd77eca7e6965296dc205835d552cbac5542dc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c88abcc-e065-3e21-0db5-7e80888f493a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kroneckerTMul_assoc (A : Matrix l m α) (B : Matrix n p β) (C : Matrix q r γ) :
    reindex (Equiv.prodAssoc l n q) (Equiv.prodAssoc m p r)
        (((A ⊗ₖₜ[R] B) ⊗ₖₜ[R] C).map (TensorProduct.assoc R α β γ)) =
      A ⊗ₖₜ[R] B ⊗ₖₜ[R] C :=
  ext fun _ _ => assoc_tmul _ _ _
#align matrix.kronecker_tmul_assoc Matrix.kroneckerTMul_assoc

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdeac634e4c5a0cbcbc8485bf9bca2e394a1f166` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
