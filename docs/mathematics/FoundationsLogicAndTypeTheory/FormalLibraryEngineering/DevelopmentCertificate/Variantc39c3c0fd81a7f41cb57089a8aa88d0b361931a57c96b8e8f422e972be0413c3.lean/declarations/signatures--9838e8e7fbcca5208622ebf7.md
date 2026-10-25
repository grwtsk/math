# signatures

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee68ac27-0e66-86e3-3b74-38c09e056f41",
  "kind": "theorem",
  "lexical_name": "signatures",
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
  "slug": "signatures--9838e8e7fbcca5208622ebf7",
  "source": {
    "blob": "1c4793e962c5016e025716f988c87e323e04e013",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 181,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DevelopmentCertificate/Variantc39c3c0fd81a7f41cb57089a8aa88d0b361931a57c96b8e8f422e972be0413c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9838e8e7fbcca5208622ebf7dcf940ff79937ef19e8a770661c1d6033f75bb3e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DevelopmentCertificate/Variantc39c3c0fd81a7f41cb57089a8aa88d0b361931a57c96b8e8f422e972be0413c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee68ac27-0e66-86e3-3b74-38c09e056f41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signatures : ([cappedValuation 2 2 (2:ℤ),cappedValuation 3 2 (2:ℤ),cappedValuation 5 2 (2:ℤ),cappedValuation 2 2 (4:ℤ),cappedValuation 3 2 (4:ℤ),cappedValuation 5 2 (4:ℤ),cappedValuation 2 2 (3:ℤ),cappedValuation 3 2 (3:ℤ),cappedValuation 5 2 (3:ℤ),cappedValuation 2 2 (5:ℤ),cappedValuation 3 2 (5:ℤ),cappedValuation 5 2 (5:ℤ),cappedValuation 2 2 (4:ℤ),cappedValuation 3 2 (4:ℤ),cappedValuation 5 2 (4:ℤ),cappedValuation 2 2 (6:ℤ),cappedValuation 3 2 (6:ℤ),cappedValuation 5 2 (6:ℤ),cappedValuation 2 2 (5:ℤ),cappedValuation 3 2 (5:ℤ),cappedValuation 5 2 (5:ℤ),cappedValuation 2 2 (7:ℤ),cappedValuation 3 2 (7:ℤ),cappedValuation 5 2 (7:ℤ),cappedValuation 2 2 (6:ℤ),cappedValuation 3 2 (6:ℤ),cappedValuation 5 2 (6:ℤ),cappedValuation 2 2 (8:ℤ),cappedValuation 3 2 (8:ℤ),cappedValuation 5 2 (8:ℤ),cappedValuation 2 2 (7:ℤ),cappedValuation 3 2 (7:ℤ),cappedValuation 5 2 (7:ℤ),cappedValuation 2 2 (9:ℤ),cappedValuation 3 2 (9:ℤ),cappedValuation 5 2 (9:ℤ),cappedValuation 2 2 (8:ℤ),cappedValuation 3 2 (8:ℤ),cappedValuation 5 2 (8:ℤ),cappedValuation 2 2 (10:ℤ),cappedValuation 3 2 (10:ℤ),cappedValuation 5 2 (10:ℤ),cappedValuation 2 2 (9:ℤ),cappedValuation 3 2 (9:ℤ),cappedValuation 5 2 (9:ℤ),cappedValuation 2 2 (11:ℤ),cappedValuation 3 2 (11:ℤ),cappedValuation 5 2 (11:ℤ),cappedValuation 2 2 (10:ℤ),cappedValuation 3 2 (10:ℤ),cappedValuation 5 2 (10:ℤ),cappedValuation 2 2 (12:ℤ),cappedValuation 3 2 (12:ℤ),cappedValuation 5 2 (12:ℤ),cappedValuation 2 2 (11:ℤ),cappedValuation 3 2 (11:ℤ),cappedValuation 5 2 (11:ℤ),cappedValuation 2 2 (13:ℤ),cappedValuation 3 2 (13:ℤ),cappedValuation 5 2 (13:ℤ),cappedValuation 2 2 (12:ℤ),cappedValuation 3 2 (12:ℤ),cappedValuation 5 2 (12:ℤ),cappedValuation 2 2 (14:ℤ),cappedValuation 3 2 (14:ℤ),cappedValuation 5 2 (14:ℤ),cappedValuation 2 2 (13:ℤ),cappedValuation 3 2 (13:ℤ),cappedValuation 5 2 (13:ℤ),cappedValuation 2 2 (15:ℤ),cappedValuation 3 2 (15:ℤ),cappedValuation 5 2 (15:ℤ),cappedValuation 2 2 (14:ℤ),cappedValuation 3 2 (14:ℤ),cappedValuation 5 2 (14:ℤ),cappedValuation 2 2 (16:ℤ),cappedValuation 3 2 (16:ℤ),cappedValuation 5 2 (16:ℤ),cappedValuation 2 2 (15:ℤ),cappedValuation 3 2 (15:ℤ),cappedValuation 5 2 (15:ℤ),cappedValuation 2 2 (17:ℤ),cappedValuation 3 2 (17:ℤ),cappedValuation 5 2 (17:ℤ),cappedValuation 2 2 (16:ℤ),cappedValuation 3 2 (16:ℤ),cappedValuation 5 2 (16:ℤ),cappedValuation 2 2 (18:ℤ),cappedValuation 3 2 (18:ℤ),cappedValuation 5 2 (18:ℤ),cappedValuation 2 2 (17:ℤ),cappedValuation 3 2 (17:ℤ),cappedValuation 5 2 (17:ℤ),cappedValuation 2 2 (19:ℤ),cappedValuation 3 2 (19:ℤ),cappedValuation 5 2 (19:ℤ),cappedValuation 2 2 (18:ℤ),cappedValuation 3 2 (18:ℤ),cappedValuation 5 2 (18:ℤ),cappedValuation 2 2 (20:ℤ),cappedValuation 3 2 (20:ℤ),cappedValuation 5 2 (20:ℤ),cappedValuation 2 2 (19:ℤ),cappedValuation 3 2 (19:ℤ),cappedValuation 5 2 (19:ℤ),cappedValuation 2 2 (21:ℤ),cappedValuation 3 2 (21:ℤ),cappedValuation 5 2 (21:ℤ),cappedValuation 2 2 (20:ℤ),cappedValuation 3 2 (20:ℤ),cappedValuation 5 2 (20:ℤ),cappedValuation 2 2 (22:ℤ),cappedValuation 3 2 (22:ℤ),cappedValuation 5 2 (22:ℤ),cappedValuation 2 2 (21:ℤ),cappedValuation 3 2 (21:ℤ),cappedValuation 5 2 (21:ℤ),cappedValuation 2 2 (23:ℤ),cappedValuation 3 2 (23:ℤ),cappedValuation 5 2 (23:ℤ),cappedValuation 2 2 (22:ℤ),cappedValuation 3 2 (22:ℤ),cappedValuation 5 2 (22:ℤ),cappedValuation 2 2 (24:ℤ),cappedValuation 3 2 (24:ℤ),cappedValuation 5 2 (24:ℤ),cappedValuation 2 2 (23:ℤ),cappedValuation 3 2 (23:ℤ),cappedValuation 5 2 (23:ℤ),cappedValuation 2 2 (25:ℤ),cappedValuation 3 2 (25:ℤ),cappedValuation 5 2 (25:ℤ),cappedValuation 2 2 (24:ℤ),cappedValuation 3 2 (24:ℤ),cappedValuation 5 2 (24:ℤ),cappedValuation 2 2 (26:ℤ),cappedValuation 3 2 (26:ℤ),cappedValuation 5 2 (26:ℤ),cappedValuation 2 2 (25:ℤ),cappedValuation 3 2 (25:ℤ),cappedValuation 5 2 (25:ℤ),cappedValuation 2 2 (27:ℤ),cappedValuation 3 2 (27:ℤ),cappedValuation 5 2 (27:ℤ),cappedValuation 2 2 (26:ℤ),cappedValuation 3 2 (26:ℤ),cappedValuation 5 2 (26:ℤ),cappedValuation 2 2 (28:ℤ),cappedValuation 3 2 (28:ℤ),cappedValuation 5 2 (28:ℤ),cappedValuation 2 2 (27:ℤ),cappedValuation 3 2 (27:ℤ),cappedValuation 5 2 (27:ℤ),cappedValuation 2 2 (29:ℤ),cappedValuation 3 2 (29:ℤ),cappedValuation 5 2 (29:ℤ),cappedValuation 2 2 (28:ℤ),cappedValuation 3 2 (28:ℤ),cappedValuation 5 2 (28:ℤ),cappedValuation 2 2 (30:ℤ),cappedValuation 3 2 (30:ℤ),cappedValuation 5 2 (30:ℤ),cappedValuation 2 2 (29:ℤ),cappedValuation 3 2 (29:ℤ),cappedValuation 5 2 (29:ℤ),cappedValuation 2 2 (31:ℤ),cappedValuation 3 2 (31:ℤ),cappedValuation 5 2 (31:ℤ),cappedValuation 2 2 (30:ℤ),cappedValuation 3 2 (30:ℤ),cappedValuation 5 2 (30:ℤ),cappedValuation 2 2 (32:ℤ),cappedValuation 3 2 (32:ℤ),cappedValuation 5 2 (32:ℤ),cappedValuation 2 2 (31:ℤ),cappedValuation 3 2 (31:ℤ),cappedValuation 5 2 (31:ℤ),cappedValuation 2 2 (33:ℤ),cappedValuation 3 2 (33:ℤ),cappedValuation 5 2 (33:ℤ),cappedValuation 2 2 (32:ℤ),cappedValuation 3 2 (32:ℤ),cappedValuation 5 2 (32:ℤ),cappedValuation 2 2 (34:ℤ),cappedValuation 3 2 (34:ℤ),cappedValuation 5 2 (34:ℤ),cappedValuation 2 2 (33:ℤ),cappedValuation 3 2 (33:ℤ),cappedValuation 5 2 (33:ℤ),cappedValuation 2 2 (35:ℤ),cappedValuation 3 2 (35:ℤ),cappedValuation 5 2 (35:ℤ),cappedValuation 2 2 (34:ℤ),cappedValuation 3 2 (34:ℤ),cappedValuation 5 2 (34:ℤ),cappedValuation 2 2 (36:ℤ),cappedValuation 3 2 (36:ℤ),cappedValuation 5 2 (36:ℤ),cappedValuation 2 2 (35:ℤ),cappedValuation 3 2 (35:ℤ),cappedValuation 5 2 (35:ℤ),cappedValuation 2 2 (37:ℤ),cappedValuation 3 2 (37:ℤ),cappedValuation 5 2 (37:ℤ),cappedValuation 2 2 (36:ℤ),cappedValuation 3 2 (36:ℤ),cappedValuation 5 2 (36:ℤ),cappedValuation 2 2 (38:ℤ),cappedValuation 3 2 (38:ℤ),cappedValuation 5 2 (38:ℤ),cappedValuation 2 2 (37:ℤ),cappedValuation 3 2 (37:ℤ),cappedValuation 5 2 (37:ℤ),cappedValuation 2 2 (39:ℤ),cappedValuation 3 2 (39:ℤ),cappedValuation 5 2 (39:ℤ),cappedValuation 2 2 (38:ℤ),cappedValuation 3 2 (38:ℤ),cappedValuation 5 2 (38:ℤ),cappedValuation 2 2 (40:ℤ),cappedValuation 3 2 (40:ℤ),cappedValuation 5 2 (40:ℤ),cappedValuation 2 2 (39:ℤ),cappedValuation 3 2 (39:ℤ),cappedValuation 5 2 (39:ℤ),cappedValuation 2 2 (41:ℤ),cappedValuation 3 2 (41:ℤ),cappedValuation 5 2 (41:ℤ),cappedValuation 2 2 (40:ℤ),cappedValuation 3 2 (40:ℤ),cappedValuation 5 2 (40:ℤ),cappedValuation 2 2 (42:ℤ),cappedValuation 3 2 (42:ℤ),cappedValuation 5 2 (42:ℤ),cappedValuation 2 2 (41:ℤ),cappedValuation 3 2 (41:ℤ),cappedValuation 5 2 (41:ℤ),cappedValuation 2 2 (43:ℤ),cappedValuation 3 2 (43:ℤ),cappedValuation 5 2 (43:ℤ),cappedValuation 2 2 (42:ℤ),cappedValuation 3 2 (42:ℤ),cappedValuation 5 2 (42:ℤ),cappedValuation 2 2 (44:ℤ),cappedValuation 3 2 (44:ℤ),cappedValuation 5 2 (44:ℤ),cappedValuation 2 2 (43:ℤ),cappedValuation 3 2 (43:ℤ),cappedValuation 5 2 (43:ℤ),cappedValuation 2 2 (45:ℤ),cappedValuation 3 2 (45:ℤ),cappedValuation 5 2 (45:ℤ),cappedValuation 2 2 (44:ℤ),cappedValuation 3 2 (44:ℤ),cappedValuation 5 2 (44:ℤ),cappedValuation 2 2 (46:ℤ),cappedValuation 3 2 (46:ℤ),cappedValuation 5 2 (46:ℤ),cappedValuation 2 2 (45:ℤ),cappedValuation 3 2 (45:ℤ),cappedValuation 5 2 (45:ℤ),cappedValuation 2 2 (47:ℤ),cappedValuation 3 2 (47:ℤ),cappedValuation 5 2 (47:ℤ),cappedValuation 2 2 (46:ℤ),cappedValuation 3 2 (46:ℤ),cappedValuation 5 2 (46:ℤ),cappedValuation 2 2 (48:ℤ),cappedValuation 3 2 (48:ℤ),cappedValuation 5 2 (48:ℤ)] : List ℕ) = [1,0,0,2,0,0,0,1,0,0,0,1,2,0,0,1,1,0,0,0,1,0,0,0,1,1,0,2,0,0,0,0,0,0,2,0,2,0,0,1,0,1,0,2,0,0,0,0,1,0,1,2,1,0,0,0,0,0,0,0,2,1,0,1,0,0,0,0,0,0,1,1,1,0,0,2,0,0,0,1,1,0,0,0,2,0,0,1,2,0,0,0,0,0,0,0,1,2,0,2,0,1,0,0,0,0,1,0,2,0,1,1,0,0,0,1,0,0,0,0,1,0,0,2,1,0,0,0,0,0,0,2,2,1,0,1,0,0,0,0,2,0,2,0,1,0,0,2,0,0,0,2,0,0,0,0,2,0,0,1,1,1,0,0,0,0,0,0,1,1,1,2,0,0,0,0,0,0,1,0,2,0,0,1,0,0,0,1,0,0,0,1,1,0,0,2,2,0,0,0,1,0,0,0,2,2,0,1,0,0,0,0,0,0,1,0,1,0,0,2,0,1,0,1,0,0,0,0,2,0,1,1,1,0,0,0,0,0,0,0,1,1,0,2,0,0,0,0,0,0,2,1,2,0,0,1,0,0,0,2,1,0,0,0,1,0,0,2,1,0] := by simp only [signature_0,signature_1,signature_2,signature_3,signature_4,signature_5,signature_6,signature_7,signature_8,signature_9,signature_10,signature_11,signature_12,signature_13,signature_14,signature_15,signature_16,signature_17,signature_18,signature_19,signature_20,signature_21,signature_22,signature_23,signature_24,signature_25,signature_26,signature_27,signature_28,signature_29,signature_30,signature_31,signature_32,signature_33,signature_34,signature_35,signature_36,signature_37,signature_38,signature_39,signature_40,signature_41,signature_42,signature_43,signature_44,signature_45,signature_46,signature_47,signature_48,signature_49,signature_50,signature_51,signature_52,signature_53,signature_54,signature_55,signature_56,signature_57,signature_58,signature_59,signature_60,signature_61,signature_62,signature_63,signature_64,signature_65,signature_66,signature_67,signature_68,signature_69,signature_70,signature_71,signature_72,signature_73,signature_74,signature_75,signature_76,signature_77,signature_78,signature_79,signature_80,signature_81,signature_82,signature_83,signature_84,signature_85,signature_86,signature_87,signature_88,signature_89,signature_90,signature_91,signature_92,signature_93,signature_94,signature_95,signature_96,signature_97,signature_98,signature_99,signature_100,signature_101,signature_102,signature_103,signature_104,signature_105,signature_106,signature_107,signature_108,signature_109,signature_110,signature_111,signature_112,signature_113,signature_114,signature_115,signature_116,signature_117,signature_118,signature_119,signature_120,signature_121,signature_122,signature_123,signature_124,signature_125,signature_126,signature_127,signature_128,signature_129,signature_130,signature_131,signature_132,signature_133,signature_134,signature_135,signature_136,signature_137,signature_138,signature_139,signature_140]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DevelopmentCertificate/Variantc39c3c0fd81a7f41cb57089a8aa88d0b361931a57c96b8e8f422e972be0413c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DevelopmentCertificate/Variantc39c3c0fd81a7f41cb57089a8aa88d0b361931a57c96b8e8f422e972be0413c3.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c4793e962c5016e025716f988c87e323e04e013` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
