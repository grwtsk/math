# identDistrib_iff_forall_finset_identDistrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e622d37d-7d14-77a3-54ab-26c8a50afb36",
  "kind": "lemma",
  "lexical_name": "identDistrib_iff_forall_finset_identDistrib",
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
  "slug": "identdistrib-iff-forall-finset-identdistrib--000d6432a6d34bcdacba450c",
  "source": {
    "blob": "a7e62550db49dc316f7423d57afdbdd26f47d55b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensionalLaws/Variant55161427849c8cc6e77fbb65f5f398b4aaf499d358b9c8d7f406aa5580e49a4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:000d6432a6d34bcdacba450c6e31c03bb0746353ce8ea3d8178338d4939824ca",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteDimensionalLaws/Variant55161427849c8cc6e77fbb65f5f398b4aaf499d358b9c8d7f406aa5580e49a4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e622d37d-7d14-77a3-54ab-26c8a50afb36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma identDistrib_iff_forall_finset_identDistrib [IsFiniteMeasure P]
    (hX : AEMeasurable (fun ω ↦ (X · ω)) P) (hY : AEMeasurable (fun ω ↦ (Y · ω)) P) :
    IdentDistrib (fun ω ↦ (X · ω)) (fun ω ↦ (Y · ω)) P P
      ↔ ∀ I : Finset T,
        IdentDistrib (fun ω ↦ I.restrict (X · ω)) (fun ω ↦ I.restrict (Y · ω)) P P := by
  refine ⟨fun h I ↦ ⟨?_, ?_, ?_⟩, fun h ↦ ⟨hX, hY, ?_⟩⟩
  · exact (Finset.measurable_restrict _).comp_aemeasurable hX
  · exact (Finset.measurable_restrict _).comp_aemeasurable hY
  · exact (map_eq_iff_forall_finset_map_restrict_eq hX hY).mp h.map_eq I
  · exact (map_eq_iff_forall_finset_map_restrict_eq hX hY).mpr (fun I ↦ (h I).map_eq)

/-- If two processes are modifications of each other, then they have the same finite-dimensional
distributions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteDimensionalLaws/Variant55161427849c8cc6e77fbb65f5f398b4aaf499d358b9c8d7f406aa5580e49a4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensionalLaws/Variant55161427849c8cc6e77fbb65f5f398b4aaf499d358b9c8d7f406aa5580e49a4f.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7e62550db49dc316f7423d57afdbdd26f47d55b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
