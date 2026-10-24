# tailCoefficients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1196e480c3567f230dd29fb95fb7fece12f65937f6b7c6bc00e63f88e2ccb423",
  "kind": "def",
  "lexical_name": "tailCoefficients",
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
  "slug": "tailcoefficients--4c4a68de6f08c72d25a8ae44",
  "source": {
    "blob": "28003962072052acd7b6515fe490aaf2ea5a5f64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 58,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightBernstein.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c4a68de6f08c72d25a8ae4441d4750c3715f8bff543ed202be0402ec95fa0e6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightBernstein.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1196e480c3567f230dd29fb95fb7fece12f65937f6b7c6bc00e63f88e2ccb423`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tailCoefficients : Fin 13 → Fin 7 → ℕ :=
  ![
    ![14364707212475975, 77282841680964306, 166737256241514369, 180356880231199324, 97855513467173145, 21352212904067250, 34106597035775],
    ![186310192927586940, 1009843468496369064, 2203648904988688068, 2429586722981078064, 1368847809210438468, 332039785330198440, 12658854104552700],
    ![1103364240242313604, 6019590470717918064, 13264982314006364244, 14860560929318754368, 8627281603284785772, 2254298035768747344, 138798092601869500],
    ![3946893179133291168, 21657182142974931408, 48132404649739492080, 54658238115991042080, 32515398131400278400, 8978660763580374288, 699307776706330608],
    ![9501298257238364496, 52402225079054189616, 117334541125445203920, 134804019292976376480, 81832290965084958000, 23581741467907271856, 2119681599643661616],
    ![16220424806226809280, 89869765468521585792, 202559406202990431168, 235081922236543619328, 145159575376952942400, 43275731299870070400, 4287734390724052800],
    ![20141478701169185216, 112053693929810600832, 254044965808840706496, 297454430616522155008, 186366380290568494656, 57119210689762336896, 6074185836135493184],
    ![18333440631426871296, 102373869937892715264, 233319237713134741248, 275328231833518196736, 174684171150962770944, 54782849642786370816, 6147823690631859456],
    ![12142896566679567360, 68034265742527607040, 155788936489010737920, 185117798017530792960, 118742247773396701440, 37967233080532788480, 4445042118978531840],
    ![5708323698817204224, 32080664560340434944, 73773785074419041280, 88207302327019622400, 57126715046337192960, 18570758807777961984, 2249824589997625344],
    ![1808140794082164736, 10190171464207638528, 23524399161036002304, 28283850752334823424, 18474427743699901440, 6092128238225965056, 759159570280271872],
    ![346546377200762880, 1958049826803154944, 4536171337287794688, 5481404672532271104, 3607600623117815808, 1204563345739776000, 153695291892449280],
    ![30395619108454400, 172145877030273024, 400091727979659264, 485669419671728128, 321824248479424512, 108639919983575040, 14143269820006400]
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightBernstein.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightBernstein.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28003962072052acd7b6515fe490aaf2ea5a5f64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
