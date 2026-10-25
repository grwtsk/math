# MapsTo.restrict_surjective_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d5d4547-a666-2690-cc8e-6a431722ec7d",
  "kind": "theorem",
  "lexical_name": "MapsTo.restrict_surjective_iff",
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
  "slug": "mapsto-restrict-surjective-iff--8a4d9adf902e7905d2ee14e1",
  "source": {
    "blob": "7b4cc804649d38a2eb2636797a7df91ee8c9c8bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 284,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a4d9adf902e7905d2ee14e166c991c756d58276c1672db5edff41bfadb69c52",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d5d4547-a666-2690-cc8e-6a431722ec7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MapsTo.restrict_surjective_iff (h : MapsTo f s t) :
    Surjective (MapsTo.restrict _ _ _ h) ↔ SurjOn f s t := by
  refine ⟨fun h' b hb ↦ ?_, fun h' ⟨b, hb⟩ ↦ ?_⟩
  · obtain ⟨⟨a, ha⟩, ha'⟩ := h' ⟨b, hb⟩
    replace ha' : f a = b := by simpa [Subtype.ext_iff] using ha'
    rw [← ha']
    exact mem_image_of_mem f ha
  · obtain ⟨a, ha, rfl⟩ := h' hb
    exact ⟨⟨a, ha⟩, rfl⟩

end surjOn

end Set
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b4cc804649d38a2eb2636797a7df91ee8c9c8bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
