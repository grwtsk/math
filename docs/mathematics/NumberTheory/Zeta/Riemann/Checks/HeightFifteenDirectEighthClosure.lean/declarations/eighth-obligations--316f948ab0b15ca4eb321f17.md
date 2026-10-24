# eighth_obligations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8cad3aa-6c5e-5b12-4bb1-cc18bf805593",
  "kind": "theorem",
  "lexical_name": "eighth_obligations",
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
  "slug": "eighth-obligations--316f948ab0b15ca4eb321f17",
  "source": {
    "blob": "e5f82ecda6f8d29647531d5bf61942ff9ee919f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 32,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectEighthClosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:316f948ab0b15ca4eb321f1769a2afceb825527431a7060527bed5b0431d6b39",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectEighthClosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8cad3aa-6c5e-5b12-4bb1-cc18bf805593`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eighth_obligations : EighthObligations := by
  unfold EighthObligations eighthWidths eighthExpected
  simpa [Pieces] using ⟨eighth000,eighth001,eighth002,eighth003,eighth004,eighth005,eighth006,eighth007,eighth008,eighth009,eighth010,eighth011,eighth012,eighth013,eighth014,eighth015,eighth016,eighth017,eighth018,eighth019,eighth020,eighth021,eighth022,eighth023,eighth024,eighth025,eighth026,eighth027,eighth028,eighth029,eighth030,eighth031,eighth032,eighth033,eighth034,eighth035,eighth036,eighth037,eighth038,eighth039,eighth040,eighth041,eighth042,eighth043,eighth044,eighth045,eighth046,eighth047,eighth048,eighth049,eighth050,eighth051,eighth052,eighth053,eighth054,eighth055,eighth056,eighth057,eighth058,eighth059,eighth060,eighth061,eighth062,eighth063,eighth064,eighth065,eighth066,eighth067,eighth068,eighth069,eighth070,eighth071,eighth072,eighth073,eighth074,eighth075,eighth076,eighth077,eighth078,eighth079,eighth080,eighth081,eighth082,eighth083,eighth084,eighth085,eighth086,eighth087,eighth088,eighth089,eighth090,eighth091,eighth092,eighth093,eighth094,eighth095,eighth096,eighth097,eighth098,eighth099,eighth100,eighth101,eighth102,eighth103,eighth104,eighth105,eighth106,eighth107,eighth108,eighth109,eighth110,eighth111,eighth112,eighth113,eighth114,eighth115,eighth116,eighth117,eighth118,eighth119,eighth120,eighth121,eighth122,eighth123,eighth124,eighth125,eighth126,eighth127,eighth128,eighth129,eighth130,eighth131,eighth132,eighth133,eighth134,eighth135,eighth136,eighth137,eighth138,eighth139,eighth140,eighth141,eighth142,eighth143,eighth144,eighth145,eighth146,eighth147,eighth148,eighth149,eighth150,eighth151,eighth152,eighth153,eighth154,eighth155,eighth156,eighth157,eighth158,eighth159,eighth160,eighth161,eighth162,eighth163,eighth164,eighth165,eighth166,eighth167,eighth168,eighth169,eighth170,eighth171,eighth172,eighth173,eighth174,eighth175,eighth176,eighth177,eighth178,eighth179,eighth180,eighth181,eighth182,eighth183,eighth184,eighth185,eighth186,eighth187,eighth188,eighth189,eighth190,eighth191,eighth192,eighth193,eighth194,eighth195,eighth196,eighth197,eighth198,eighth199,eighth200,eighth201,eighth202,eighth203,eighth204,eighth205,eighth206,eighth207,eighth208,eighth209,eighth210,eighth211,eighth212,eighth213,eighth214,eighth215,eighth216,eighth217,eighth218,eighth219,eighth220,eighth221,eighth222,eighth223,eighth224,eighth225,eighth226,eighth227,eighth228,eighth229,eighth230,eighth231,eighth232,eighth233,eighth234,eighth235,eighth236,eighth237,eighth238,eighth239,eighth240,eighth241,eighth242,eighth243,eighth244,eighth245,eighth246,eighth247,eighth248,eighth249,eighth250,eighth251,eighth252,eighth253,eighth254,eighth255,eighth256,eighth257,eighth258,eighth259,eighth260,eighth261,eighth262,eighth263,eighth264,eighth265,eighth266,eighth267,eighth268,eighth269,eighth270,eighth271,eighth272,eighth273,eighth274,eighth275,eighth276,eighth277,eighth278,eighth279,eighth280,eighth281,eighth282,eighth283,eighth284,eighth285,eighth286,eighth287,eighth288,eighth289,eighth290,eighth291,eighth292,eighth293,eighth294,eighth295,eighth296,eighth297⟩

/-- Complete old-cell coverage and signed total one, with no cancellation shortcut. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectEighthClosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectEighthClosure.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5f82ecda6f8d29647531d5bf61942ff9ee919f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
