# admitted_conversion_at_fuel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6014202-c08f-08a1-4a5e-35f1146da9ce",
  "kind": "theorem",
  "lexical_name": "admitted_conversion_at_fuel",
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
  "slug": "admitted-conversion-at-fuel--10767b21e697c01a50dc36af",
  "source": {
    "blob": "0149a6882e26f6d3303707d1c0f7c92eea77c30d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 79,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomorphicNormalization/Variant3bdbea916efbe09e5f168304e69018690d28018cda6ec4aa91acd5bf6792d49f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10767b21e697c01a50dc36af2b6a9f1ae153989dc7ea03d1104239bfeb31f9c8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomorphicNormalization/Variant3bdbea916efbe09e5f168304e69018690d28018cda6ec4aa91acd5bf6792d49f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6014202-c08f-08a1-4a5e-35f1146da9ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem admitted_conversion_at_fuel (context : List (Expr Bool))
    (valid : ValidContext monomorphicArrow context) (first second : Expr Bool)
    (firstLegal : Legal monomorphicArrow context first)
    (secondLegal : Legal monomorphicArrow context second) (firstFuel secondFuel : ℕ)
    (firstSufficient : FormalResearch.TypeTheory.BetaReduction.height
      (admittedState context valid first firstLegal) ≤ firstFuel)
    (secondSufficient : FormalResearch.TypeTheory.BetaReduction.height
      (admittedState context valid second secondLegal) ≤ secondFuel) :
    ∃ result, FormalResearch.TypeTheory.BetaReduction.conversionFuel
      firstFuel secondFuel first second = some result ∧
      (result = true ↔ Converts first second) :=
  FormalResearch.TypeTheory.BetaReduction.conversionFuel_complete
    (admittedState context valid first firstLegal) (admittedState context valid second secondLegal)
    firstFuel secondFuel firstSufficient secondSufficient

/-- Noncomputable exact heights mathematically certify sufficient source-conversion fuel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomorphicNormalization/Variant3bdbea916efbe09e5f168304e69018690d28018cda6ec4aa91acd5bf6792d49f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomorphicNormalization/Variant3bdbea916efbe09e5f168304e69018690d28018cda6ec4aa91acd5bf6792d49f.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0149a6882e26f6d3303707d1c0f7c92eea77c30d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
