# coefficients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46876a59d3799c1d67a2d0cd29f5846a76928083c9c09a1d4d4117985187bf02",
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
  "slug": "coefficients--19c6c9de694b2025beeb9e4b",
  "source": {
    "blob": "84a7ec40cf14332d312aaf07433948c8422b1f3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 22,
    "line": 20,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandBernstein.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:19c6c9de694b2025beeb9e4bad426e5833fa4b283697e61e7702351504c51e1b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandBernstein.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46876a59d3799c1d67a2d0cd29f5846a76928083c9c09a1d4d4117985187bf02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–22.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coefficients : Fin 12 → Fin 12 → ℕ :=
  ![![128237267138785, 1850042141191517, 11403193308615355, 40470039136532191, 92926963453593658, 145934171950801490, 160625500485241702, 124266940163680494, 66352456765912629, 23319406529931745, 4859373345100431, 455124705562275], ![1287993303084583, 18792062546338603, 116590157498977821, 415490129841731193, 956636566930002838, 1505039404689101438, 1658522747466235850, 1284049810670766402, 685884015531913587, 241076371306914631, 50228981770770153, 4702683469201237], ![5837927940879315, 86339263351151303, 539835770375795585, 1933163152420962285, 4465203914578482830, 7040002512263819734, 7769030031154292946, 6020368007392832362, 3217477045604229263, 1131106715888013587, 235650554462630077, 22055592914874105], ![15741208055125717, 236664946764686497, 1493439720088150455, 5378685288538560395, 12470301114284197250, 19710823518755467194, 21788992125437391646, 16903430065312759558, 9039684826527678777, 3178852060395557493, 662263600426718619, 61966715398261407], ![28004834951470426, 429636626634861298, 2741183925756897150, 9939293777349189670, 23145558781660713700, 36693003861406169940, 40643278463115017564, 31572193918040264492, 16898151410087751138, 5944765971809710682, 1238580747729095942, 115864008752809998], ![34433091484607478, 541723286076347742, 3502526101678542834, 12801812553337694282, 29966198416627161404, 47671499975453956812, 52928897745726023812, 41181091285556024500, 22063145559106964910, 7765995046996201526, 1618275149582036138, 151353917753995938], ![29754411291216630, 483340449896361118, 3176054994549806962, 11719878089041070218, 27601781552385420604, 44090061482265453900, 49089065874455142788, 38265417245259637556, 20525873824589299374, 7229833989884419702, 1506919894754557994, 140919296647386082], ![17978969950239834, 304516579441900594, 2041468240281103102, 7620256959209079398, 18077322714744948452, 29015614274311576020, 32411581822817566300, 25321397604474393004, 13602321929600345826, 4795221205409313434, 999823216702274694, 93490271942275918], ![7386125098484565, 132375062996844801, 910119291953597943, 3445146366347267947, 8244059113577134978, 13308203083034729082, 14923436017214068382, 11689559910453602246, 6290366343012665529, 2219850606554248021, 463067006119402459, 43298867934691839], ![1938761604643923, 37654553953016871, 267463411237670337, 1030140976989421773, 2491061946208148622, 4048758048595400342, 4561037901219450962, 3583816220550733354, 1932504845611723791, 682838920636699379, 142529627333203197, 13327772604912473], ![285311571437479, 6267683082346315, 46498340678757597, 183043929578197273, 448351431238755734, 734713051966468286, 832216594755229258, 656337409251545474, 354791074336715763, 125555654544294119, 26227816894108585, 2452841075221621], ![16823722925665, 457699320466045, 3607885839026043, 14609445956732543, 36360998099642938, 60182941081940626, 68620138512324070, 54358443996885806, 29470978017946805, 10448740465931393, 2184817489892687, 204370861898947]]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandBernstein.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandBernstein.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84a7ec40cf14332d312aaf07433948c8422b1f3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
