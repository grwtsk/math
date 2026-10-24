# apply_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a927647ea9ccd911535631af94de6a27d8b5d43",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/92ca391ebdf2973dc250bd9428bbd2e89106c6dbdb1052bf0ed315c7661107c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:457de8dd-d1c0-eeb9-b9bb-3c0d0c933102",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ddee9832-b410-96c6-27ee-2557aded1405",
  "kind": "lemma",
  "lexical_name": "apply_symm_apply",
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
  "slug": "apply-symm-apply--45c035358b9ad5f0004ade7f",
  "source": {
    "blob": "9a927647ea9ccd911535631af94de6a27d8b5d43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 279,
    "path": "GRWTSK/Algebra/Equiv/Variant92ca391ebdf2973dc250bd9428bbd2e89106c6dbdb1052bf0ed315c7661107c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45c035358b9ad5f0004ade7fb6bbb38ef20efe526322ca14cc8377f6e257938e",
  "verification": {
    "reference": "docs/verification/Algebra/Equiv/Variant92ca391ebdf2973dc250bd9428bbd2e89106c6dbdb1052bf0ed315c7661107c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddee9832-b410-96c6-27ee-2557aded1405`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_symm_apply (e : A ≃ₐc[R] B) : ∀ x, e (e.symm x) = x := e.toEquiv.apply_symm_apply

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Equiv/Variant92ca391ebdf2973dc250bd9428bbd2e89106c6dbdb1052bf0ed315c7661107c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Equiv/Variant92ca391ebdf2973dc250bd9428bbd2e89106c6dbdb1052bf0ed315c7661107c2.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a927647ea9ccd911535631af94de6a27d8b5d43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
