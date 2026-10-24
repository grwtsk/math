# coefficients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90bb5adc4a79c291222a66a5e069d712a33a59bff3d07d3361d9ab5070eaa17c",
  "kind": "def",
  "lexical_name": "coefficients",
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
  "slug": "coefficients--2369a9e4967f8d178f35ac4b",
  "source": {
    "blob": "bf64a206478869ebff187ea796550bb2984619f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 22,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTenHeightBernstein.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2369a9e4967f8d178f35ac4b302c0d827543340406aae3680b5b546c0f465e31",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripTenHeightBernstein.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90bb5adc4a79c291222a66a5e069d712a33a59bff3d07d3361d9ab5070eaa17c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coefficients : Fin 11 → Fin 6 → ℕ :=
  ![
    ![2304283155122025, 21142506400843725, 85631709139194650, 207329642867741850, 244325497745664525, 1389340771395625],
    ![23608291066996020, 213963469982300100, 861761560488040200, 2091131203088280200, 2470047032506660100, 26322210991116020],
    ![108808161481207764, 973786953134845220, 3900023735721543240, 9487064555199636040, 11233618642767984420, 173599031636254164],
    ![297079254552228192, 2624620570233126560, 10452243033268784320, 25494899032889875520, 30266064606144763360, 607867290842773792],
    ![532123473129852864, 4639311068725467520, 18370336993488461440, 44942267358803107840, 53496718479993437120, 1313600519083176064],
    ![653368264947689472, 5619418365438056960, 22123481881680133120, 54300878517632952320, 64819697959239285760, 1871451222796099072],
    ![556937046199434240, 4723529917955430400, 18488496903125939200, 45540636125847577600, 54524240418341888000, 1801508323864253440],
    ![325435660410544128, 2720676098832343040, 10586565717926010880, 26177791529561415680, 31439843461021450240, 1165377210964246528],
    ![124756817118511104, 1027635830718955520, 3974908014287831040, 9870294155174871040, 11893370768769515520, 487105614282031104],
    ![28333073776508928, 229843089541693440, 883670739725844480, 2204308601964462080, 2665322495635619840, 119174617631817728],
    ![2894763669848064, 23115317092024320, 88325577325936640, 221417047244144640, 268701746929336320, 12989723588952064]
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripTenHeightBernstein.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTenHeightBernstein.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf64a206478869ebff187ea796550bb2984619f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
