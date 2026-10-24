# not_irrational_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71314e44-ea74-f870-e450-f90690f0027d",
  "kind": "theorem",
  "lexical_name": "not_irrational_rpow",
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
  "slug": "not-irrational-rpow--66747eb5074e91b627a991fa",
  "source": {
    "blob": "d607b850bb6f42ebbeb29870b7a64c06ec4aafba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 37,
    "path": "GRWTSK/Analysis/SpecialFunctions/IrrationalPowerOfIrrational/Variantc04b7b4bb744d2fdb44a008cdb3552bcaa6fca4346b58d8b79f15d0958b51603.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66747eb5074e91b627a991fa4a57b34cf73c05a0c5b6f1989487a16b8da0f8d0",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/IrrationalPowerOfIrrational/Variantc04b7b4bb744d2fdb44a008cdb3552bcaa6fca4346b58d8b79f15d0958b51603.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71314e44-ea74-f870-e450-f90690f0027d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_irrational_rpow :
   ¬ ∀ a b : ℝ, Irrational a → Irrational b → 0 < a → Irrational (a ^ b) := by
  push_neg
  by_cases hc : Irrational (√2 ^ √2)
  · use (√2 ^ √2), √2, hc, irrational_sqrt_two, by positivity
    rw [← rpow_mul, mul_self_sqrt, rpow_two, sq_sqrt] <;> norm_num
  · use √2, √2, irrational_sqrt_two, irrational_sqrt_two, by positivity, hc

end Counterexample
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/IrrationalPowerOfIrrational/Variantc04b7b4bb744d2fdb44a008cdb3552bcaa6fca4346b58d8b79f15d0958b51603.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/IrrationalPowerOfIrrational/Variantc04b7b4bb744d2fdb44a008cdb3552bcaa6fca4346b58d8b79f15d0958b51603.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d607b850bb6f42ebbeb29870b7a64c06ec4aafba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
