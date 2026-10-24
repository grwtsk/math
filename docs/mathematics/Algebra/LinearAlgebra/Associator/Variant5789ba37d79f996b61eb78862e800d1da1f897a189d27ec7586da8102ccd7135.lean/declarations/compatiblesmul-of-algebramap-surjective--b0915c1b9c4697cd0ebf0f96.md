# CompatibleSMul.of_algebraMap_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "feccf5348a2553cb4f456aeca001d460c14e846e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/5789ba37d79f996b61eb78862e800d1da1f897a189d27ec7586da8102ccd7135.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a887a4df-7702-caef-436a-3895e991cab8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68b21ffe-6f95-8838-cce8-f3e8456bdc20",
  "kind": "lemma",
  "lexical_name": "CompatibleSMul.of_algebraMap_surjective",
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
  "slug": "compatiblesmul-of-algebramap-surjective--b0915c1b9c4697cd0ebf0f96",
  "source": {
    "blob": "feccf5348a2553cb4f456aeca001d460c14e846e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 127,
    "path": "GRWTSK/Algebra/LinearAlgebra/Associator/Variant5789ba37d79f996b61eb78862e800d1da1f897a189d27ec7586da8102ccd7135.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0915c1b9c4697cd0ebf0f9634b1b03207cd642e49484d5bc4a66a46e315f0f6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Associator/Variant5789ba37d79f996b61eb78862e800d1da1f897a189d27ec7586da8102ccd7135.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68b21ffe-6f95-8838-cce8-f3e8456bdc20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CompatibleSMul.of_algebraMap_surjective {A : Type*} [CommSemiring A] [Algebra R A]
    [Module A M] [IsScalarTower R A M] [Module A N] [IsScalarTower R A N]
    (h : Function.Surjective (algebraMap R A)) :
    CompatibleSMul R A M N where
  smul_tmul a m n := by
    obtain ⟨r, rfl⟩ := h a
    simp [smul_tmul]

end CompatibleSMul

open LinearMap

section

variable (R M N P)

attribute [local ext high] ext in
/-- The associator for tensor product of R-modules, as a linear equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Associator/Variant5789ba37d79f996b61eb78862e800d1da1f897a189d27ec7586da8102ccd7135.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Associator/Variant5789ba37d79f996b61eb78862e800d1da1f897a189d27ec7586da8102ccd7135.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feccf5348a2553cb4f456aeca001d460c14e846e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
