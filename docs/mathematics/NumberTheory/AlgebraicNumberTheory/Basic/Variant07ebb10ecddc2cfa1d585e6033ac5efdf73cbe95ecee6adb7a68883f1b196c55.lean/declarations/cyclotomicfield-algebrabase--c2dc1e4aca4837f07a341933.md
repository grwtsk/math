# CyclotomicField.algebraBase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7bee7e17014f8a75f98289feb1190dc35d1bbfa4783e469478767c7e72f68ebd",
  "kind": "instance",
  "lexical_name": "CyclotomicField.algebraBase",
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
  "slug": "cyclotomicfield-algebrabase--c2dc1e4aca4837f07a341933",
  "source": {
    "blob": "0555b555990870f5bab2dac123a1dc46f5586630",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 586,
    "line": 582,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2dc1e4aca4837f07a341933e794e916b223549bb7aa6e5b86267d224fd03e0a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7bee7e17014f8a75f98289feb1190dc35d1bbfa4783e469478767c7e72f68ebd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 582–586.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance CyclotomicField.algebraBase : Algebra A (CyclotomicField n K) :=
  SplittingField.algebra' (cyclotomic n K)
#align cyclotomic_field.algebra_base CyclotomicField.algebraBase

/-- Ensure there are no diamonds when `A = ℤ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean#L582).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0555b555990870f5bab2dac123a1dc46f5586630` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
