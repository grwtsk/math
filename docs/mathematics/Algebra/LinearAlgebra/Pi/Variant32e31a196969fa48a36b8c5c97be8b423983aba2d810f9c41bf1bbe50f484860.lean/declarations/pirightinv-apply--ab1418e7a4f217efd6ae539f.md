# piRightInv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4648d1d4f1687f4695fa3e89ac84f6fd2afdb046",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db916f22-b297-1efa-1efd-f7056138b0d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95e0d09b-d316-f208-f323-2c1d6a7a3a11",
  "kind": "lemma",
  "lexical_name": "piRightInv_apply",
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
  "slug": "pirightinv-apply--ab1418e7a4f217efd6ae539f",
  "source": {
    "blob": "4648d1d4f1687f4695fa3e89ac84f6fd2afdb046",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 67,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab1418e7a4f217efd6ae539f9eee1fba2ca9cc74baf1f3cb337c7827a509cc9e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95e0d09b-d316-f208-f323-2c1d6a7a3a11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma piRightInv_apply (x : N) (m : ∀ i, M i) :
    piRightInv R S N M (fun i ↦ x ⊗ₜ m i) = x ⊗ₜ m := by
  simp only [piRightInv, lsum_apply, coeFn_sum, coe_comp, coe_proj, Finset.sum_apply,
    Function.comp_apply, Function.eval, AlgebraTensorModule.map_tmul, id_coe, id_eq, coe_single]
  rw [← tmul_sum]
  congr
  ext j
  simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4648d1d4f1687f4695fa3e89ac84f6fd2afdb046` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
