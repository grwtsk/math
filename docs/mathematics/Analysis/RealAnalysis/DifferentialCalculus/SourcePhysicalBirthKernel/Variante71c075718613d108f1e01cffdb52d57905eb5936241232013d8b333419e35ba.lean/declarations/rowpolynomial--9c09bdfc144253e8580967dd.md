# rowPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8dce1368900e127570edd207166a308c760f01ed6d7a2e1cc3bba75e862f125e",
  "kind": "def",
  "lexical_name": "rowPolynomial",
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
  "slug": "rowpolynomial--9c09bdfc144253e8580967dd",
  "source": {
    "blob": "34b77726cc9bfc40870af79ccae07d5f7d6d608f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 403,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variante71c075718613d108f1e01cffdb52d57905eb5936241232013d8b333419e35ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c09bdfc144253e8580967dd1ab43a19dbb143791996416bd4f0a108d7eaa6b6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variante71c075718613d108f1e01cffdb52d57905eb5936241232013d8b333419e35ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8dce1368900e127570edd207166a308c760f01ed6d7a2e1cc3bba75e862f125e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def rowPolynomial (j : ℕ) (y : ℝ) : ℝ :=
  match j with
  | 0 => (24576) +
      (-6144 * y) +
      ((-1536 / 5) * y ^ 2) +
      ((512 / 5) * y ^ 3) +
      ((-64 / 35) * y ^ 4) +
      ((-8 / 35) * y ^ 5) +
      ((2 / 315) * y ^ 6)
  | 1 => (24576) +
      ((-574464 / 91) * y) +
      ((-124416 / 455) * y ^ 2) +
      ((47232 / 455) * y ^ 3) +
      ((-7104 / 3185) * y ^ 4) +
      ((-708 / 3185) * y ^ 5) +
      ((202 / 28665) * y ^ 6) +
      ((-1 / 57330) * y ^ 7)
  | 2 => (24576) +
      ((-589824 / 91) * y) +
      ((-69176832 / 289835) * y ^ 2) +
      ((30445824 / 289835) * y ^ 3) +
      ((-5352768 / 2028845) * y ^ 4) +
      ((-435216 / 2028845) * y ^ 5) +
      ((141034 / 18259605) * y ^ 6) +
      ((-15 / 405769) * y ^ 7) +
      ((19 / 401711310) * y ^ 8)
  | 3 => (24576) +
      ((-605184 / 91) * y) +
      ((-58808832 / 289835) * y ^ 2) +
      ((2798674304 / 26374985) * y ^ 3) +
      ((-563370688 / 184624895) * y ^ 4) +
      ((-37887596 / 184624895) * y ^ 5) +
      ((13915394 / 1661624055) * y ^ 6) +
      ((-21603 / 369249790) * y ^ 7) +
      ((601 / 4061747690) * y ^ 8) +
      ((-37 / 292445833680) * y ^ 9)
  | 4 => (24576) +
      ((-620544 / 91) * y) +
      ((-48148992 / 289835) * y ^ 2) +
      ((2822068224 / 26374985) * y ^ 3) +
      ((-58281587904 / 16800865445) * y ^ 4) +
      ((-3265591944 / 16800865445) * y ^ 5) +
      ((1359922342 / 151207789005) * y ^ 6) +
      ((-61974418 / 756038945025) * y ^ 7) +
      ((77587 / 252012981675) * y ^ 8) +
      ((-1583 / 3024155780100) * y ^ 9) +
      ((289 / 864908553108600) * y ^ 10)
  | 5 => (24576) +
      ((-635904 / 91) * y) +
      ((-37197312 / 289835) * y ^ 2) +
      ((2840609664 / 26374985) * y ^ 3) +
      ((-65357020608 / 16800865445) * y ^ 4) +
      ((-39743532228 / 218411250785) * y ^ 5) +
      ((2689018846 / 280814465295) * y ^ 6) +
      ((-140567611 / 1310467504710) * y ^ 7) +
      ((11516303 / 21622713827715) * y ^ 8) +
      ((-233773 / 172981710621720) * y ^ 9) +
      ((1289 / 749587412694120) * y ^ 10) +
      ((-1 / 1144824412114656) * y ^ 11)
  | 6 => (24576) +
      ((-651264 / 91) * y) +
      ((-25953792 / 289835) * y ^ 2) +
      ((2854156544 / 26374985) * y ^ 3) +
      ((-72478769728 / 16800865445) * y ^ 4) +
      ((-36690527648 / 218411250785) * y ^ 5) +
      ((139183587974 / 13759908799455) * y ^ 6) +
      ((-41053595 / 305775751099) * y ^ 7) +
      ((27830819 / 33635332620890) * y ^ 8) +
      ((-1687349 / 605435987176020) * y ^ 9) +
      ((27829 / 5247111888858840) * y ^ 10) +
      ((-79 / 14691913288804752) * y ^ 11) +
      ((1 / 440757398664142560) * y ^ 12)
  | 7 => (24576) +
      ((-95232 / 13) * y) +
      ((-2059776 / 41405) * y ^ 2) +
      ((408938112 / 3767855) * y ^ 3) +
      ((-11376018624 / 2400123635) * y ^ 4) +
      ((-679417812 / 4457372465) * y ^ 5) +
      ((1603741534 / 151207789005) * y ^ 6) +
      ((-108176228989 / 664407024887970) * y ^ 7) +
      ((2916606367 / 2436159091255890) * y ^ 8) +
      ((-293599573 / 58467818190141360) * y ^ 9) +
      ((4829611 / 380040818235918840) * y ^ 10) +
      ((-1955 / 101344218196245024) * y ^ 11) +
      ((173 / 10641142910605727520) * y ^ 12) +
      ((-1 / 170258286569691640320) * y ^ 13)
  | 8 => (24576) +
      ((-681984 / 91) * y) +
      ((-370176 / 41405) * y ^ 2) +
      ((409385472 / 3767855) * y ^ 3) +
      ((-12400279104 / 2400123635) * y ^ 4) +
      ((-4220712264 / 31201607255) * y ^ 5) +
      ((21707810182 / 1965701257065) * y ^ 6) +
      ((-21346410172 / 110734504147995) * y ^ 7) +
      ((547477517282 / 332535715956428985) * y ^ 8) +
      ((-1098717625 / 133014286382571594) * y ^ 9) +
      ((150269767 / 5763952409911435740) * y ^ 10) +
      ((-1275317 / 24208600121628030108) * y ^ 11) +
      ((16103 / 242086001216280301080) * y ^ 12) +
      ((-31 / 645562669910080802880) * y ^ 13) +
      ((1 / 65847392330828241893760) * y ^ 14)
  | _ => 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variante71c075718613d108f1e01cffdb52d57905eb5936241232013d8b333419e35ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variante71c075718613d108f1e01cffdb52d57905eb5936241232013d8b333419e35ba.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34b77726cc9bfc40870af79ccae07d5f7d6d608f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
