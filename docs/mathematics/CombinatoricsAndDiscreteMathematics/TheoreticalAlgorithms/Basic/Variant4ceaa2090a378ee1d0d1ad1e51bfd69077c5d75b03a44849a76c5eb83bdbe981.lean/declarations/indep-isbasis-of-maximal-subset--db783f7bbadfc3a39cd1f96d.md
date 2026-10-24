# Indep.isBasis_of_maximal_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40a34f979a0f4c085432bf220d406cb80d2399b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 898,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4ceaa2090a378ee1d0d1ad1e51bfd69077c5d75b03a44849a76c5eb83bdbe981.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af952391-e6be-a8c2-9a1f-0ea88c40cb9e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88b67e45-f1ad-a0ce-1944-2ead505f1a94",
  "kind": "theorem",
  "lexical_name": "Indep.isBasis_of_maximal_subset",
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
  "slug": "indep-isbasis-of-maximal-subset--db783f7bbadfc3a39cd1f96d",
  "source": {
    "blob": "40a34f979a0f4c085432bf220d406cb80d2399b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 903,
    "line": 898,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4ceaa2090a378ee1d0d1ad1e51bfd69077c5d75b03a44849a76c5eb83bdbe981.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db783f7bbadfc3a39cd1f96d35ed2922cad6105a0f552a742b4cb50ac64e7737",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4ceaa2090a378ee1d0d1ad1e51bfd69077c5d75b03a44849a76c5eb83bdbe981.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88b67e45-f1ad-a0ce-1944-2ead505f1a94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 898–903.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Indep.isBasis_of_maximal_subset (hI : M.Indep I) (hIX : I ⊆ X)
    (hmax : ∀ ⦃J⦄, M.Indep J → I ⊆ J → J ⊆ X → J ⊆ I) (hX : X ⊆ M.E := by aesop_mat) :
    M.IsBasis I X := by
  rw [isBasis_iff (by aesop_mat : X ⊆ M.E), and_iff_right hI, and_iff_right hIX]
  exact fun J hJ hIJ hJX ↦ hIJ.antisymm (hmax hJ hIJ hJX)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4ceaa2090a378ee1d0d1ad1e51bfd69077c5d75b03a44849a76c5eb83bdbe981.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4ceaa2090a378ee1d0d1ad1e51bfd69077c5d75b03a44849a76c5eb83bdbe981.lean#L898).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40a34f979a0f4c085432bf220d406cb80d2399b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
