# pointX

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dbdaaa33429d3adb46cc2a4f403090d98ed94c8374356031fb60ddae1c152e9e",
  "kind": "def",
  "lexical_name": "pointX",
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
  "slug": "pointx--dfc2a2293aa39dd834d3973d",
  "source": {
    "blob": "9b489d813ddf451a7c8d164ca808fb569b29b5b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 33,
    "path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dfc2a2293aa39dd834d3973d2ac00f78f2c0d2c7e9e7f8968fcb489b41cbf9d9",
  "verification": {
    "reference": "docs/verification/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dbdaaa33429d3adb46cc2a4f403090d98ed94c8374356031fb60ddae1c152e9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pointX : Fin 32 → ℚ := ![
    (-17285086047619198200275927219245378 : ℚ),
    (68215181559115791286912139413731752 : ℚ),
    ((-1387344455679348370056438549185082782 : ℚ) / 9),
    (-15173111738907417143928794817757678 : ℚ),
    (63927798059157219113420682804111698 : ℚ),
    (-175920256516773927216987811704653998 : ℚ),
    (-93349800702048191841766577329428814 : ℚ),
    (573754124312442257185948307163664322 : ℚ),
    (180006952777798089015773645901232682 : ℚ),
    (160321396413246682065277325922567122 : ℚ),
    (187998867721967795592534802279222802 : ℚ),
    (66617012700760176909764459672180402 : ℚ),
    ((20473830338934141513040567654006703 : ℚ) / 4),
    (-144242496519268397216179549818488068 : ℚ),
    (127127961818398385902253516853523682 : ℚ),
    (128297156333802580224247307136843998 : ℚ),
    (58654760853591405256596003080713082 : ℚ),
    (264668488801898558937265106101400402 : ℚ),
    (48875938435594063723701413074480706 : ℚ),
    (-46751488921809892782619440189415918 : ℚ),
    (63212355736975402066975330539562322 : ℚ),
    (149965180266399526372714179597820802 : ℚ),
    (-182854634263257276680050224594247678 : ℚ),
    (27279643140022388956147032953143322 : ℚ),
    (152646461785987818202823388078235682 : ℚ),
    (-155412007773607516887022658957572372 : ℚ),
    (-136511375279649473687107598119871134 : ℚ),
    (-22380805593714240644839255686446314 : ℚ),
    (60968847620036686567594611958700402 : ℚ),
    (7632386621288771404751045484484178 : ℚ),
    (23257921216948228220425920362648882 : ℚ),
    (-151470070563153081195648444471171118 : ℚ)
  ]

/-- Published y coordinates in the same order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b489d813ddf451a7c8d164ca808fb569b29b5b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
