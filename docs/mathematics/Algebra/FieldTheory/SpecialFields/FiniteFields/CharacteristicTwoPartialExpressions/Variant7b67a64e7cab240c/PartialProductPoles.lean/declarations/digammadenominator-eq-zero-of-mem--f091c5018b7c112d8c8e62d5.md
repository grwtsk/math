# digammaDenominator_eq_zero_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c61fda28-4481-d5d2-6edb-3a3d9c3f7228",
  "kind": "theorem",
  "lexical_name": "digammaDenominator_eq_zero_of_mem",
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
  "slug": "digammadenominator-eq-zero-of-mem--f091c5018b7c112d8c8e62d5",
  "source": {
    "blob": "b94905b1cf8f20d3208a366acb6739f4bc0ece43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 80,
    "path": "GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/CharacteristicTwoPartialExpressions/Variant7b67a64e7cab240c/PartialProductPoles.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f091c5018b7c112d8c8e62d5f574b7f65cad5a3c2cd64070aa213420663641d2",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/SpecialFields/FiniteFields/CharacteristicTwoPartialExpressions/Variant7b67a64e7cab240c/PartialProductPoles.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c61fda28-4481-d5d2-6edb-3a3d9c3f7228`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem digammaDenominator_eq_zero_of_mem
    (roots : Finset F) {a : F} (ha : a ∈ roots) :
    digammaDenominator roots a = 0 := by
  apply Finset.prod_eq_zero ha
  exact CharTwo.add_self_eq_zero a

/-- The partial expression returns `none` at every selected root. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/Algebra/FieldTheory/SpecialFields/FiniteFields/CharacteristicTwoPartialExpressions/Variant7b67a64e7cab240c/PartialProductPoles.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/CharacteristicTwoPartialExpressions/Variant7b67a64e7cab240c/PartialProductPoles.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b94905b1cf8f20d3208a366acb6739f4bc0ece43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
