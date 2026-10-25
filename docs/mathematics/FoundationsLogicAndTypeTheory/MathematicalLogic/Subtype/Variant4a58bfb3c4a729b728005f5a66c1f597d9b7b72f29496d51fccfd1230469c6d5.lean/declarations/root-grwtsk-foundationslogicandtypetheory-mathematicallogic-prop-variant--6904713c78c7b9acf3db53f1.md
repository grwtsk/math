# _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Prop.Variant8e6dd0f57381c7f199de86583f2f8c434f06dde2228c983a063d1d211cecad5d.exists_subtype_mk_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5243654-60bf-d56b-26cf-a50ee6114212",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Prop.Variant8e6dd0f57381c7f199de86583f2f8c434f06dde2228c983a063d1d211cecad5d.exists_subtype_mk_eq_iff",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-mathematicallogic-prop-variant--6904713c78c7b9acf3db53f1",
  "source": {
    "blob": "a5e17f3b5db02235d1c1dd774689e56bc5fca67b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6904713c78c7b9acf3db53f1ca19def58ae7556c62a8721662d2b399fc7ee09c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5243654-60bf-d56b-26cf-a50ee6114212`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Prop.Variant8e6dd0f57381c7f199de86583f2f8c434f06dde2228c983a063d1d211cecad5d.exists_subtype_mk_eq_iff {a : Subtype p} {b : α} :
    (∃ h : p b, Subtype.mk b h = a) ↔ b = a := by
  simp only [@eq_comm _ b, exists_eq_subtype_mk_iff, @eq_comm _ _ a]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5e17f3b5db02235d1c1dd774689e56bc5fca67b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
