# modelCoefficients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0611c3d1f18f8a5dc1f375d6887cf02f1cf049b4c75b8f00e5da600e6dec478e",
  "kind": "def",
  "lexical_name": "modelCoefficients",
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
  "slug": "modelcoefficients--b59732fa0b44d77d8695d1b4",
  "source": {
    "blob": "28003962072052acd7b6515fe490aaf2ea5a5f64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 41,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightBernstein.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b59732fa0b44d77d8695d1b43acb3d29657fd32c6d76b9d133d3597ed16921bf",
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

Occurrence: `declaration:0611c3d1f18f8a5dc1f375d6887cf02f1cf049b4c75b8f00e5da600e6dec478e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def modelCoefficients : Fin 13 → Fin 7 → ℕ :=
  ![
    ![1648488374358623830775, 8853971604244431167250, 19011370030493624624625, 20405303531165507441500, 10954530755158132787625, 2359447762365268897650, 4328248733082263375],
    ![22187790335168324069700, 121134463739401445638200, 266461621982193234145500, 297413501962763409594000, 171931876397476787245500, 44921088996546710518200, 2887700115492292289700],
    ![135250835541671192029300, 748026642673587549169200, 1676094593512981696906500, 1924477862301795196520000, 1168002731518616235373500, 338305152081639171142800, 31461134207657688522700],
    ![494855052380961142123200, 2765791295926911003745200, 6288175405927608283878000, 7376360122494704428524000, 4633889605980335527908000, 1431517916106156339769200, 156748062651883138129200],
    ![1212391591210638784822800, 6835393682864343646450800, 15724862353131795858162000, 18758341172012875588596000, 12091151415395444828982000, 3903982851868478561506800, 469309629937105044586800],
    ![2098083092663653904136000, 11915832417941303827939200, 27680605271127503827656000, 33469653229069019465952000, 22007982465462968317272000, 7338559355304917352432000, 937369825747973349259200],
    ![2632321907931275034987200, 15043730187026099604451200, 35233723917837472835448000, 43078456437050474881024000, 28780331388251642486088000, 9835232034463737842563200, 1311036372654590515515200],
    ![2414433223589322139276800, 13873180515693459414585600, 32719396715471227495776000, 40378134800143039382784000, 27328895268523197182400000, 9521465856587890634284800, 1310051617527501366201600],
    ![1607864559008780814643200, 9282292015755903905875200, 22023888178211931541728000, 27394663172211908529024000, 18742835954339997515808000, 6632834789582640169939200, 935198568919029452659200],
    ![758542925391217743052800, 4397293757971135361740800, 10488122104088246934912000, 13134708183392766967296000, 9068949908538752284032000, 3250995670858815615436800, 467381466617517302476800],
    ![240747953149896315289600, 1400760300331144291123200, 3356407128448400326272000, 4228265137792651547648000, 2942365073658620131200000, 1066232411731135840665600, 155737332321919802675200],
    ![46170827635348684800000, 269521792298614775808000, 648448394653465943040000, 821132449811357806080000, 575294880930418414080000, 210398890920120483840000, 31138963942479095808000],
    ![4047576779051171840000, 23697443315502401126400, 57221972077169836032000, 72793201972780209664000, 51302911913669182464000, 18912091284450281472000, 2830270313810957926400]
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightBernstein.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightBernstein.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28003962072052acd7b6515fe490aaf2ea5a5f64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
