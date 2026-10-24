# initial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab0e898c281bcfaf33310b9b49e5b8b24e1693e8fcd16d9d3aa8be3127ac7726",
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
  "slug": "initial--710177af7a9fc5adbe4818fe",
  "source": {
    "blob": "95d79442ace6a111c6a2cdb2af6efffdf6f9c9a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 26,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlockData.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:710177af7a9fc5adbe4818fe05739c66e13b1415be88a73a2a7e4ec44c176145",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlockData.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab0e898c281bcfaf33310b9b49e5b8b24e1693e8fcd16d9d3aa8be3127ac7726`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def initial (i : Fin 64) : GridState :=
  match i.1 with
  | 0 => ⟨17067830080016909606, -6363036994555384377, 63⟩
  | 1 => ⟨17067230388077032241, -6364486618338498284, 63⟩
  | 2 => ⟨17066631506856664727, -6365933929993537771, 63⟩
  | 3 => ⟨17066033434031703902, -6367378936783076955, 63⟩
  | 4 => ⟨17065436167288251090, -6368821645935663677, 63⟩
  | 5 => ⟨17064839704322551734, -6370262064646031334, 63⟩
  | 6 => ⟨17064244042840935483, -6371700200075309059, 63⟩
  | 7 => ⟨17063649180559756721, -6373136059351230271, 63⟩
  | 8 => ⟨17063055115205335537, -6374569649568339615, 63⟩
  | 9 => ⟨17062461844513899136, -6376000977788198304, 63⟩
  | 10 => ⟨17061869366231523676, -6377430051039587874, 63⟩
  | 11 => ⟨17061277678114076543, -6378856876318712369, 63⟩
  | 12 => ⟨17060686777927159044, -6380281460589398979, 63⟩
  | 13 => ⟨17060096663446049527, -6381703810783297125, 63⟩
  | 14 => ⟨17059507332455646914, -6383123933800076028, 63⟩
  | 15 => ⟨17058918782750414653, -6384541836507620763, 63⟩
  | 16 => ⟨17058331012134325079, -6385957525742226812, 63⟩
  | 17 => ⟨17057744018420804179, -6387371008308793133, 63⟩
  | 18 => ⟨17057157799432676768, -6388782290981013761, 63⟩
  | 19 => ⟨17056572353002112054, -6390191380501567949, 63⟩
  | 20 => ⟨17055987676970569611, -6391598283582308862, 63⟩
  | 21 => ⟨17055403769188745734, -6393003006904450846, 63⟩
  | 22 => ⟨17054820627516520192, -6394405557118755272, 63⟩
  | 23 => ⟨17054238249822903365, -6395805940845714977, 63⟩
  | 24 => ⟨17053656633985983756, -6397204164675737317, 63⟩
  | 25 => ⟨17053075777892875896, -6398600235169325830, 63⟩
  | 26 => ⟨17052495679439668613, -6399994158857260541, 63⟩
  | 27 => ⟨17051916336531373681, -6401385942240776905, 63⟩
  | 28 => ⟨17051337747081874834, -6402775591791743411, 63⟩
  | 29 => ⟨17050759909013877149, -6404163113952837854, 63⟩
  | 30 => ⟨17050182820258856792, -6405548515137722283, 63⟩
  | 31 => ⟨17049606478757011123, -6406931801731216650, 63⟩
  | 32 => ⟨17049030882457209158, -6408312980089471160, 63⟩
  | 33 => ⟨17048456029316942387, -6409692056540137329, 63⟩
  | 34 => ⟨17047881917302275937, -6411069037382537787, 63⟩
  | 35 => ⟨17047308544387800091, -6412443928887834799, 63⟩
  | 36 => ⟨17046735908556582145, -6413816737299197554, 63⟩
  | 37 => ⟨17046164007800118610, -6415187468831968203, 63⟩
  | 38 => ⟨17045592840118287755, -6416556129673826676, 63⟩
  | 39 => ⟨17045022403519302476, -6417922725984954275, 63⟩
  | 40 => ⟨17044452696019663513, -6419287263898196072, 63⟩
  | 41 => ⟨17043883715644112988, -6420649749519222096, 63⟩
  | 42 => ⟨17043315460425588268, -6422010188926687350, 63⟩
  | 43 => ⟨17042747928405176161, -6423368588172390643, 63⟩
  | 44 => ⟨17042181117632067432, -6424724953281432261, 63⟩
  | 45 => ⟨17041615026163511630, -6426079290252370487, 63⟩
  | 46 => ⟨17041049652064772242, -6427431605057376970, 63⟩
  | 47 => ⟨17040484993409082157, -6428781903642390966, 63⟩
  | 48 => ⟨17039921048277599437, -6430130191927272453, 63⟩
  | 49 => ⟨17039357814759363407, -6431476475805954130, 63⟩
  | 50 => ⟨17038795290951251036, -6432820761146592315, 63⟩
  | 51 => ⟨17038233474957933639, -6434163053791716746, 63⟩
  | 52 => ⟨17037672364891833863, -6435503359558379292, 63⟩
  | 53 => ⟨17037111958873082985, -6436841684238301599, 63⟩
  | 54 => ⟨17036552255029478498, -6438178033598021659, 63⟩
  | 55 => ⟨17035993251496441990, -6439512413379039325, 63⟩
  | 56 => ⟨17035434946416977322, -6440844829297960780, 63⟩
  | 57 => ⟨17034877337941629084, -6442175287046641962, 63⟩
  | 58 => ⟨17034320424228441345, -6443503792292330963, 63⟩
  | 59 => ⟨17033764203442916686, -6444830350677809406, 63⟩
  | 60 => ⟨17033208673757975506, -6446154967821532806, 63⟩
  | 61 => ⟨17032653833353915621, -6447477649317769927, 63⟩
  | 62 => ⟨17032099680418372126, -6448798400736741150, 63⟩
  | _ => ⟨17031546213146277545, -6450117227624755848, 63⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlockData.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonEleventhBlockData.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95d79442ace6a111c6a2cdb2af6efffdf6f9c9a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
