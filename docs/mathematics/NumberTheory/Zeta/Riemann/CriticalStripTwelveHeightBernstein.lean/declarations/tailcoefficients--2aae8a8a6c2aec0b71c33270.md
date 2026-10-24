# tailCoefficients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad91b0464def7a0563ed42a7f94461787c91845b5d185e46bc074841aefd2966",
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
  "slug": "tailcoefficients--2aae8a8a6c2aec0b71c33270",
  "source": {
    "blob": "59b5ef636b4a618349f33aa53d7888d14d04f310",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 53,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightBernstein.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2aae8a8a6c2aec0b71c33270e7d5d384b57aadc22687824e243eb04b7e081f75",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightBernstein.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad91b0464def7a0563ed42a7f94461787c91845b5d185e46bc074841aefd2966`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tailCoefficients : Fin 13 → Fin 7 → ℕ :=
  ![
    ![43089989295787775, 235378307850792850, 520472764080992505, 587576020176263452, 347021343972258113, 94833055559868210, 7202679882884775],
    ![526053903260341500, 2875847553077939880, 6366713266810138692, 7201319158175863344, 4267690810433528004, 1175110096806592680, 91811551296371580],
    ![2942792320659571900, 16099862588546802928, 35682998491854380428, 40433592217136190592, 24039353487667502740, 6665972382857871760, 534242868929321508],
    ![9974724779791335408, 54610028470325394128, 121164180178578687040, 137529229024080052640, 82014516929210667120, 22891621898409916048, 1877324107134377568],
    ![22816215539635008816, 124999007856331864816, 277616316915224132080, 315618879007881124640, 188753111539459255120, 53006620367125235056, 4438563091294163216],
    ![37104194042520225600, 203404475018116956800, 452178916780779425600, 514854735809534281984, 308727635758666582976, 87192707470360369280, 7440691482884309440],
    ![43987570542301457984, 241282366088197524608, 536861690694276390464, 612144619145650331648, 367986949312009631168, 104480742412344650624, 9070956825583785408],
    ![38304129348691021056, 210224496450389463296, 468148456350047215616, 534508625895941146624, 322071286962719102720, 91895934712944586496, 8104704164656792576],
    ![24315970612377776640, 133522940415542053120, 297575203636289148160, 340181748723047459840, 205428941771645981440, 58884001386873376000, 5268274359424317440],
    ![10974379123775852544, 60291433830311266304, 134466727951541724160, 153899481326802391040, 93127586774738764800, 26808038487934296064, 2430126396891316224],
    ![3342551861197852672, 18371743130019512320, 41002125433906478080, 46978894660119642112, 28482255846747378688, 8231509456463921152, 755174085321277440],
    ![616878454530785280, 3391984695239147520, 7575052375499722752, 8688069479349325824, 5276761246009933824, 1530612895178096640, 141967717466112000],
    ![52168787102105600, 286967630971617280, 641238967625392128, 736150919872049152, 447845180276572160, 130346500408934400, 12211509893529600]
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightBernstein.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightBernstein.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59b5ef636b4a618349f33aa53d7888d14d04f310` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
