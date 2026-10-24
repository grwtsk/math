# quarter_obligations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7a4b9db-a5e9-523d-4df7-587a139fda7e",
  "kind": "theorem",
  "lexical_name": "quarter_obligations",
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
  "slug": "quarter-obligations--bc4c79e00fc518364fe43e1e",
  "source": {
    "blob": "917b5507e577ca2e38f0a61718ee885f1adf0418",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 29,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectQuarterClosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc4c79e00fc518364fe43e1ef7853018e242fc9b8a476d897bbf1d5f46e0457e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectQuarterClosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7a4b9db-a5e9-523d-4df7-587a139fda7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quarter_obligations : QuarterObligations := by
  unfold QuarterObligations quarterWidths quarterExpected
  simpa [Pieces] using ⟨quarter000,quarter001,quarter002,quarter003,quarter004,quarter005,quarter006,quarter007,quarter008,quarter009,quarter010,quarter011,quarter012,quarter013,quarter014,quarter015,quarter016,quarter017,quarter018,quarter019,quarter020,quarter021,quarter022,quarter023,quarter024,quarter025,quarter026,quarter027,quarter028,quarter029,quarter030,quarter031,quarter032,quarter033,quarter034,quarter035,quarter036,quarter037,quarter038,quarter039,quarter040,quarter041,quarter042,quarter043,quarter044,quarter045,quarter046,quarter047,quarter048,quarter049,quarter050,quarter051,quarter052,quarter053,quarter054,quarter055,quarter056,quarter057,quarter058,quarter059,quarter060,quarter061,quarter062,quarter063,quarter064,quarter065,quarter066,quarter067,quarter068,quarter069,quarter070,quarter071,quarter072,quarter073,quarter074,quarter075,quarter076,quarter077,quarter078,quarter079,quarter080,quarter081,quarter082,quarter083,quarter084,quarter085,quarter086,quarter087,quarter088,quarter089,quarter090,quarter091,quarter092,quarter093,quarter094,quarter095,quarter096,quarter097,quarter098,quarter099,quarter100,quarter101,quarter102,quarter103,quarter104,quarter105,quarter106,quarter107,quarter108,quarter109,quarter110,quarter111,quarter112,quarter113,quarter114,quarter115,quarter116,quarter117,quarter118,quarter119,quarter120,quarter121,quarter122,quarter123,quarter124,quarter125,quarter126,quarter127,quarter128,quarter129,quarter130,quarter131,quarter132,quarter133,quarter134,quarter135,quarter136,quarter137,quarter138,quarter139,quarter140,quarter141,quarter142,quarter143,quarter144,quarter145,quarter146,quarter147,quarter148,quarter149⟩

/-- Complete old-cell coverage and signed total one, with no block cancellation shortcut. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectQuarterClosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectQuarterClosure.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `917b5507e577ca2e38f0a61718ee885f1adf0418` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
