# coefficients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15b5eaa609df2c95aae41b0b06ac8520abebfcb8290fc7149876e32ee3bd0c29",
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
  "slug": "coefficients--f966808fc9962bacfe2f43f1",
  "source": {
    "blob": "3a10109909f4be0897b4e2f88952583c653a148d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 24,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripNineHeightBernstein.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f966808fc9962bacfe2f43f12c4886c3b46437ece291252a9ae1cb30340cfa0d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripNineHeightBernstein.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15b5eaa609df2c95aae41b0b06ac8520abebfcb8290fc7149876e32ee3bd0c29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coefficients : Fin 11 → Fin 6 → ℕ :=
  ![
    ![2865296706063561, 24016730545957149, 87043474486723194, 180204090441157530, 178299362422306125, 1775491671281625],
    ![29356096248164532, 243391775370221940, 877036625951156616, 1816138421776207848, 1798525354258752900, 23269669744678500],
    ![135299197934790484, 1109329031222746148, 3974039819807379016, 8232394009766036296, 8160286820192859044, 128370853894900180],
    ![369407812017476960, 2994442428075595600, 10663864471903596416, 22102133295623036768, 21930945128764684960, 402223174183536848],
    ![661677199151822784, 5301276613246961136, 18765869401569016224, 38920647079520134848, 38661831628479670176, 802972135527132240],
    ![812440929204660224, 6431647027508578432, 22628633289057270848, 46971137469383539904, 46714448619368318656, 1075359459650594240],
    ![692532043909135360, 5415389024025833216, 18935079790968376000, 39343647975974361664, 39179099291028398144, 983191724999433664],
    ![404668050073706496, 3124657385549205504, 10856488054881907200, 22584421423804991232, 22521319696960585728, 607978477758413568],
    ![155130814886068224, 1182388242970202112, 4081678423558124544, 8502610965311335680, 8491633294163574528, 243911381274883584],
    ![35231204258611200, 264961547716755456, 908634176915226624, 1895758810503763968, 1896395431681161216, 57422245067513856],
    ![3599539214745600, 26700522208690176, 90945708319604736, 190085300078579712, 190483834746728448, 6031439037112320]
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripNineHeightBernstein.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripNineHeightBernstein.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a10109909f4be0897b4e2f88952583c653a148d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
