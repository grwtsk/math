# sixteenth_obligations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b650dbad-ce55-d3fc-5f15-432bd5f7c5f7",
  "kind": "theorem",
  "lexical_name": "sixteenth_obligations",
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
  "slug": "sixteenth-obligations--ad4406db3624f4de2e20f569",
  "source": {
    "blob": "f64473b8f60a5bb80ce7e925a7f412320a6c042e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 32,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectSixteenthClosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad4406db3624f4de2e20f569606f9efd17ed94d1a4861e79e980efc1a9b1369b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectSixteenthClosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b650dbad-ce55-d3fc-5f15-432bd5f7c5f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sixteenth_obligations : SixteenthObligations := by
  unfold SixteenthObligations sixteenthWidths sixteenthExpected
  simpa [Pieces] using ⟨
    sixteenth000,sixteenth001,sixteenth002,sixteenth003,sixteenth004,sixteenth005,sixteenth006,sixteenth007,sixteenth008,sixteenth009,
    sixteenth010,sixteenth011,sixteenth012,sixteenth013,sixteenth014,sixteenth015,sixteenth016,sixteenth017,sixteenth018,sixteenth019,
    sixteenth020,sixteenth021,sixteenth022,sixteenth023,sixteenth024,sixteenth025,sixteenth026,sixteenth027,sixteenth028,sixteenth029,
    sixteenth030,sixteenth031,sixteenth032,sixteenth033,sixteenth034,sixteenth035,sixteenth036,sixteenth037,sixteenth038,sixteenth039,
    sixteenth040,sixteenth041,sixteenth042,sixteenth043,sixteenth044,sixteenth045,sixteenth046,sixteenth047,sixteenth048,sixteenth049,
    sixteenth050,sixteenth051,sixteenth052,sixteenth053,sixteenth054,sixteenth055,sixteenth056,sixteenth057,sixteenth058,sixteenth059,
    sixteenth060,sixteenth061,sixteenth062,sixteenth063,sixteenth064,sixteenth065,sixteenth066,sixteenth067,sixteenth068,sixteenth069,
    sixteenth070,sixteenth071,sixteenth072,sixteenth073,sixteenth074,sixteenth075,sixteenth076,sixteenth077,sixteenth078,sixteenth079,
    sixteenth080,sixteenth081,sixteenth082,sixteenth083,sixteenth084,sixteenth085,sixteenth086,sixteenth087,sixteenth088,sixteenth089,
    sixteenth090,sixteenth091,sixteenth092,sixteenth093,sixteenth094,sixteenth095,sixteenth096,sixteenth097,sixteenth098,sixteenth099,
    sixteenth100,sixteenth101,sixteenth102,sixteenth103,sixteenth104,sixteenth105,sixteenth106,sixteenth107,sixteenth108,sixteenth109,
    sixteenth110,sixteenth111,sixteenth112,sixteenth113,sixteenth114,sixteenth115,sixteenth116,sixteenth117,sixteenth118,sixteenth119,
    sixteenth120,sixteenth121,sixteenth122,sixteenth123,sixteenth124,sixteenth125,sixteenth126,sixteenth127,sixteenth128,sixteenth129,
    sixteenth130,sixteenth131,sixteenth132,sixteenth133,sixteenth134,sixteenth135,sixteenth136,sixteenth137,sixteenth138,sixteenth139,
    sixteenth140,sixteenth141,sixteenth142,sixteenth143,sixteenth144,sixteenth145,sixteenth146,sixteenth147,sixteenth148,sixteenth149,
    sixteenth150,sixteenth151,sixteenth152,sixteenth153,sixteenth154,sixteenth155,sixteenth156,sixteenth157,sixteenth158,sixteenth159,
    sixteenth160,sixteenth161,sixteenth162,sixteenth163,sixteenth164,sixteenth165,sixteenth166,sixteenth167,sixteenth168,sixteenth169,
    sixteenth170,sixteenth171,sixteenth172,sixteenth173,sixteenth174,sixteenth175,sixteenth176,sixteenth177,sixteenth178,sixteenth179,
    sixteenth180,sixteenth181,sixteenth182,sixteenth183,sixteenth184,sixteenth185,sixteenth186,sixteenth187,sixteenth188,sixteenth189,
    sixteenth190,sixteenth191,sixteenth192,sixteenth193,sixteenth194,sixteenth195,sixteenth196,sixteenth197,sixteenth198,sixteenth199,
    sixteenth200,sixteenth201,sixteenth202,sixteenth203,sixteenth204,sixteenth205,sixteenth206,sixteenth207,sixteenth208,sixteenth209,
    sixteenth210,sixteenth211,sixteenth212,sixteenth213,sixteenth214,sixteenth215,sixteenth216,sixteenth217,sixteenth218,sixteenth219,
    sixteenth220,sixteenth221,sixteenth222,sixteenth223,sixteenth224,sixteenth225,sixteenth226,sixteenth227,sixteenth228,sixteenth229,
    sixteenth230,sixteenth231,sixteenth232,sixteenth233,sixteenth234,sixteenth235,sixteenth236,sixteenth237,sixteenth238,sixteenth239,
    sixteenth240,sixteenth241,sixteenth242,sixteenth243,sixteenth244,sixteenth245,sixteenth246,sixteenth247,sixteenth248,sixteenth249,
    sixteenth250,sixteenth251,sixteenth252,sixteenth253,sixteenth254,sixteenth255,sixteenth256,sixteenth257,sixteenth258,sixteenth259,
    sixteenth260,sixteenth261,sixteenth262,sixteenth263,sixteenth264,sixteenth265,sixteenth266,sixteenth267,sixteenth268,sixteenth269,
    sixteenth270,sixteenth271,sixteenth272,sixteenth273,sixteenth274,sixteenth275,sixteenth276,sixteenth277,sixteenth278,sixteenth279,
    sixteenth280,sixteenth281,sixteenth282,sixteenth283,sixteenth284,sixteenth285,sixteenth286,sixteenth287,sixteenth288,sixteenth289,
    sixteenth290,sixteenth291,sixteenth292,sixteenth293,sixteenth294,sixteenth295,sixteenth296,sixteenth297,sixteenth298,sixteenth299,
    sixteenth300,sixteenth301,sixteenth302,sixteenth303,sixteenth304,sixteenth305,sixteenth306,sixteenth307,sixteenth308,sixteenth309,
    sixteenth310,sixteenth311,sixteenth312,sixteenth313,sixteenth314,sixteenth315,sixteenth316,sixteenth317,sixteenth318,sixteenth319,
    sixteenth320,sixteenth321,sixteenth322,sixteenth323,sixteenth324,sixteenth325,sixteenth326,sixteenth327,sixteenth328,sixteenth329,
    sixteenth330,sixteenth331,sixteenth332,sixteenth333,sixteenth334,sixteenth335,sixteenth336,sixteenth337,sixteenth338,sixteenth339,
    sixteenth340,sixteenth341,sixteenth342,sixteenth343,sixteenth344,sixteenth345,sixteenth346,sixteenth347,sixteenth348,sixteenth349,
    sixteenth350,sixteenth351,sixteenth352,sixteenth353,sixteenth354,sixteenth355,sixteenth356,sixteenth357,sixteenth358,sixteenth359,
    sixteenth360,sixteenth361,sixteenth362,sixteenth363,sixteenth364,sixteenth365,sixteenth366,sixteenth367,sixteenth368,sixteenth369,
    sixteenth370,sixteenth371,sixteenth372,sixteenth373,sixteenth374,sixteenth375,sixteenth376,sixteenth377,sixteenth378,sixteenth379,
    sixteenth380,sixteenth381,sixteenth382,sixteenth383,sixteenth384,sixteenth385,sixteenth386,sixteenth387,sixteenth388,sixteenth389,
    sixteenth390,sixteenth391,sixteenth392,sixteenth393,sixteenth394,sixteenth395,sixteenth396,sixteenth397,sixteenth398,sixteenth399,
    sixteenth400,sixteenth401,sixteenth402,sixteenth403,sixteenth404,sixteenth405,sixteenth406,sixteenth407,sixteenth408,sixteenth409,
    sixteenth410,sixteenth411,sixteenth412,sixteenth413,sixteenth414,sixteenth415,sixteenth416,sixteenth417,sixteenth418,sixteenth419,
    sixteenth420,sixteenth421,sixteenth422,sixteenth423,sixteenth424,sixteenth425,sixteenth426,sixteenth427,sixteenth428,sixteenth429,
    sixteenth430,sixteenth431,sixteenth432,sixteenth433,sixteenth434,sixteenth435,sixteenth436,sixteenth437,sixteenth438,sixteenth439,
    sixteenth440,sixteenth441,sixteenth442,sixteenth443,sixteenth444,sixteenth445,sixteenth446,sixteenth447,sixteenth448,sixteenth449,
    sixteenth450,sixteenth451,sixteenth452,sixteenth453,sixteenth454,sixteenth455,sixteenth456,sixteenth457,sixteenth458,sixteenth459,
    sixteenth460,sixteenth461,sixteenth462,sixteenth463,sixteenth464,sixteenth465,sixteenth466,sixteenth467,sixteenth468,sixteenth469,
    sixteenth470,sixteenth471,sixteenth472,sixteenth473,sixteenth474,sixteenth475,sixteenth476,sixteenth477,sixteenth478,sixteenth479,
    sixteenth480,sixteenth481,sixteenth482,sixteenth483,sixteenth484,sixteenth485,sixteenth486,sixteenth487,sixteenth488,sixteenth489,
    sixteenth490,sixteenth491,sixteenth492,sixteenth493,sixteenth494,sixteenth495,sixteenth496,sixteenth497,sixteenth498,sixteenth499,
    sixteenth500,sixteenth501,sixteenth502,sixteenth503,sixteenth504,sixteenth505,sixteenth506,sixteenth507,sixteenth508,sixteenth509,
    sixteenth510,sixteenth511,sixteenth512,sixteenth513,sixteenth514,sixteenth515,sixteenth516,sixteenth517,sixteenth518,sixteenth519,
    sixteenth520,sixteenth521,sixteenth522,sixteenth523,sixteenth524,sixteenth525,sixteenth526,sixteenth527,sixteenth528,sixteenth529,
    sixteenth530,sixteenth531,sixteenth532,sixteenth533,sixteenth534,sixteenth535,sixteenth536,sixteenth537,sixteenth538,sixteenth539,
    sixteenth540,sixteenth541,sixteenth542,sixteenth543,sixteenth544,sixteenth545,sixteenth546,sixteenth547,sixteenth548,sixteenth549,
    sixteenth550,sixteenth551,sixteenth552,sixteenth553,sixteenth554,sixteenth555,sixteenth556,sixteenth557,sixteenth558,sixteenth559,
    sixteenth560,sixteenth561,sixteenth562,sixteenth563,sixteenth564,sixteenth565,sixteenth566,sixteenth567,sixteenth568,sixteenth569,
    sixteenth570,sixteenth571,sixteenth572,sixteenth573,sixteenth574,sixteenth575,sixteenth576,sixteenth577,sixteenth578,sixteenth579,
    sixteenth580,sixteenth581,sixteenth582,sixteenth583,sixteenth584,sixteenth585,sixteenth586,sixteenth587,sixteenth588,sixteenth589,
    sixteenth590,sixteenth591,sixteenth592,sixteenth593,sixteenth594⟩

/-- Complete old-cell coverage and signed total one, with no cancellation shortcut. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectSixteenthClosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectSixteenthClosure.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f64473b8f60a5bb80ce7e925a7f412320a6c042e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
