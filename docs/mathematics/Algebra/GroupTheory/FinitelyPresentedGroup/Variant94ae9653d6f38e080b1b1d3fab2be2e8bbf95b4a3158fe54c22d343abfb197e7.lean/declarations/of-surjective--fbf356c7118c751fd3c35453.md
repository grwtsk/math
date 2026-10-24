# of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4027505e0e4a0f141cf01f957b97c41ca335e8e8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94ae9653d6f38e080b1b1d3fab2be2e8bbf95b4a3158fe54c22d343abfb197e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6ff2f59-947b-9084-35a2-aa7b0c633138",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15df6614-f282-3e0d-952b-5c18a7162029",
  "kind": "theorem",
  "lexical_name": "of_surjective",
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
  "slug": "of-surjective--fbf356c7118c751fd3c35453",
  "source": {
    "blob": "4027505e0e4a0f141cf01f957b97c41ca335e8e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 120,
    "path": "GRWTSK/Algebra/GroupTheory/FinitelyPresentedGroup/Variant94ae9653d6f38e080b1b1d3fab2be2e8bbf95b4a3158fe54c22d343abfb197e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbf356c7118c751fd3c35453308ff305f6f9920840062725473bd06e68a6e7d2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FinitelyPresentedGroup/Variant94ae9653d6f38e080b1b1d3fab2be2e8bbf95b4a3158fe54c22d343abfb197e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15df6614-f282-3e0d-952b-5c18a7162029`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_surjective [hG : IsFinitelyPresented G] (f : G →* H)
    (hf_surj : Function.Surjective f) (hf_ker : f.ker.IsFinitelyNormallyGenerated) :
    IsFinitelyPresented H := by
  obtain ⟨n, φ, hφ_surj, hφ_ker⟩ := hG.out
  refine ⟨n, f.comp φ, hf_surj.comp hφ_surj, ?_⟩
  rw [← MonoidHom.comap_ker]
  exact hf_ker.comap hφ_surj hφ_ker

/-- The quotient of a finitely presented group by a subgroup
which is finitely generated as a normal subgroup is finitely presented. -/
@[to_additive /-- The quotient of a finitely presented additive group by an additive subgroup
which is finitely generated as a normal subgroup is finitely presented. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FinitelyPresentedGroup/Variant94ae9653d6f38e080b1b1d3fab2be2e8bbf95b4a3158fe54c22d343abfb197e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FinitelyPresentedGroup/Variant94ae9653d6f38e080b1b1d3fab2be2e8bbf95b4a3158fe54c22d343abfb197e7.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4027505e0e4a0f141cf01f957b97c41ca335e8e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
