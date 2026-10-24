# tailCoefficients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9aece2eef49c2bd5cd808dcc554e78f8f2a5c039d2057363c051659cfed66cc",
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
  "slug": "tailcoefficients--d1d1709acc52811fec1349cc",
  "source": {
    "blob": "a8c2b8e4dedcfde88c2983ccae84c3168d7fd07e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 84,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightBernstein.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1d1709acc52811fec1349cc9d7464a4dc9cf4f615f65be7f84e28ca37edaf8a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightBernstein.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9aece2eef49c2bd5cd808dcc554e78f8f2a5c039d2057363c051659cfed66cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tailCoefficients : Fin 13 → Fin 7 → ℕ :=
  ![
    ![6899488452511644375, 36852392587605383250, 78941419488858020625, 84839610915911137500, 45854699492664455625, 10088180950070531250, 84496019552931375],
    ![84377968853890552380, 451307482784976554280, 968791323063047645700, 1044924592670700087600, 568862744747621645700, 127810972373794154280, 2010039164910952380],
    ![472818725296178824548, 2532236559698988860688, 5446706625092851835220, 5894721456048931224960, 3230873095100088902220, 739937182006920114288, 16491406265720637948],
    ![1605281659907832487008, 8607948809768847420048, 18550568527091490795120, 20140948039327778720160, 11109207806973378285120, 2589121434332141412048, 72942469456065985008],
    ![3677810038110624212496, 19744692198915722756976, 42627878170949600047440, 46423008326346356869920, 25757850334630334707440, 6100077411705130484976, 204199298276651144496],
    ![5990252700020862651840, 32195393108367115559040, 69627820744098819057600, 76044367778410413676800, 42428308942210942497600, 10196927787235518311040, 390242135682423339840],
    ![7112309232704922214848, 38266838963440188732288, 82893241062399199158720, 90777832153092781608960, 50913304767670003974720, 12402909277767049385088, 528650487525894378048],
    ![6202513700101837587456, 33405642540040036052736, 72474836410978491651840, 79571899847291549829120, 44847129769774896291840, 11062346405599954964736, 515344760076315315456],
    ![3943111616900921456640, 21257340599604957891840, 46186197303726649209600, 50831761703145087052800, 28780830112541622969600, 7181610412835320899840, 360533587416172208640],
    ![1782121956092647686144, 9616199466302083620864, 20922280600427176412160, 23079381465724823162880, 13123920499008531932160, 3309876377196768036864, 177116433695318790144],
    ![543539478109728522240, 2935435063758983331840, 6395110920523281945600, 7069682733784904908800, 4036417987396128537600, 1028089531774124605440, 58133597288873840640],
    ![100446373833139814400, 542913749715256934400, 1184255720357308416000, 1311840745125124608000, 751841656573395456000, 193256391263204966400, 11466163339742822400],
    ![8505779235323904000, 46009378971869184000, 100477823835893760000, 111516485216417280000, 64140422457922560000, 16627370962765824000, 1029128621912064000]
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightBernstein.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightBernstein.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8c2b8e4dedcfde88c2983ccae84c3168d7fd07e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
