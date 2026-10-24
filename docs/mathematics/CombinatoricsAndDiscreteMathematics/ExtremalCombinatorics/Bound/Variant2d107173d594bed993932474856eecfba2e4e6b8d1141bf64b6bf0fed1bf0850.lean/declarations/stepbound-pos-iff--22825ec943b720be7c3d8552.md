# stepBound_pos_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ce16573f6aba4ab33e620dcc7c54471938c0bed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a1f7444-9c01-a2d4-76cc-3bab031b49d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74cf4c69-0158-0bca-9aa7-202f9223300c",
  "kind": "theorem",
  "lexical_name": "stepBound_pos_iff",
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
  "slug": "stepbound-pos-iff--22825ec943b720be7c3d8552",
  "source": {
    "blob": "7ce16573f6aba4ab33e620dcc7c54471938c0bed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 54,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22825ec943b720be7c3d85525607fb23da5efbb211b4a39a78a88a2d2e061c8c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74cf4c69-0158-0bca-9aa7-202f9223300c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stepBound_pos_iff {n : ℕ} : 0 < stepBound n ↔ 0 < n :=
  zero_lt_mul_right <| by positivity
#align szemeredi_regularity.step_bound_pos_iff SzemerediRegularity.stepBound_pos_iff

alias ⟨_, stepBound_pos⟩ := stepBound_pos_iff
#align szemeredi_regularity.step_bound_pos SzemerediRegularity.stepBound_pos

end SzemerediRegularity

open SzemerediRegularity

variable {α : Type*} [DecidableEq α] [Fintype α] {P : Finpartition (univ : Finset α)}
  {u : Finset α} {ε : ℝ}

local notation3 (prettyPrint := false)
  "m" => (card α / stepBound P.parts.card : ℕ)

local notation3 (prettyPrint := false)
  "a" => (card α / P.parts.card - m * 4 ^ P.parts.card : ℕ)

namespace SzemerediRegularity.Positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ce16573f6aba4ab33e620dcc7c54471938c0bed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
