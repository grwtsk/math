# leadingCoeff_monomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a37edd52-9d20-84c2-9199-5d3aab83030b",
  "kind": "theorem",
  "lexical_name": "leadingCoeff_monomial",
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
  "slug": "leadingcoeff-monomial--b9e30f4bb4e31c48a91a16f2",
  "source": {
    "blob": "e05ccc2c9839e09897620dfc1ec99f0f150ed679",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 429,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Definitions/Variant439ff0f65c5a0e3e6f163fdc2fb032a766ba5a493cddbcf0cf45464226823d13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9e30f4bb4e31c48a91a16f268b97807304d18e687ff962ea3c9388e1940274f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Definitions/Variant439ff0f65c5a0e3e6f163fdc2fb032a766ba5a493cddbcf0cf45464226823d13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a37edd52-9d20-84c2-9199-5d3aab83030b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leadingCoeff_monomial (a : R) (n : ℕ) : leadingCoeff (monomial n a) = a := by
  classical
  by_cases ha : a = 0
  · simp only [ha, (monomial n).map_zero, leadingCoeff_zero]
  · rw [leadingCoeff, natDegree_monomial, if_neg ha, coeff_monomial]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Definitions/Variant439ff0f65c5a0e3e6f163fdc2fb032a766ba5a493cddbcf0cf45464226823d13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Definitions/Variant439ff0f65c5a0e3e6f163fdc2fb032a766ba5a493cddbcf0cf45464226823d13.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e05ccc2c9839e09897620dfc1ec99f0f150ed679` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
