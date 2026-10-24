# mem_spectrum_of_isRoot_charpoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:491d018a-f7d3-d6e3-51bf-d1a5e0319e06",
  "kind": "theorem",
  "lexical_name": "mem_spectrum_of_isRoot_charpoly",
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
  "slug": "mem-spectrum-of-isroot-charpoly--f90d29e403b8411c89086a99",
  "source": {
    "blob": "6ce71dbdc39b07715ae36a40f7a6b0032c28cf7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 84,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Eigs/Variant7f8c21f0e812716d888487cc79bbec4eec091da54c949a1bc09cb150f9aee40b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f90d29e403b8411c89086a99bd986573354e9940407fc491bca811452dfb007d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Eigs/Variant7f8c21f0e812716d888487cc79bbec4eec091da54c949a1bc09cb150f9aee40b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:491d018a-f7d3-d6e3-51bf-d1a5e0319e06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_spectrum_of_isRoot_charpoly [Nontrivial R] {r : R} (hr : IsRoot B.charpoly r) :
    r ∈ spectrum R B := by
  simp [mem_spectrum_iff_not_isUnit_eval_charpoly, hr.eq_zero]

/--
In fields, the roots of the characteristic polynomial are exactly the spectrum of the matrix.
The weaker direction is true in nontrivial rings (see `Matrix.mem_spectrum_of_isRoot_charpoly`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Eigs/Variant7f8c21f0e812716d888487cc79bbec4eec091da54c949a1bc09cb150f9aee40b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Eigs/Variant7f8c21f0e812716d888487cc79bbec4eec091da54c949a1bc09cb150f9aee40b.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ce71dbdc39b07715ae36a40f7a6b0032c28cf7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
