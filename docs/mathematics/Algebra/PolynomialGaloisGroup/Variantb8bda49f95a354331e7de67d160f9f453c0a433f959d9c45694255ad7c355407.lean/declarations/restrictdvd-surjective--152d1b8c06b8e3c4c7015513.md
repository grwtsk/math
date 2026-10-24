# restrictDvd_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6206c4e6-5c0d-2c59-2ee6-81af2859f9a0",
  "kind": "theorem",
  "lexical_name": "restrictDvd_surjective",
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
  "slug": "restrictdvd-surjective--152d1b8c06b8e3c4c7015513",
  "source": {
    "blob": "a6bcebab1ecaf07d349bf936ed646ea367e57c19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 253,
    "path": "GRWTSK/Algebra/PolynomialGaloisGroup/Variantb8bda49f95a354331e7de67d160f9f453c0a433f959d9c45694255ad7c355407.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:152d1b8c06b8e3c4c70155135b0f286d43761f2d9643d200726730e1376684d3",
  "verification": {
    "reference": "docs/verification/Algebra/PolynomialGaloisGroup/Variantb8bda49f95a354331e7de67d160f9f453c0a433f959d9c45694255ad7c355407.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6206c4e6-5c0d-2c59-2ee6-81af2859f9a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrictDvd_surjective (hpq : p ∣ q) (hq : q ≠ 0) :
    Function.Surjective (restrictDvd hpq) := by
  classical
  have := Fact.mk <|
    (SplittingField.splits q).of_dvd (map_ne_zero hq) ((map_dvd_map' _).mpr hpq)
  simpa only [restrictDvd_def, dite_eq_right hq] using! restrict_surjective _ _

variable (p q)

/-- The Galois group of a product maps into the product of the Galois groups. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PolynomialGaloisGroup/Variantb8bda49f95a354331e7de67d160f9f453c0a433f959d9c45694255ad7c355407.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PolynomialGaloisGroup/Variantb8bda49f95a354331e7de67d160f9f453c0a433f959d9c45694255ad7c355407.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6bcebab1ecaf07d349bf936ed646ea367e57c19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
