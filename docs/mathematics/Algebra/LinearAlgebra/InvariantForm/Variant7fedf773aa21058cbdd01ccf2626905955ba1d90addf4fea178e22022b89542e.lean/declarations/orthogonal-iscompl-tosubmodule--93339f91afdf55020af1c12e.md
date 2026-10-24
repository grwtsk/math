# orthogonal_isCompl_toSubmodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6bbb9cadb1f96e04f40bdb34266d5af1209c741",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff8d3f0b-32b6-5884-74b7-61eb1a88ed42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c5ae199-85c9-67bf-af1d-ce85ce969dd1",
  "kind": "lemma",
  "lexical_name": "orthogonal_isCompl_toSubmodule",
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
  "slug": "orthogonal-iscompl-tosubmodule--93339f91afdf55020af1c12e",
  "source": {
    "blob": "a6bbb9cadb1f96e04f40bdb34266d5af1209c741",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 131,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93339f91afdf55020af1c12ed447b3d55c94fd17a421f78196b2c79ba83c4718",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c5ae199-85c9-67bf-af1d-ce85ce969dd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma orthogonal_isCompl_toSubmodule (I : LieIdeal K L) (hI : IsAtom I) :
    IsCompl I.toSubmodule (orthogonal Φ hΦ_inv I).toSubmodule := by
  rw [orthogonal_toSubmodule, LinearMap.BilinForm.isCompl_orthogonal_iff_disjoint hΦ_refl,
      ← orthogonal_toSubmodule _ hΦ_inv, LieSubmodule.disjoint_toSubmodule]
  exact orthogonal_disjoint Φ hΦ_nondeg hΦ_inv hL I hI

open Module Submodule in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6bbb9cadb1f96e04f40bdb34266d5af1209c741` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
