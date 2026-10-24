# cyclotomic_35

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef0683c8-bcb5-1cea-2247-33ff063e8a0a",
  "kind": "theorem",
  "lexical_name": "cyclotomic_35",
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
  "slug": "cyclotomic-35--e73951b0dfcb944a42f12b9c",
  "source": {
    "blob": "ac9cfb23cfc049bb929c634260c81e2925247397",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 93,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Cyclotomic105/Variant64424b7374ccc5abe4a0f34b3b9d5bdf2fd83e532e1c3b9baef7f553524ddfee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e73951b0dfcb944a42f12b9c6131327d975d328485413e9cb29adbbc1369328c",
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

Occurrence: `result:ef0683c8-bcb5-1cea-2247-33ff063e8a0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomic_35 :
    cyclotomic 35 ℤ =
      1 - X + X ^ 5 - X ^ 6 + X ^ 7 - X ^ 8 + X ^ 10 - X ^ 11 + X ^ 12 - X ^ 13 + X ^ 14 - X ^ 16 +
        X ^ 17 - X ^ 18 + X ^ 19 - X ^ 23 + X ^ 24 := by
  refine' ((eq_cyclotomic_iff (by norm_num) _).2 _).symm
  rw [properDivisors_35, Finset.prod_insert _, Finset.prod_insert _, Finset.prod_singleton,
    cyclotomic_one, cyclotomic_5, cyclotomic_7]
  ring
  repeat' norm_num
#align counterexample.cyclotomic_35 Counterexample.cyclotomic_35

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Cyclotomic105/Variant64424b7374ccc5abe4a0f34b3b9d5bdf2fd83e532e1c3b9baef7f553524ddfee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Cyclotomic105/Variant64424b7374ccc5abe4a0f34b3b9d5bdf2fd83e532e1c3b9baef7f553524ddfee.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac9cfb23cfc049bb929c634260c81e2925247397` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
