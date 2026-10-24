# three_le_nValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:733beb2c-bf42-b3bf-631e-951776bb137c",
  "kind": "theorem",
  "lexical_name": "three_le_nValue",
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
  "slug": "three-le-nvalue--cffa6b4a8af1f73531258413",
  "source": {
    "blob": "e3b152982f972ac8125d780b5fec3c1d428682dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 351,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cffa6b4a8af1f73531258413f1d1f638a5107982249b70d5cc7cf2770fe66adc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:733beb2c-bf42-b3bf-631e-951776bb137c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem three_le_nValue (hN : 64 ≤ N) : 3 ≤ nValue N := by
  rw [nValue, ← lt_iff_add_one_le, lt_ceil, cast_two]
  apply lt_sqrt_of_sq_lt
  have : (2 : ℝ) ^ ((6 : ℕ) : ℝ) ≤ N := by
    rw [rpow_natCast]
    exact (cast_le.2 hN).trans' (by norm_num1)
  apply lt_of_lt_of_le _ (log_le_log (rpow_pos_of_pos zero_lt_two _) this)
  rw [log_rpow zero_lt_two, ← div_lt_iff₀']
  · exact log_two_gt_d9.trans_le' (by norm_num1)
  · norm_num1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3b152982f972ac8125d780b5fec3c1d428682dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
