# initial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87a8e48483b11063550361f82b03f62db54a189b561389172d937db5f5e2f53f",
  "kind": "def",
  "lexical_name": "initial",
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
  "slug": "initial--bcd0dccdd3ac07a486501908",
  "source": {
    "blob": "3dc52aa356ad8ed4eb5e40c75876c255eb58b977",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 26,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlockData.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcd0dccdd3ac07a48650190839eb3345462e20af76935b84c1cb6e8840666995",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlockData.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87a8e48483b11063550361f82b03f62db54a189b561389172d937db5f5e2f53f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def initial (i : Fin 64) : GridState :=
  match i.1 with
  | 0 => ⟨17152257374547647503, -6155320039155456502, 62⟩
  | 1 => ⟨17151530191287822394, -6157140870954149541, 62⟩
  | 2 => ⟨17150804228956729268, -6158958078841161642, 62⟩
  | 3 => ⟨17150079483200260443, -6160771677020539636, 62⟩
  | 4 => ⟨17149355949688100788, -6162581679613310785, 62⟩
  | 5 => ⟨17148633624113552559, -6164388100658127331, 62⟩
  | 6 => ⟨17147912502193361846, -6166190954111904794, 62⟩
  | 7 => ⟨17147192579667546630, -6167990253850454109, 62⟩
  | 8 => ⟨17146473852299226422, -6169786013669107677, 62⟩
  | 9 => ⟨17145756315874453473, -6171578247283339384, 62⟩
  | 10 => ⟨17145039966202045531, -6173366968329378674, 62⟩
  | 11 => ⟨17144324799113420134, -6175152190364818730, 62⟩
  | 12 => ⟨17143610810462430422, -6176933926869218846, 62⟩
  | 13 => ⟨17142897996125202442, -6178712191244701039, 62⟩
  | 14 => ⟨17142186351999973941, -6180486996816540987, 62⟩
  | 15 => ⟨17141475874006934629, -6182258356833753333, 62⟩
  | 16 => ⟨17140766558088067884, -6184026284469671447, 62⟩
  | 17 => ⟨17140058400206993903, -6185790792822521683, 62⟩
  | 18 => ⟨17139351396348814262, -6187551894915992215, 62⟩
  | 19 => ⟨17138645542519957889, -6189309603699796494, 62⟩
  | 20 => ⟨17137940834748028418, -6191063932050231404, 62⟩
  | 21 => ⟨17137237269081652924, -6192814892770730169, 62⟩
  | 22 => ⟨17136534841590332011, -6194562498592410060, 62⟩
  | 23 => ⟨17135833548364291245, -6196306762174614986, 62⟩
  | 24 => ⟨17135133385514333923, -6198047696105453000, 62⟩
  | 25 => ⟨17134434349171695143, -6199785312902328792, 62⟩
  | 26 => ⟨17133736435487897192, -6201519625012471218, 62⟩
  | 27 => ⟨17133039640634606211, -6203250644813455928, 62⟩
  | 28 => ⟨17132343960803490132, -6204978384613723142, 62⟩
  | 29 => ⟨17131649392206077882, -6206702856653090622, 63⟩
  | 30 => ⟨17130955931073619827, -6208424073103261908, 63⟩
  | 31 => ⟨17130263573656949455, -6210142046068329863, 63⟩
  | 32 => ⟨17129572316226346267, -6211856787585275567, 63⟩
  | 33 => ⟨17128882155071399894, -6213568309624462639, 63⟩
  | 34 => ⟨17128193086500875387, -6215276624090127007, 63⟩
  | 35 => ⟨17127505106842579704, -6216981742820862198, 63⟩
  | 36 => ⟨17126818212443229361, -6218683677590100184, 63⟩
  | 37 => ⟨17126132399668319234, -6220382440106587843, 63⟩
  | 38 => ⟨17125447664901992517, -6222078042014859076, 63⟩
  | 39 => ⟨17124764004546911802, -6223770494895702621, 63⟩
  | 40 => ⟨17124081415024131284, -6225459810266625637, 63⟩
  | 41 => ⟨17123399892772970076, -6227145999582313063, 63⟩
  | 42 => ⟨17122719434250886618, -6228829074235082843, 63⟩
  | 43 => ⟨17122040035933354175, -6230509045555337022, 63⟩
  | 44 => ⟨17121361694313737408, -6232185924812008785, 63⟩
  | 45 => ⟨17120684405903170007, -6233859723213005470, 63⟩
  | 46 => ⟨17120008167230433379, -6235530451905647603, 63⟩
  | 47 => ⟨17119332974841836376, -6237198121977103991, 63⟩
  | 48 => ⟨17118658825301096053, -6238862744454822926, 63⟩
  | 49 => ⟨17117985715189219448, -6240524330306959537, 63⟩
  | 50 => ⟨17117313641104386369, -6242182890442799322, 63⟩
  | 51 => ⟨17116642599661833183, -6243838435713177917, 63⟩
  | 52 => ⟨17115972587493737590, -6245490976910897133, 63⟩
  | 53 => ⟨17115303601249104380, -6247140524771137297, 63⟩
  | 54 => ⟨17114635637593652157, -6248787089971865948, 63⟩
  | 55 => ⟨17113968693209701021, -6250430683134242915, 63⟩
  | 56 => ⟨17113302764796061197, -6252071314823021820, 63⟩
  | 57 => ⟨17112637849067922611, -6253708995546948047, 63⟩
  | 58 => ⟨17111973942756745386, -6255343735759153209, 63⟩
  | 59 => ⟨17111311042610151269, -6256975545857546153, 63⟩
  | 60 => ⟨17110649145391815957, -6258604436185200535, 63⟩
  | 61 => ⟨17109988247881362335, -6260230417030739009, 63⟩
  | 62 => ⟨17109328346874254605, -6261853498628714060, 63⟩
  | _ => ⟨17108669439181693291, -6263473691159985511, 63⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlockData.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlockData.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dc52aa356ad8ed4eb5e40c75876c255eb58b977` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
