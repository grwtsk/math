# extendOfIsometry_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8140733071406b0be915248b2f96d7b74acca1a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 319,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:693845a3-5531-5572-b0d9-4073a6b21d47",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b3c270b-8cfa-0411-f35d-f6a36d542e71",
  "kind": "theorem",
  "lexical_name": "extendOfIsometry_apply",
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
  "slug": "extendofisometry-apply--ca97516542f5f856b5fdb192",
  "source": {
    "blob": "b8140733071406b0be915248b2f96d7b74acca1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 319,
    "path": "GRWTSK/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca97516542f5f856b5fdb192b291b9a7e0ec3e6feaaa27fbec0a1cd904772a97",
  "verification": {
    "reference": "docs/verification/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b3c270b-8cfa-0411-f35d-f6a36d542e71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extendOfIsometry_apply (h_dense₁ : DenseRange e₁) (h_dense₂ : DenseRange e₂)
    (h_norm : ∀ x, ‖e₂ (f x)‖ = ‖e₁ x‖) (x : Eₗ) :
    (f.extendOfIsometry e₁ e₂ h_dense₁ h_dense₂ h_norm) x =
    (e₂ ∘ₛₗ f.toLinearMap).extendOfNorm e₁ x := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8140733071406b0be915248b2f96d7b74acca1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
