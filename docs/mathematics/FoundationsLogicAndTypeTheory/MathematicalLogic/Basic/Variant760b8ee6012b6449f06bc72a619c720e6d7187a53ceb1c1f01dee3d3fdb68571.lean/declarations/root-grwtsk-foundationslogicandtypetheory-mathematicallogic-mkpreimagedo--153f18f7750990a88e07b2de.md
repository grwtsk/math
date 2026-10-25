# _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MkPreimageDown.Variantdd2e24bf1c99e7b904b124686e32d538480f97092044b68d5122612cdc2866a2.not_small_cardinal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e7bafaf-5498-a0b7-c802-32374d9907d1",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MkPreimageDown.Variantdd2e24bf1c99e7b904b124686e32d538480f97092044b68d5122612cdc2866a2.not_small_cardinal",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-mathematicallogic-mkpreimagedo--153f18f7750990a88e07b2de",
  "source": {
    "blob": "8b7782f3890d47d3c28dea167cb77ee723dc41c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 196,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant760b8ee6012b6449f06bc72a619c720e6d7187a53ceb1c1f01dee3d3fdb68571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:153f18f7750990a88e07b2de644b9fc947e7f140a98432b9a1c135496077c9c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant760b8ee6012b6449f06bc72a619c720e6d7187a53ceb1c1f01dee3d3fdb68571.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e7bafaf-5498-a0b7-c802-32374d9907d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MkPreimageDown.Variantdd2e24bf1c99e7b904b124686e32d538480f97092044b68d5122612cdc2866a2.not_small_cardinal : ¬ Small.{u} Cardinal.{max u v} := by
  intro h
  have := small_lift.{_, v} Cardinal.{max u v}
  rw [← small_univ_iff, ← bddAbove_iff_small] at this
  exact not_bddAbove_univ this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant760b8ee6012b6449f06bc72a619c720e6d7187a53ceb1c1f01dee3d3fdb68571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant760b8ee6012b6449f06bc72a619c720e6d7187a53ceb1c1f01dee3d3fdb68571.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b7782f3890d47d3c28dea167cb77ee723dc41c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
