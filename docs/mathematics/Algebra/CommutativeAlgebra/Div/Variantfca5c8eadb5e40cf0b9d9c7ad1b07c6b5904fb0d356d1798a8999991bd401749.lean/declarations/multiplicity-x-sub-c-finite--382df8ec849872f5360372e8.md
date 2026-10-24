# multiplicity_X_sub_C_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "820aa1582432e233870bb60b99916ed5e9c72a18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 534,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62883b8d-6014-faf8-0682-c99930dee5fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ba894f5-5d32-5e4d-155c-6439b4aec413",
  "kind": "theorem",
  "lexical_name": "multiplicity_X_sub_C_finite",
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
  "slug": "multiplicity-x-sub-c-finite--382df8ec849872f5360372e8",
  "source": {
    "blob": "820aa1582432e233870bb60b99916ed5e9c72a18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 534,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:382df8ec849872f5360372e86f8054bedcd3d29a89012ba4a9ecab04d75ad251",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ba894f5-5d32-5e4d-155c-6439b4aec413`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 534–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplicity_X_sub_C_finite (a : R) (h0 : p ≠ 0) : multiplicity.Finite (X - C a) p := by
  haveI := Nontrivial.of_polynomial_ne h0
  refine' multiplicity_finite_of_degree_pos_of_monic _ (monic_X_sub_C _) h0
  rw [degree_X_sub_C]
  decide
set_option linter.uppercaseLean3 false in
#align polynomial.multiplicity_X_sub_C_finite Polynomial.multiplicity_X_sub_C_finite

/- Porting note: stripping out classical for decidability instance parameter might
make for better ergonomics -/
/-- The largest power of `X - C a` which divides `p`.
This is computable via the divisibility algorithm `Polynomial.decidableDvdMonic`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean#L534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `820aa1582432e233870bb60b99916ed5e9c72a18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
