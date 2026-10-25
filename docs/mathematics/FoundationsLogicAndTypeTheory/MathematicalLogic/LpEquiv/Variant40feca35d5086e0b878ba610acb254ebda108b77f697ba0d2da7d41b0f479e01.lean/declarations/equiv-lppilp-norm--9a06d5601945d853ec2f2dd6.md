# equiv_lpPiLp_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "22a5acb3d98d398c99a0825a673cc859e459b777",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ce61ddd-88fe-cb50-5360-f52d8b0bbe78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b5530421-e09b-84f6-9c3d-72b4c139a379",
  "kind": "theorem",
  "lexical_name": "equiv_lpPiLp_norm",
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
  "slug": "equiv-lppilp-norm--9a06d5601945d853ec2f2dd6",
  "source": {
    "blob": "22a5acb3d98d398c99a0825a673cc859e459b777",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a06d5601945d853ec2f2dd6cdbd52cecdf9e29de5708407c5587a5ebbdfdaef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5530421-e09b-84f6-9c3d-72b4c139a379`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equiv_lpPiLp_norm (f : lp E p) : ‖Equiv.lpPiLp f‖ = ‖f‖ := by
  rcases p.trichotomy with (rfl | rfl | h)
  · rw [PiLp.norm_eq_card, lp.norm_eq_card_dsupport]
  · rw [PiLp.norm_eq_ciSup, lp.norm_eq_ciSup]; rfl
  · rw [PiLp.norm_eq_sum h, lp.norm_eq_tsum_rpow h, tsum_fintype]; rfl
#align equiv_lp_pi_Lp_norm equiv_lpPiLp_norm

/-- The canonical `AddEquiv` between `lp E p` and `PiLp p E` when `E : α → Type u` with
`[Fintype α]` and `[Fact (1 ≤ p)]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22a5acb3d98d398c99a0825a673cc859e459b777` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
