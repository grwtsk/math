# coeff_prod_one_sub_X_pow_eventually_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1a7c59c077ea3e7c7fb2a691f9f6c02f7a91c3d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/ded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2697b206-fb81-58aa-87e3-1f9f1ff8fde7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14201ef1-0817-a6ac-10fd-0069a1069e04",
  "kind": "theorem",
  "lexical_name": "coeff_prod_one_sub_X_pow_eventually_eq",
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
  "slug": "coeff-prod-one-sub-x-pow-eventually-eq--8b8cee5114afde423560d919",
  "source": {
    "blob": "1a7c59c077ea3e7c7fb2a691f9f6c02f7a91c3d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 169,
    "path": "GRWTSK/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b8cee5114afde423560d9190dc87b6d98766ae5277ea079b55832fb4b1e0503",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14201ef1-0817-a6ac-10fd-0069a1069e04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_prod_one_sub_X_pow_eventually_eq (n : ℕ) :
    ∀ᶠ s in atTop, (∏ n ∈ s, (1 - X ^ (n + 1) : R⟦X⟧)).coeff n = (pentagonalSeries R).coeff n := by
  let : TopologicalSpace R := ⊥
  have : DiscreteTopology R := ⟨rfl⟩
  have h := (multipliable_one_sub_X_pow R).hasProd
  rw [tprod_one_sub_X_pow' R, HasProd, tendsto_iff_coeff_tendsto] at h
  simpa using h n

namespace WithPiTopology
variable [TopologicalSpace R]

/-- **Pentagonal number theorem** for power series, expressed as an infinite product. See also
`PowerSeries.WithPiTopology.hasSum_pentagonalSeries` that expresses `pentagonalSeries` as an
infinite sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PowerSeries/Variantded22366dd7f986b1ef914b4bd7bc3a82f0f96db15dbdc19a15a761a61c2dcde.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a7c59c077ea3e7c7fb2a691f9f6c02f7a91c3d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
