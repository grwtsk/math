# pointY

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57635a4ff626636b6d6f8c7eebf0bee6cb933b7b6f3811f85786281d7082b47f",
  "kind": "def",
  "lexical_name": "pointY",
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
  "slug": "pointy--2dfdbd25f5eab92df1e7a365",
  "source": {
    "blob": "9b489d813ddf451a7c8d164ca808fb569b29b5b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 69,
    "path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2dfdbd25f5eab92df1e7a365e44c8d7033a54abfcc2164d579575dc723b9a2eb",
  "verification": {
    "reference": "docs/verification/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57635a4ff626636b6d6f8c7eebf0bee6cb933b7b6f3811f85786281d7082b47f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pointY : Fin 32 → ℚ := ![
    (46111179066568373276607383102482144371741815219099939 : ℚ),
    (1215745994536280739541523550709421744253343778830649 : ℚ),
    ((1318887523853880583666480399346070475437416669116157773 : ℚ) / 27),
    (45469318950895008100110363225734405329931508848152439 : ℚ),
    (8248098441085605177795173740047151713081679803826295 : ℚ),
    (35039949672608908854097547246063300466459786974561399 : ℚ),
    (59120290116614451959806566061007034385548422315557655 : ℚ),
    (417240744005751235417966893171909121015622127878014439 : ℚ),
    (48133228635307144812860154882618375388961803603653359 : ℚ),
    (34181028216507334116572719306351091991947961215512439 : ℚ),
    (53850940566565683134619753906882886861610126637377399 : ℚ),
    (5043034032676679080907370401847501570294251282527799 : ℚ),
    ((308831275829136886260134068291679983315164149145219097 : ℚ) / 8),
    (52576900190391597126212347647253606266517688605410359 : ℚ),
    (7233068110664577625624691797727005745748746428983959 : ℚ),
    (8721305327064650980334193697546159894082981290426307 : ℚ),
    (12629454082754085813424972634967232920799950887988359 : ℚ),
    (112252649320378317400537269027978355118572889895583799 : ℚ),
    (18824833359492620836802938656259778030946627675230039 : ℚ),
    (53597244206965961195885993921166172011561612233629559 : ℚ),
    (8935108690519176550367540044314374317678553998365239 : ℚ),
    (26771171797667975348875052454770449653345087625477799 : ℚ),
    (27509307978199386953099786312866803703357383022035239 : ℚ),
    (29598791605568521450032539172535594675573347618078239 : ℚ),
    (28707194425824194229749493385297886276143005584430359 : ℚ),
    (48285514471575161902643629074973045338520277417757335 : ℚ),
    (54774008346958134705142692377896672040680545719542679 : ℚ),
    (47603089514353981823409086886326475736479031451520155 : ℚ),
    (10867545979063818686920688106980677205378178408655799 : ℚ),
    (37664490123215897851101937789570480710930615542924087 : ℚ),
    (31360579392942811665262265279771839971273135748081559 : ℚ),
    (49971003620032674130056543677631999602019036919525559 : ℚ)
  ]

/-- An exact rational equation check, not a group-theoretic claim. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b489d813ddf451a7c8d164ca808fb569b29b5b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
