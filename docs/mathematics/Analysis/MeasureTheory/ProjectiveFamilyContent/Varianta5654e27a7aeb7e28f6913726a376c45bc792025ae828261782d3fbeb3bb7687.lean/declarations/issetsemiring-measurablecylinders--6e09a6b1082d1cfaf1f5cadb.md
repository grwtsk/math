# isSetSemiring_measurableCylinders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9e092af-5a3f-44e5-e1d8-755d8fe86793",
  "kind": "lemma",
  "lexical_name": "isSetSemiring_measurableCylinders",
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
  "slug": "issetsemiring-measurablecylinders--6e09a6b1082d1cfaf1f5cadb",
  "source": {
    "blob": "4dd1a3da3cf6ca0c3938b43332b34cba7df200be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 68,
    "path": "GRWTSK/Analysis/MeasureTheory/ProjectiveFamilyContent/Varianta5654e27a7aeb7e28f6913726a376c45bc792025ae828261782d3fbeb3bb7687.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e09a6b1082d1cfaf1f5cadba77e98addeb2b2bc270d308e0d188ebcdde8bc54",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ProjectiveFamilyContent/Varianta5654e27a7aeb7e28f6913726a376c45bc792025ae828261782d3fbeb3bb7687.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9e092af-5a3f-44e5-e1d8-755d8fe86793`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSetSemiring_measurableCylinders : MeasureTheory.IsSetSemiring (measurableCylinders α) :=
  isSetRing_measurableCylinders.isSetSemiring

end MeasurableCylinders

section ProjectiveFamilyFun

open scoped Classical in
/-- For `P` a family of measures, with `P J` a measure on `Π j : J, α j`, we define a function
`projectiveFamilyFun P s` by setting it to `P I S` if `s = cylinder I S` for a measurable `S` and
to 0 if `s` is not a measurable cylinder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ProjectiveFamilyContent/Varianta5654e27a7aeb7e28f6913726a376c45bc792025ae828261782d3fbeb3bb7687.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ProjectiveFamilyContent/Varianta5654e27a7aeb7e28f6913726a376c45bc792025ae828261782d3fbeb3bb7687.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dd1a3da3cf6ca0c3938b43332b34cba7df200be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
