# toFn_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8109eb4-3305-2e3e-ec07-f45742c5f1bc",
  "kind": "theorem",
  "lexical_name": "toFn_zero",
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
  "slug": "tofn-zero--f652689cc82a3bc156abc1ab",
  "source": {
    "blob": "4ce189d0eec016c7d765c36b153c2c499c63b6a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 40,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/OfFn/Variant66005f3b9cb825c140f1096dc74221c0ec861e9201ac7e1cd3b17ee3ecf95e61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f652689cc82a3bc156abc1ab2505b784c4ce2701ff425fe6021d80235e48dee5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/OfFn/Variant66005f3b9cb825c140f1096dc74221c0ec861e9201ac7e1cd3b17ee3ecf95e61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8109eb4-3305-2e3e-ec07-f45742c5f1bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toFn_zero (n : ℕ) : toFn n (0 : R[X]) = 0 := by simp

end toFn
section ofFn

variable {R : Type*} [Semiring R] [DecidableEq R]

/-- `ofFn n v` is the polynomial whose coefficients are the entries of the vector `v`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/OfFn/Variant66005f3b9cb825c140f1096dc74221c0ec861e9201ac7e1cd3b17ee3ecf95e61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/OfFn/Variant66005f3b9cb825c140f1096dc74221c0ec861e9201ac7e1cd3b17ee3ecf95e61.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ce189d0eec016c7d765c36b153c2c499c63b6a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
