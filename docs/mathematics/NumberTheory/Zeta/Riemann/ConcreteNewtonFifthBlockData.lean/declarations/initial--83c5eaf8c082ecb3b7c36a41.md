# initial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94d44b6ee3b0636bfa0f2214a52b3e7365bf13154dc4938c5c1844eef273efce",
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
  "slug": "initial--83c5eaf8c082ecb3b7c36a41",
  "source": {
    "blob": "8e313500451468e8900e1b6be8406350cfd69596",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 16,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFifthBlockData.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83c5eaf8c082ecb3b7c36a41b57e8cc88c1305e6bb0f73756c1ecc29a72ec658",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonFifthBlockData.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94d44b6ee3b0636bfa0f2214a52b3e7365bf13154dc4938c5c1844eef273efce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def initial (i : Fin 64) : GridState :=
  match i.1 with
  | 0 => ⟨17398092617392342014, -5503827728649057648, 55⟩
  | 1 => ⟨17396780117567086998, -5507516373244143392, 55⟩
  | 2 => ⟨17395471918711260783, -5511190440688684740, 55⟩
  | 3 => ⟨17394167990733868059, -5514850044352284508, 55⟩
  | 4 => ⟨17392868303866787246, -5518495296291750319, 55⟩
  | 5 => ⟨17391572828660104327, -5522126307271253143, 55⟩
  | 6 => ⟨17390281535977531401, -5525743186782100720, 55⟩
  | 7 => ⟨17388994396991908095, -5529346043062134696, 55⟩
  | 8 => ⟨17387711383180784047, -5532934983114759991, 55⟩
  | 9 => ⟨17386432466322080683, -5536510112727614762, 55⟩
  | 10 => ⟨17385157618489830597, -5540071536490889043, 55⟩
  | 11 => ⟨17383886812049992849, -5543619357815299985, 55⟩
  | 12 => ⟨17382620019656342562, -5547153678949731371, 55⟩
  | 13 => ⟨17381357214246433227, -5550674600998544903, 55⟩
  | 14 => ⟨17380098369037630169, -5554182223938570566, 55⟩
  | 15 => ⟨17378843457523213675, -5557676646635783161, 55⟩
  | 16 => ⟨17377592453468550293, -5561157966861671951, 55⟩
  | 17 => ⟨17376345330907330887, -5564626281309310161, 55⟩
  | 18 => ⟨17375102064137874039, -5568081685609130899, 55⟩
  | 19 => ⟨17373862627719493429, -5571524274344415929, 55⟩
  | 20 => ⟨17372626996468927871, -5574954141066503515, 55⟩
  | 21 => ⟨17371395145456832694, -5578371378309721449, 55⟩
  | 22 => ⟨17370167050004331214, -5581776077606051175, 55⟩
  | 23 => ⟨17368942685679625038, -5585168329499528820, 55⟩
  | 24 => ⟨17367722028294662014, -5588548223560388744, 55⟩
  | 25 => ⟨17366505053901860640, -5591915848398955143, 55⟩
  | 26 => ⟨17365291738790889771, -5595271291679287033, 55⟩
  | 27 => ⟨17364082059485502521, -5598614640132581881, 55⟩
  | 28 => ⟨17362875992740423238, -5601945979570342961, 55⟩
  | 29 => ⟨17361673515538286513, -5605265394897315419, 55⟩
  | 30 => ⟨17360474605086627140, -5608572970124195913, 55⟩
  | 31 => ⟨17359279238814920043, -5611868788380120545, 55⟩
  | 32 => ⟨17358087394371669141, -5615152931924935724, 55⟩
  | 33 => ⟨17356899049621544201, -5618425482161256462, 55⟩
  | 34 => ⟨17355714182642564717, -5621686519646316503, 55⟩
  | 35 => ⟨17354532771723329876, -5624936124103614583, 55⟩
  | 36 => ⟨17353354795360293733, -5628174374434361012, 55⟩
  | 37 => ⟨17352180232255084671, -5631401348728728670, 55⟩
  | 38 => ⟨17351009061311868307, -5634617124276912408, 55⟩
  | 39 => ⟨17349841261634752986, -5637821777580000760, 55⟩
  | 40 => ⟨17348676812525237038, -5641015384360663769, 55⟩
  | 41 => ⟨17347515693479696982, -5644198019573660642, 55⟩
  | 42 => ⟨17346357884186915904, -5647369757416170870, 55⟩
  | 43 => ⟨17345203364525651213, -5650530671337952355, 55⟩
  | 44 => ⟨17344052114562241042, -5653680834051330007, 55⟩
  | 45 => ⟨17342904114548248541, -5656820317541018194, 55⟩
  | 46 => ⟨17341759344918143341, -5659949193073780341, 55⟩
  | 47 => ⟨17340617786287019498, -5663067531207928920, 55⟩
  | 48 => ⟨17339479419448349199, -5666175401802668969, 55⟩
  | 49 => ⟨17338344225371771592, -5669272874027288229, 55⟩
  | 50 => ⟨17337212185200916040, -5672360016370196903, 55⟩
  | 51 => ⟨17336083280251259186, -5675436896647819986, 55⟩
  | 52 => ⟨17334957492008015181, -5678503582013345033, 55⟩
  | 53 => ⟨17333834802124058460, -5681560138965328177, 55⟩
  | 54 => ⟨17332715192417878463, -5684606633356161145, 55⟩
  | 55 => ⟨17331598644871565711, -5687643130400401949, 55⟩
  | 56 => ⟨17330485141628828656, -5690669694682971889, 55⟩
  | 57 => ⟨17329374664993040743, -5693686390167221413, 55⟩
  | 58 => ⟨17328267197425317124, -5696693280202867363, 55⟩
  | 59 => ⟨17327162721542620489, -5699690427533804047, 55⟩
  | 60 => ⟨17326061220115895479, -5702677894305790531, 55⟩
  | 61 => ⟨17324962676068231165, -5705655742074016510, 55⟩
  | 62 => ⟨17323867072473051082, -5708624031810549038, 55⟩
  | _ => ⟨17322774392552330323, -5711582823911662365, 55⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonFifthBlockData.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFifthBlockData.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e313500451468e8900e1b6be8406350cfd69596` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
