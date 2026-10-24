# ker_localizedMap_eq_localized₀_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec1ec0b5-2554-d3ef-0f6c-acc4408599f6",
  "kind": "lemma",
  "lexical_name": "ker_localizedMap_eq_localized₀_ker",
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
  "slug": "ker-localizedmap-eq-localized-ker--c531c1f28ff46172d140e8bd",
  "source": {
    "blob": "9bb41e12d2201a80c271862fdbf234035d06aa64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 274,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c531c1f28ff46172d140e8bdd7e97529bbab0d71c48b59b555d9286923a34725",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec1ec0b5-2554-d3ef-0f6c-acc4408599f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ker_localizedMap_eq_localized₀_ker (g : M →ₗ[R] P) :
    ker (map p f f' g) = (ker g).localized₀ p f := by
  ext x
  simp only [Submodule.mem_localized₀, mem_ker]
  refine ⟨fun h ↦ ?_, ?_⟩
  · obtain ⟨⟨a, b⟩, rfl⟩ := IsLocalizedModule.mk'_surjective p f x
    simp only [Function.uncurry_apply_pair, map_mk', mk'_eq_zero, eq_zero_iff p f'] at h
    obtain ⟨c, hc⟩ := h
    refine ⟨c • a, by simpa, c * b, by simp⟩
  · rintro ⟨m, hm, a, ha, rfl⟩
    simp [IsLocalizedModule.map_mk', hm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bb41e12d2201a80c271862fdbf234035d06aa64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
