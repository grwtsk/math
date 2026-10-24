# localization_base

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f95a1ed39a7b70bbce9b42220473bbd3d0ff9bb7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 502,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d16c607-32cd-5e99-effc-6d3d67b722e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b5222d5f-2918-b4cf-5ac3-8a3bfb9103a4",
  "kind": "theorem",
  "lexical_name": "localization_base",
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
  "slug": "localization-base--c383f0999d427ea46b51e277",
  "source": {
    "blob": "f95a1ed39a7b70bbce9b42220473bbd3d0ff9bb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 502,
    "path": "GRWTSK/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c383f0999d427ea46b51e277db48416abeae446344bb6d0390845a15dbe66c9e",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5222d5f-2918-b4cf-5ac3-8a3bfb9103a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localization_base [FormallySmooth R Sₘ] : FormallySmooth Rₘ Sₘ := by
  refine .of_comp_surjective fun Q _ _ I e f ↦ ?_
  let := ((algebraMap Rₘ Q).comp (algebraMap R Rₘ)).toAlgebra
  let : IsScalarTower R Rₘ Q := IsScalarTower.of_algebraMap_eq' rfl
  let f : Sₘ →ₐ[Rₘ] Q := by
    refine { FormallySmooth.lift I ⟨2, e⟩ (f.restrictScalars R) with commutes' := ?_ }
    intro r
    change
      (RingHom.comp (FormallySmooth.lift I ⟨2, e⟩ (f.restrictScalars R) : Sₘ →+* Q)
            (algebraMap _ _))
          r =
        algebraMap _ _ r
    congr 1
    refine IsLocalization.ringHom_ext M ?_
    rw [RingHom.comp_assoc, ← IsScalarTower.algebraMap_eq, ← IsScalarTower.algebraMap_eq,
      AlgHom.comp_algebraMap]
  use f
  ext
  simp [f]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f95a1ed39a7b70bbce9b42220473bbd3d0ff9bb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
