# eq_pow_order_mul_iterate_dslope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bee65867-f025-dbac-9748-a5b2c7ee2e49",
  "kind": "theorem",
  "lexical_name": "eq_pow_order_mul_iterate_dslope",
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
  "slug": "eq-pow-order-mul-iterate-dslope--f416462d868f9072e5d369db",
  "source": {
    "blob": "085df819054d03f4ff17f1f0725d73edad723a5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 110,
    "path": "GRWTSK/Analysis/ComplexAnalysis/IsolatedZeros/Variantc6e5c6f0e4ef38869162dfa3ce128d08a69df966df21d9bf5807d7420b590e1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f416462d868f9072e5d369db4ade63d2734441ad3e4ee78798ccaf0bda3c6701",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IsolatedZeros/Variantc6e5c6f0e4ef38869162dfa3ce128d08a69df966df21d9bf5807d7420b590e1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bee65867-f025-dbac-9748-a5b2c7ee2e49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_pow_order_mul_iterate_dslope (hp : HasFPowerSeriesAt f p z₀) (z : 𝕜) :
    f z = (z - z₀) ^ p.order • (swap dslope z₀)^[p.order] f z := by
  refine (pow_sub_smul_iterate_dslope_of_zero _ (fun k hk ↦ ?_) z).symm
  rw [← (has_fpower_series_iterate_dslope_fslope k hp).coeff_zero 1, ← coeff, coeff_iterate_fslope,
    zero_add, coeff, p.apply_eq_zero_of_lt_order hk, _root_.zero_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/IsolatedZeros/Variantc6e5c6f0e4ef38869162dfa3ce128d08a69df966df21d9bf5807d7420b590e1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/IsolatedZeros/Variantc6e5c6f0e4ef38869162dfa3ce128d08a69df966df21d9bf5807d7420b590e1c.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `085df819054d03f4ff17f1f0725d73edad723a5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
