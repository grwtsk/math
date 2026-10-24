# cyclotomic_105

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd0c3c49-2cfe-fb7a-ca28-aa5ff04da570",
  "kind": "theorem",
  "lexical_name": "cyclotomic_105",
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
  "slug": "cyclotomic-105--659077b34f4cbfbaa8fece8d",
  "source": {
    "blob": "ac9cfb23cfc049bb929c634260c81e2925247397",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 104,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Cyclotomic105/Variant64424b7374ccc5abe4a0f34b3b9d5bdf2fd83e532e1c3b9baef7f553524ddfee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:659077b34f4cbfbaa8fece8db426983efcc9f40a67137b5e041b7a0b951e6653",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Cyclotomic105/Variant64424b7374ccc5abe4a0f34b3b9d5bdf2fd83e532e1c3b9baef7f553524ddfee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd0c3c49-2cfe-fb7a-ca28-aa5ff04da570`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomic_105 :
    cyclotomic 105 ℤ =
      1 + X + X ^ 2 - X ^ 5 - X ^ 6 - 2 * X ^ 7 - X ^ 8 - X ^ 9 + X ^ 12 + X ^ 13 + X ^ 14 +
        X ^ 15 + X ^ 16 + X ^ 17 - X ^ 20 - X ^ 22 - X ^ 24 - X ^ 26 - X ^ 28 + X ^ 31 + X ^ 32 +
        X ^ 33 + X ^ 34 + X ^ 35 + X ^ 36 - X ^ 39 - X ^ 40 - 2 * X ^ 41 - X ^ 42 - X ^ 43 +
        X ^ 46 + X ^ 47 + X ^ 48 := by
  refine' ((eq_cyclotomic_iff (by norm_num) _).2 _).symm
  rw [properDivisors_105]
  repeat' rw [Finset.prod_insert (α := ℕ) (β := ℤ[X])]
  rw [Finset.prod_singleton, cyclotomic_one, cyclotomic_3, cyclotomic_5, cyclotomic_7,
    cyclotomic_15, cyclotomic_21, cyclotomic_35]
  ring
  repeat' norm_num
#align counterexample.cyclotomic_105 Counterexample.cyclotomic_105

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Cyclotomic105/Variant64424b7374ccc5abe4a0f34b3b9d5bdf2fd83e532e1c3b9baef7f553524ddfee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Cyclotomic105/Variant64424b7374ccc5abe4a0f34b3b9d5bdf2fd83e532e1c3b9baef7f553524ddfee.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac9cfb23cfc049bb929c634260c81e2925247397` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
