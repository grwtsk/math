# coefficients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c18ef55208dc5ebeb276cbb29cf7c13ae8d49c58847f78fc673d106f1b8ff98e",
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
  "slug": "coefficients--0ee6a8b4db12f94812cf9c93",
  "source": {
    "blob": "a8f0995dc9d24abcc94dff1535f375a78b47956d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 22,
    "line": 20,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandBernstein.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ee6a8b4db12f94812cf9c930d83380bfac88cdc3f19afd216d1377d3b5ecb4e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandBernstein.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c18ef55208dc5ebeb276cbb29cf7c13ae8d49c58847f78fc673d106f1b8ff98e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–22.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coefficients : Fin 12 → Fin 12 → ℕ :=
  ![![769515079053255, 8758698816486397, 44778889304144593, 135732382643481891, 270946828874850758, 373748887367675074, 363156969820907522, 248177323444028166, 116638961046832003, 35787921983061041, 6420307317634077, 506257188689639], ![7857278886406683, 89431870510182681, 457036997970722013, 1384252121793696199, 2759864121305328142, 3800586813180560218, 3684577777645586330, 2510555320932387918, 1175320285067424679, 358739758683989437, 63895717912309689, 4986293686961083], ![36370651894335393, 414003008152037435, 2114957015569913543, 6400467528569047397, 12744594650984785738, 17518610563403131246, 16942203711264001326, 11506217125572816138, 5363227042676659077, 1627357054123309543, 287463750376164763, 22161542945518081], ![100711547182675157, 1146576346112439543, 5855371199374625267, 17705189425176054633, 35206241832349266002, 48298716992600726598, 46583377185865037574, 31521878423254545682, 14620804774464735753, 4406498315342808467, 770930253621056471, 58577290370821301], ![185283893345642886, 2109976472326486562, 10772040307565137258, 32543646162609708062, 64616628896830812988, 88454334997638838804, 85056590233359711892, 57320363337712423868, 26438379994638229982, 7906076122565079338, 1367570590496861538, 102096823383859910], ![237686013512901102, 2707774784585716122, 13820344772986712002, 41714870162587446310, 82693470201057237324, 112928191139325465540, 108223742834499494468, 72593398215303869388, 33267088635700440294, 9857225571478464130, 1681979404333440474, 122851988809264174], ![216817175635554530, 2471352050900760406, 12610903802555004398, 38027529501730108650, 75250563033339654868, 102487233447214587804, 97840604849887730460, 65276614757493953108, 29688525055281762090, 8701071069130650158, 1460094579929850902, 103707670159497122], ![140537177495850282, 1603027516739128686, 8178621667877512038, 24636599328290342482, 48655758004505620388, 66063667576836536204, 62789271037098987788, 41628585385826467108, 18763466552502415762, 5426408031822231718, 891668029672596782, 61034629638276842], ![63376318345295683, 723570573719197457, 3691254226943045557, 11106636769294076303, 21885854087721293982, 29611149202995296010, 27997678207121931082, 18423774808707955422, 8214090008755514223, 2336445613648181397, 373618354028852657, 24294234551226595], ![18915130508409095, 216216143921642493, 1102978543479110353, 3314589017305621347, 6514624641375975238, 8777631175627851202, 8248115021177939714, 5378600560447983238, 2365741494305040067, 658762029272772913, 101541527174574877, 6117431445178151], ![3357598851298029, 38440494018602815, 196107202056085339, 588488021636995809, 1153131694790512706, 1545990906948083990, 1441815887381872086, 929666285754566402, 401894838461233281, 108788050809065979, 15911578038078239, 845040411764685], ![268005564939505, 3074636064484075, 15688262304761655, 47000311330595061, 91760391949159786, 122274307997419342, 112966002550054670, 71795732921165610, 30334158820512021, 7892125659193431, 1064227473486411, 43934690056529]]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandBernstein.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandBernstein.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8f0995dc9d24abcc94dff1535f375a78b47956d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
