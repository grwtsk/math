# tensorCoeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:368229a6f2ebf0b652fe52f67443fa284aeb958792dda9da1fb6dfd4bc7ab048",
  "kind": "def",
  "lexical_name": "tensorCoeff",
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
  "slug": "tensorcoeff--9cac4c4d9fece33593978f65",
  "source": {
    "blob": "6323f8982d831fce9940c93256cc14eee4be0ee5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 254,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variant352a705352c0cee136890b03fab57d3ad96bca0eb6945b85463b6c2c26dac056.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9cac4c4d9fece33593978f657fb7fb2ba6aa9c1a892f34996fa1739ae8d7d254",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variant352a705352c0cee136890b03fab57d3ad96bca0eb6945b85463b6c2c26dac056.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:368229a6f2ebf0b652fe52f67443fa284aeb958792dda9da1fb6dfd4bc7ab048`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def tensorCoeff (i j : ℕ) : ℝ :=
  match i, j with
  | 0, 0 => 24576
  | 0, 1 => 24576
  | 0, 2 => 24576
  | 0, 3 => 24576
  | 0, 4 => 24576
  | 0, 5 => 24576
  | 0, 6 => 24576
  | 0, 7 => 24576
  | 0, 8 => 24576
  | 1, 0 => (168960 / 7)
  | 1, 1 => (15367680 / 637)
  | 1, 2 => (15360000 / 637)
  | 1, 3 => (15352320 / 637)
  | 1, 4 => (15344640 / 637)
  | 1, 5 => (15336960 / 637)
  | 1, 6 => (15329280 / 637)
  | 1, 7 => (2188800 / 91)
  | 1, 8 => (15313920 / 637)
  | 2, 0 => (10781184 / 455)
  | 2, 1 => (980104704 / 41405)
  | 2, 2 => (623700791808 / 26374985)
  | 2, 3 => (623075179008 / 26374985)
  | 2, 4 => (622449858048 / 26374985)
  | 2, 5 => (621824828928 / 26374985)
  | 2, 6 => (621200091648 / 26374985)
  | 2, 7 => (88653663744 / 3767855)
  | 2, 8 => (88564498944 / 3767855)
  | 3, 0 => (2115712 / 91)
  | 3, 1 => (192239520 / 8281)
  | 3, 2 => (122271843648 / 5274997)
  | 3, 3 => (11109942994144 / 480024727)
  | 3, 4 => (11093163915264 / 480024727)
  | 3, 5 => (11076400528224 / 480024727)
  | 3, 6 => (11059652825920 / 480024727)
  | 3, 7 => (1577560114464 / 68574961)
  | 3, 8 => (1575172063872 / 68574961)
  | 4, 0 => (798848448 / 35035)
  | 4, 1 => (72548599488 / 3188185)
  | 4, 2 => (46120198835136 / 2030873845)
  | 4, 3 => (4188463438286016 / 184809519895)
  | 4, 4 => (76076012532403776 / 3363533262089)
  | 4, 5 => (34510094082363456 / 1528878755495)
  | 4, 6 => (378843088634671296 / 16817666310445)
  | 4, 7 => (54010888981027008 / 2402523758635)
  | 4, 8 => (53901490946163648 / 2402523758635)
  | 5, 0 => (783058876 / 35035)
  | 5, 1 => (5467546902 / 245245)
  | 5, 2 => (45162153220152 / 2030873845)
  | 5, 3 => (315334358825074 / 14216116915)
  | 5, 4 => (372095080170426108 / 16817666310445)
  | 5, 5 => (689281151812525938 / 31232808862255)
  | 5, 6 => (4812723134360185456 / 218629662035785)
  | 5, 7 => (685785889404921498 / 31232808862255)
  | 5, 8 => (684043186534330908 / 31232808862255)
  | 6, 0 => (20714131514 / 945945)
  | 6, 1 => (144557237278 / 6621615)
  | 6, 2 => (170489927580694 / 7833370545)
  | 6, 3 => (108270806223174038 / 4989857037165)
  | 6, 4 => (1403223997480932274 / 64868141483145)
  | 6, 5 => (127303323569005342414 / 5903000874966195)
  | 6, 6 => (888399270393985419878 / 41321006124763365)
  | 6, 7 => (126525955848704858674 / 5903000874966195)
  | 6, 8 => (11467149544837791914 / 536636443178745)
  | 7, 0 => (2897684606 / 135135)
  | 7, 1 => (93421779163 / 4372368)
  | 7, 2 => (1334188169531501 / 62666964360)
  | 7, 3 => (48390967960712257 / 2281077502704)
  | 7, 4 => (9141324826419317237 / 432454276554300)
  | 7, 5 => (284188988720627910223 / 13492573428494160)
  | 7, 6 => (991100359585277654641 / 47224006999729560)
  | 7, 7 => (3178968368432271099277 / 152016327294367536)
  | 7, 8 => (77132383425214836547 / 3701696281518690)
  | 8, 0 => (405139352 / 19305)
  | 8, 1 => (514035439087 / 24594570)
  | 8, 2 => (25109670234358421 / 1206339063930)
  | 8, 3 => (1137807463100913961 / 54888427408815)
  | 8, 4 => (9374161601464846919 / 454076990382015)
  | 8, 5 => (2670004510603495531601 / 129866019249256290)
  | 8, 6 => (18613246649024772838853 / 909062134744794030)
  | 8, 7 => (223764643782540086325226 / 10973678626562156505)
  | 8, 8 => (20278792340546982218863582 / 998604755017156241955)
  | 9, 0 => (924690176 / 45045)
  | 9, 1 => (335031547021 / 16396380)
  | 9, 2 => (817847331284674 / 40211302131)
  | 9, 3 => (1693246740633274501 / 83639508432480)
  | 9, 4 => (122000039783239453889 / 6054359871760200)
  | 9, 5 => (6946039544075371467271 / 346309384664683440)
  | 9, 6 => (230459984725093942835 / 11543646155489448)
  | 9, 7 => (775336158079312979177153 / 39017524005554334240)
  | 9, 8 => (798040328855402019306323 / 40347666869380050180)
  | 10, 0 => (129143132 / 6435)
  | 10, 1 => (1113468769 / 55770)
  | 10, 2 => (7986898215230527 / 402113021310)
  | 10, 3 => (5784424077434275751 / 292738279513680)
  | 10, 4 => (1890997425109207758391 / 96197051295745400)
  | 10, 5 => (3144309542324543244151 / 160786500022888740)
  | 10, 6 => (4865811876076714661247 / 250112333368938040)
  | 10, 7 => (1636117393566948104429737 / 84537968678701057520)
  | 10, 8 => (2019737002004004857451223 / 104903933860388130468)
  | 11, 0 => (562082356 / 28665)
  | 11, 1 => (406864742813 / 20868120)
  | 11, 2 => (28924939524827 / 1492070580)
  | 11, 3 => (1025920968880249259 / 53225141729760)
  | 11, 4 => (188551626662036969528 / 9838334791610325)
  | 11, 5 => (39703443304186946000467 / 2083580430048673920)
  | 11, 6 => (9211105938253303906867 / 486168767011357248)
  | 11, 7 => (165455117790015999594689 / 8783165577007902080)
  | 11, 8 => (275074887159304190846874829 / 14686550740454338265520)
  | 12, 0 => (548871896 / 28665)
  | 12, 1 => (99271040891 / 5217030)
  | 12, 2 => (691245210347779 / 36555729210)
  | 12, 3 => (6411262983565337 / 341186805960)
  | 12, 4 => (244953474702366525527 / 13117779722147100)
  | 12, 5 => (7088332787552416045957 / 381989745508923552)
  | 12, 6 => (739604811542800572710771 / 40108923278436972960)
  | 12, 7 => (443600397018310998215485 / 24208600121628030108)
  | 12, 8 => (401138206029289338028851181 / 22029826110681507398280)
  | 13, 0 => (41203844 / 2205)
  | 13, 1 => (4965428443 / 267540)
  | 13, 2 => (25917063569849 / 1405989585)
  | 13, 3 => (8328506869617159 / 454915741280)
  | 13, 4 => (12231823149629767637 / 672706652417800)
  | 13, 5 => (81636905575654575941 / 4520588704247616)
  | 13, 6 => (27668271583745156434141 / 1542650895324498960)
  | 13, 7 => (4717672054260039696302711 / 264846223552853662720)
  | 13, 8 => (43605905177655017125969961 / 2464875648747581247360)
  | 14, 0 => (5740922 / 315)
  | 14, 1 => (1037164363 / 57330)
  | 14, 2 => (554916006209 / 30900870)
  | 14, 3 => (1737672635572201 / 97481944560)
  | 14, 4 => (1700415320738150207 / 96100950345400)
  | 14, 5 => (368627296061788166107 / 20988447555435360)
  | 14, 6 => (7683921408227217052379 / 440757398664142560)
  | 14, 7 => (2946211732226770684829567 / 170258286569691640320)
  | 14, 8 => (1131000812889208863173615767 / 65847392330828241893760)
  | _, _ => 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variant352a705352c0cee136890b03fab57d3ad96bca0eb6945b85463b6c2c26dac056.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variant352a705352c0cee136890b03fab57d3ad96bca0eb6945b85463b6c2c26dac056.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6323f8982d831fce9940c93256cc14eee4be0ee5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
