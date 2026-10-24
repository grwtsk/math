# isLocallySurjective_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "14683850e28138035a3727a30f1359cc2d3a0bfa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3af1833f4b05a295416f2c71cc6b4819a87672f7067f46f49f4ab4c424203cbe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a706ce8-2b02-cdb6-0b38-2cf6afa8f4d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e313e60e-3af4-6bd4-7557-2cb30a2c08cf",
  "kind": "theorem",
  "lexical_name": "isLocallySurjective_iff",
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
  "slug": "islocallysurjective-iff--b24046698e760f22c091c2a8",
  "source": {
    "blob": "14683850e28138035a3727a30f1359cc2d3a0bfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant3af1833f4b05a295416f2c71cc6b4819a87672f7067f46f49f4ab4c424203cbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b24046698e760f22c091c2a861a1b9948a0ff4ef367805213953085368876fc3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant3af1833f4b05a295416f2c71cc6b4819a87672f7067f46f49f4ab4c424203cbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e313e60e-3af4-6bd4-7557-2cb30a2c08cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocallySurjective_iff (T : ℱ ⟶ 𝒢) :
    IsLocallySurjective T ↔
      ∀ (U t), ∀ x ∈ U, ∃ (V : _) (ι : V ⟶ U), (∃ s, (T.app _) s = t |_ₕ ι) ∧ x ∈ V :=
  ⟨fun h _ => h.imageSieve_mem, fun h => ⟨h _⟩⟩

section SurjectiveOnStalks

variable [Limits.HasColimits C] [Limits.PreservesFilteredColimits (forget C)]

/-- An equivalent condition for a map of presheaves to be locally surjective
is for all the induced maps on stalks to be surjective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant3af1833f4b05a295416f2c71cc6b4819a87672f7067f46f49f4ab4c424203cbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant3af1833f4b05a295416f2c71cc6b4819a87672f7067f46f49f4ab4c424203cbe.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14683850e28138035a3727a30f1359cc2d3a0bfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
