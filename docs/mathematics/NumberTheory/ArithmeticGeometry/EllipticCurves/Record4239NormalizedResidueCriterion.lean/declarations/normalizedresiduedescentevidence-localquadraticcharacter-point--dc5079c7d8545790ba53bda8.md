# NormalizedResidueDescentEvidence.localQuadraticCharacter_point

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de4f695d-09ee-1734-bd66-baac3d0c624d",
  "kind": "theorem",
  "lexical_name": "NormalizedResidueDescentEvidence.localQuadraticCharacter_point",
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
  "slug": "normalizedresiduedescentevidence-localquadraticcharacter-point--dc5079c7d8545790ba53bda8",
  "source": {
    "blob": "272ec3d79e816176fe68f37dad3f9ea2e83558c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 94,
    "path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NormalizedResidueCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc5079c7d8545790ba53bda8018657ef563dcf456c1006391b7280084ae4fd18",
  "verification": {
    "reference": "docs/verification/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NormalizedResidueCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de4f695d-09ee-1734-bd66-baac3d0c624d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NormalizedResidueDescentEvidence.localQuadraticCharacter_point
    {C : Type u} [Monoid C]
    (ev : NormalizedResidueDescentEvidence C) (j i : Fin 32) :
    (ev.localQuadraticCharacter j
      (ev.mu (Multiplicative.ofAdd (nativePoint i)))).toAdd =
        sourceQuadraticBit j i := by
  letI : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩
  change (residueSquareClassBitHom (primeLabel j)
    (ev.normalize j (ev.mu (Multiplicative.ofAdd (nativePoint i))))).toAdd =
      sourceQuadraticBit j i
  rw [ev.sourceComparison j i]
  exact sourceReducedQuadraticBit_eq_sourceQuadraticBit j i

/-- Feed the concretely defined residue characters into the existing
native-point rank interface, preserving its explicit global descent
and finite arithmetic premises. This is a conditional reduction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NormalizedResidueCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NormalizedResidueCriterion.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `272ec3d79e816176fe68f37dad3f9ea2e83558c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
