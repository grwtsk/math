# ediam_le_two_mul_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:983a2151-9f35-1414-909c-dde25c6df556",
  "kind": "lemma",
  "lexical_name": "ediam_le_two_mul_radius",
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
  "slug": "ediam-le-two-mul-radius--50c393b8e4dc54a853c85858",
  "source": {
    "blob": "1bbd74871827a1f1111e593493eed1f1152d904a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 367,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Diam/Variant18cdc31243e086d1e29fd21445a05e724ee68c8fe3938d87e6eac20db8cdb49f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50c393b8e4dc54a853c85858813b76e50967b3eb87df7bc48bae6434ce91a20d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Diam/Variant18cdc31243e086d1e29fd21445a05e724ee68c8fe3938d87e6eac20db8cdb49f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:983a2151-9f35-1414-909c-dde25c6df556`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ediam_le_two_mul_radius [Finite α] : G.ediam ≤ 2 * G.radius := by
  cases isEmpty_or_nonempty α
  · rw [radius_eq_top_of_isEmpty]
    exact le_top
  · by_cases h : G.Connected
    · obtain ⟨w, hw⟩ := G.exists_eccent_eq_radius
      obtain ⟨_, _, h⟩ := G.exists_edist_eq_ediam_of_ne_top (connected_iff_ediam_ne_top.mp h)
      apply le_trans (h ▸ G.edist_triangle (v := w))
      rw [two_mul]
      exact hw ▸ add_le_add (G.edist_comm ▸ G.edist_le_eccent) G.edist_le_eccent
    · rw [G.radius_eq_top_of_not_connected h]
      exact le_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Diam/Variant18cdc31243e086d1e29fd21445a05e724ee68c8fe3938d87e6eac20db8cdb49f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Diam/Variant18cdc31243e086d1e29fd21445a05e724ee68c8fe3938d87e6eac20db8cdb49f.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bbd74871827a1f1111e593493eed1f1152d904a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
