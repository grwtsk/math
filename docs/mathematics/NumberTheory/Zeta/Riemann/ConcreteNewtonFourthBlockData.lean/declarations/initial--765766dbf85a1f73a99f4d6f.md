# initial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c267444dd5b136d25f7a9a4fc8324284b098804aa50f263966edd790ecf66fac",
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
  "slug": "initial--765766dbf85a1f73a99f4d6f",
  "source": {
    "blob": "45084201aa867661966d6273cfecd2175b03431a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 16,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlockData.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:765766dbf85a1f73a99f4d6f83a0c026e465c90172db878eccd21a242a20c62c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlockData.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c267444dd5b136d25f7a9a4fc8324284b098804aa50f263966edd790ecf66fac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def initial (i : Fin 64) : GridState :=
  match i.1 with
  | 0 => ⟨17492724732197159769, -5230969865316581368, 48⟩
  | 1 => ⟨17491054848634281748, -5235908230968841329, 48⟩
  | 2 => ⟨17489392169155774598, -5240820683976475787, 48⟩
  | 3 => ⟨17487736627271004027, -5245707491714974564, 48⟩
  | 4 => ⟨17486088157430573490, -5250568917456535695, 48⟩
  | 5 => ⟨17484446695008387164, -5255405220453471753, 48⟩
  | 6 => ⟨17482812176284142012, -5260216656019509495, 48⟩
  | 7 => ⟨17481184538426236603, -5265003475609046328, 48⟩
  | 8 => ⟨17479563719475084761, -5269765926894424862, 48⟩
  | 9 => ⟨17477949658326822521, -5274504253841284697, 48⟩
  | 10 => ⟨17476342294717397256, -5279218696782048547, 48⟩
  | 11 => ⟨17474741569207028199, -5283909492487597818, 48⟩
  | 12 => ⟨17473147423165027933, -5288576874237190886, 48⟩
  | 13 => ⟨17471559798754974790, -5293221071886675490, 48⟩
  | 14 => ⟨17469978638920226388, -5297842311935044919, 48⟩
  | 15 => ⟨17468403887369764893, -5302440817589385986, 48⟩
  | 16 => ⟨17466835488564364856, -5307016808828265178, 48⟩
  | 17 => ⟨17465273387703074807, -5311570502463597791, 48⟩
  | 18 => ⟨17463717530710004042, -5316102112201043416, 48⟩
  | 19 => ⟨17462167864221406325, -5320611848698969646, 48⟩
  | 20 => ⟨17460624335573052485, -5325099919626024539, 48⟩
  | 21 => ⟨17459086892787884136, -5329566529717357010, 48⟩
  | 22 => ⟨17457555484563941007, -5334011880829523066, 48⟩
  | 23 => ⟨17456030060262554588, -5338436171994114546, 48⟩
  | 24 => ⟨17454510569896801025, -5342839599470145858, 48⟩
  | 25 => ⟨17452996964120206433, -5347222356795233035, 48⟩
  | 26 => ⟨17451489194215697980, -5351584634835598374, 48⟩
  | 27 => ⟨17449987212084794329, -5355926621834932802, 48⟩
  | 28 => ⟨17448490970237029188, -5360248503462147144, 48⟩
  | 29 => ⟨17447000421779601937, -5364550462858042441, 48⟩
  | 30 => ⟨17445515520407249469, -5368832680680928549, 48⟩
  | 31 => ⟨17444036220392333552, -5373095335151219304, 48⟩
  | 32 => ⟨17442562476575138212, -5377338602095031667, 48⟩
  | 33 => ⟨17441094244354371778, -5381562654986815417, 48⟩
  | 34 => ⟨17439631479677868399, -5385767664991039131, 48⟩
  | 35 => ⟨17438174139033484003, -5389953801002957388, 48⟩
  | 36 => ⟨17436722179440181802, -5394121229688483378, 48⟩
  | 37 => ⟨17435275558439302609, -5398270115523190372, 48⟩
  | 38 => ⟨17433834234086015340, -5402400620830464757, 48⟩
  | 39 => ⟨17432398164940943261, -5406512905818832692, 48⟩
  | 40 => ⟨17430967310061961599, -5410607128618481758, 48⟩
  | 41 => ⟨17429541628996162337, -5414683445316998322, 48⟩
  | 42 => ⟨17428121081771982067, -5418742009994340744, 48⟩
  | 43 => ⟨17426705628891488939, -5422782974757067927, 48⟩
  | 44 => ⟨17425295231322824834, -5426806489771842156, 48⟩
  | 45 => ⟨17423889850492799009, -5430812703298224589, 48⟩
  | 46 => ⟨17422489448279629551, -5434801761720781248, 48⟩
  | 47 => ⟨17421093987005829116, -5438773809580516813, 48⟩
  | 48 => ⟨17419703429431231481, -5442728989605653035, 48⟩
  | 49 => ⟨17418317738746155569, -5446667442741768078, 49⟩
  | 50 => ⟨17416936878564703691, -5450589308181312657, 49⟩
  | 51 => ⟨17415560812918190826, -5454494723392518334, 49⟩
  | 52 => ⟨17414189506248701868, -5458383824147712955, 49⟩
  | 53 => ⟨17412822923402773837, -5462256744551057725, 49⟩
  | 54 => ⟨17411461029625200141, -5466113617065720045, 49⟩
  | 55 => ⟨17410103790552954052, -5469954572540495819, 50⟩
  | 56 => ⟨17408751172209228643, -5473779740235894547, 50⟩
  | 57 => ⟨17407403140997590496, -5477589247849700165, 50⟩
  | 58 => ⟨17406059663696244567, -5481383221542020201, 51⟩
  | 59 => ⟨17404720707452407679, -5485161785959835505, 51⟩
  | 60 => ⟨17403386239776788151, -5488925064261062423, 52⟩
  | 61 => ⟨17402056228538169174, -5492673178138139000, 53⟩
  | 62 => ⟨17400730641958093565, -5496406247841146455, 54⟩
  | _ => ⟨17399409448605647649, -5500124392200476855, 55⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlockData.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlockData.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45084201aa867661966d6273cfecd2175b03431a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
