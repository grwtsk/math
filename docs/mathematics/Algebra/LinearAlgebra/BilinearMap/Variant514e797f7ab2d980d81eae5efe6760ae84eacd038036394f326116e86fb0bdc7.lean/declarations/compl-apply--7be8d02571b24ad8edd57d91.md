# compl₁₂_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1b9cc3397532e9f8518e525d879a9ae6b140aca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/514e797f7ab2d980d81eae5efe6760ae84eacd038036394f326116e86fb0bdc7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:790a1748-0067-964c-a0c4-8f404fa10559",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4819f59-b303-5771-3c4a-09b6dadc15b2",
  "kind": "theorem",
  "lexical_name": "compl₁₂_apply",
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
  "slug": "compl-apply--7be8d02571b24ad8edd57d91",
  "source": {
    "blob": "f1b9cc3397532e9f8518e525d879a9ae6b140aca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 338,
    "path": "GRWTSK/Algebra/LinearAlgebra/BilinearMap/Variant514e797f7ab2d980d81eae5efe6760ae84eacd038036394f326116e86fb0bdc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7be8d02571b24ad8edd57d91afd6b2aa942627940dc195a01acbe57b71b0cb2b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BilinearMap/Variant514e797f7ab2d980d81eae5efe6760ae84eacd038036394f326116e86fb0bdc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4819f59-b303-5771-3c4a-09b6dadc15b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compl₁₂_apply [SMulCommClass R₂ R₁ Pₗ]
    (f : Mₗ →ₗ[R₁] N →ₗ[R₂] Pₗ) (g : Qₗ →ₗ[R₁] Mₗ) (g' : Qₗ' →ₗ[R₂] N) (x : Qₗ)
    (y : Qₗ') : f.compl₁₂ g g' x y = f (g x) (g' y) := rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BilinearMap/Variant514e797f7ab2d980d81eae5efe6760ae84eacd038036394f326116e86fb0bdc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BilinearMap/Variant514e797f7ab2d980d81eae5efe6760ae84eacd038036394f326116e86fb0bdc7.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1b9cc3397532e9f8518e525d879a9ae6b140aca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
