# val_awayMap_eq_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0cbdb2de-18e6-6232-23f3-f80518d583c5",
  "kind": "lemma",
  "lexical_name": "val_awayMap_eq_aux",
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
  "slug": "val-awaymap-eq-aux--2b8fd61bfaaea4810fca4eda",
  "source": {
    "blob": "38300e7a2a2befa2a7a8c0432a959d87ca5669d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 699,
    "line": 692,
    "path": "GRWTSK/Algebra/HomogeneousLocalization/Variant2edb49b963575c7e047d1fdd43c7ade5f4b01cb2fb7eba510da96d2bc77ded45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b8fd61bfaaea4810fca4eda948f2761035753d887724a49e766e846cbcf3cec",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousLocalization/Variant2edb49b963575c7e047d1fdd43c7ade5f4b01cb2fb7eba510da96d2bc77ded45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cbdb2de-18e6-6232-23f3-f80518d583c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 692–699.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma val_awayMap_eq_aux (a) : (awayMap 𝒜 hg hx a).val = awayMapAux 𝒜 ⟨_, hx⟩ a := by
  let e := RingEquiv.ofLeftInverse (f := algebraMap (Away 𝒜 x) (Localization.Away x))
    (h := (val_injective _).hasLeftInverse.choose_spec)
  dsimp [awayMap]
  convert_to (e (e.symm ⟨awayMapAux 𝒜 (f := f) ⟨_, hx⟩ a,
    range_awayMapAux_subset 𝒜 hg hx ⟨_, rfl⟩⟩)).1 = _
  rw [e.apply_symm_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousLocalization/Variant2edb49b963575c7e047d1fdd43c7ade5f4b01cb2fb7eba510da96d2bc77ded45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousLocalization/Variant2edb49b963575c7e047d1fdd43c7ade5f4b01cb2fb7eba510da96d2bc77ded45.lean#L692).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38300e7a2a2befa2a7a8c0432a959d87ca5669d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
