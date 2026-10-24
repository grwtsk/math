# eq_loopyOn_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb112c7f-5a3f-eb83-8825-35fdf53854e1",
  "kind": "theorem",
  "lexical_name": "eq_loopyOn_iff",
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
  "slug": "eq-loopyon-iff--52b987a1ccbdd3b89cbbb2a8",
  "source": {
    "blob": "1b4d68b715c2e07084918ba0dac6496c65789367",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 105,
    "path": "GRWTSK/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52b987a1ccbdd3b89cbbb2a89afed1a3131d3c2e8fec756ed77bbf227031b586",
  "verification": {
    "reference": "docs/verification/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb112c7f-5a3f-eb83-8825-35fdf53854e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_loopyOn_iff : M = loopyOn E ↔ M.E = E ∧ ∀ X ⊆ M.E, M.Indep X → X = ∅ := by
  simp only [ext_iff_indep, loopyOn_ground, loopyOn_indep_iff, and_congr_right_iff]
  rintro rfl
  refine ⟨fun h I hI ↦ (h hI).1, fun h I hIE ↦ ⟨h I hIE, by rintro rfl; simp⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b4d68b715c2e07084918ba0dac6496c65789367` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
