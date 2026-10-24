# sum_range_not_prime_vonMangoldt_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87c674d3fe0da1c54fce8558c8d7826f12c68140",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 334,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/bae5016256fec0bfefca5d0fd8c63b649fe52a8f64bd61741746abe7b0cedc4a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ee541ea-3fc0-3662-2045-f24067d881c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dda69120-f7e3-0e5b-df73-09d2e50f8979",
  "kind": "theorem",
  "lexical_name": "sum_range_not_prime_vonMangoldt_eq",
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
  "slug": "sum-range-not-prime-vonmangoldt-eq--f8e77eaef24e76175152e913",
  "source": {
    "blob": "87c674d3fe0da1c54fce8558c8d7826f12c68140",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 334,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantbae5016256fec0bfefca5d0fd8c63b649fe52a8f64bd61741746abe7b0cedc4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8e77eaef24e76175152e913cb594999a24852559d86c3db9ad806eb53e3e9eb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantbae5016256fec0bfefca5d0fd8c63b649fe52a8f64bd61741746abe7b0cedc4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dda69120-f7e3-0e5b-df73-09d2e50f8979`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_range_not_prime_vonMangoldt_eq (x : ℕ) :
    (∑ n ∈ Finset.range (x + 1),
      if ¬ n.Prime then ArithmeticFunction.vonMangoldt n else 0) =
      Chebyshev.psi x - Chebyshev.theta x := by
  rw [Chebyshev.psi_sub_theta_eq_sum_not_prime]
  simp only [Nat.floor_natCast]
  rw [show Finset.range (x + 1) = Finset.Icc 0 x by
    ext n
    simp]
  rw [Finset.sum_filter]
  rw [← Finset.add_sum_Ioc_eq_sum_Icc]
  simp
  omega

/-- Twisting by `χ₃` can only reduce the absolute higher-prime-power
contribution. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantbae5016256fec0bfefca5d0fd8c63b649fe52a8f64bd61741746abe7b0cedc4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantbae5016256fec0bfefca5d0fd8c63b649fe52a8f64bd61741746abe7b0cedc4a.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87c674d3fe0da1c54fce8558c8d7826f12c68140` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
