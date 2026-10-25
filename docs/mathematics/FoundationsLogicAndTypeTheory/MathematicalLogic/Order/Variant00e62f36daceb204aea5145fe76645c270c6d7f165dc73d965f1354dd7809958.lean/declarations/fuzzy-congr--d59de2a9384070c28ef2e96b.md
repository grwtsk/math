# fuzzy_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59a7d30b-0417-e4e4-861b-228dcdbcbc8d",
  "kind": "theorem",
  "lexical_name": "fuzzy_congr",
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
  "slug": "fuzzy-congr--d59de2a9384070c28ef2e96b",
  "source": {
    "blob": "d42f9ef2c98893c853896bc87f608cbb790df2c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 609,
    "line": 607,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant00e62f36daceb204aea5145fe76645c270c6d7f165dc73d965f1354dd7809958.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d59de2a9384070c28ef2e96b52f87b9f0adfa634ec2f087daa919cdc345efa58",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant00e62f36daceb204aea5145fe76645c270c6d7f165dc73d965f1354dd7809958.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59a7d30b-0417-e4e4-861b-228dcdbcbc8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 607–609.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fuzzy_congr {x₁ y₁ x₂ y₂ : PGame} (hx : x₁ ≈ x₂) (hy : y₁ ≈ y₂) : x₁ ‖ y₁ ↔ x₂ ‖ y₂ :=
  show _ ∧ _ ↔ _ ∧ _ by rw [lf_congr hx hy, lf_congr hy hx]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant00e62f36daceb204aea5145fe76645c270c6d7f165dc73d965f1354dd7809958.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant00e62f36daceb204aea5145fe76645c270c6d7f165dc73d965f1354dd7809958.lean#L607).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d42f9ef2c98893c853896bc87f608cbb790df2c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
