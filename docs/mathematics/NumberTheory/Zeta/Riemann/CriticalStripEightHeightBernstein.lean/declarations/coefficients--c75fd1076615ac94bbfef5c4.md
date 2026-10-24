# coefficients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4c1d9223280b23471c29561c1ce0d3f5d1cd954e501ae782ea92dd86e6e8adc",
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
  "slug": "coefficients--c75fd1076615ac94bbfef5c4",
  "source": {
    "blob": "b3facf2f54d177468f833364a17e61cd7570b6df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 35,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripEightHeightBernstein.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c75fd1076615ac94bbfef5c4eebddf62c3fd8598c442082ea7fbddde86b84e24",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripEightHeightBernstein.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4c1d9223280b23471c29561c1ce0d3f5d1cd954e501ae782ea92dd86e6e8adc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coefficients : Fin 11 → Fin 6 → ℕ :=
  ![
    ![114611850791361, 879309353233605, 2859836144079242, 5088003699132810, 4244053798641861, 125288834303425],
    ![1174243655621652, 8924506191841380, 28859647704303816, 51263996025077960, 42715708407970916, 1302098482550804],
    ![5411966980067508, 40738959717368708, 130973751134086920, 232293477411243784, 193350569139966852, 6038354317590708],
    ![14776309920577632, 110143529335707104, 352011362762826688, 623385785789881280, 518311454539516384, 16461823276217440],
    ![26467083633321408, 195317293943941312, 620458820041025920, 1097177085431480704, 911231656869997760, 29224200731972032],
    ![32497632512894976, 237369575665805312, 749407462925897728, 1323309159409504256, 1097803543716628480, 35303127555770368],
    ![27701278653619200, 200217631699520512, 628140151216936960, 1107631320286074880, 917831894969388032, 29385392417397760],
    ![16186720829497344, 115737468663652352, 360764673249034240, 635292405718630400, 525823192559411200, 16636723434545152],
    ![6205232402546688, 43879509264908288, 135873718220390400, 238952432571154432, 197546483133923328, 6127996112879616],
    ![1409248170344448, 9852534866313216, 30301629013032960, 53221036198461440, 43946724761796608, 1325031811973120],
    ![143981568589824, 994910744346624, 3038498898575360, 5330063742468096, 4395966073405440, 127572146913280]
  ]

/-- An identity for every real u,v; positivity is restricted to the unit square. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripEightHeightBernstein.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripEightHeightBernstein.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3facf2f54d177468f833364a17e61cd7570b6df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
