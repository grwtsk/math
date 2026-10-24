# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c231001844b9071c1b4cb659a25ec0678ce79a22d16d93ab055835af78803b4",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--ca2ac31dcf97679085deab56",
  "source": {
    "blob": "5acec8c5d00fba6e2119d3be5ddeff97c7b5fe82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 54,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant8474f04a5a9bf61842a30cc78d832a6e59faad5e55b6a761f42fb056bd7e8cda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca2ac31dcf97679085deab5633e3fae1456669827965fa6cab6c16cb94e5d6ee",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variant8474f04a5a9bf61842a30cc78d832a6e59faad5e55b6a761f42fb056bd7e8cda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c231001844b9071c1b4cb659a25ec0678ce79a22d16d93ab055835af78803b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {R : Type u} [Semiring R] {p : Polynomial R} [Subsingleton R] :
    Polynomial.degree p = ⊥ := by
  rw_search [-Polynomial.degree_of_subsingleton]
  -- Mathlib proof:
  -- rw [Subsingleton.elim p 0, degree_zero]
  done

-- Fails:
-- -- Polynomial.natDegree_of_subsingleton.{u}
-- example {R : Type u} [Semiring R] {p : Polynomial R}
--     [Subsingleton R] : Polynomial.natDegree p = 0 := by
--   rw_search [-Polynomial.natDegree_of_subsingleton]
--   -- Mathlib proof:
--   -- rw [Subsingleton.elim p 0, natDegree_zero]
--   done

-- Polynomial.degree_C_mul_X_pow.{u}
#guard_msgs(drop info) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variant8474f04a5a9bf61842a30cc78d832a6e59faad5e55b6a761f42fb056bd7e8cda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant8474f04a5a9bf61842a30cc78d832a6e59faad5e55b6a761f42fb056bd7e8cda.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5acec8c5d00fba6e2119d3be5ddeff97c7b5fe82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
