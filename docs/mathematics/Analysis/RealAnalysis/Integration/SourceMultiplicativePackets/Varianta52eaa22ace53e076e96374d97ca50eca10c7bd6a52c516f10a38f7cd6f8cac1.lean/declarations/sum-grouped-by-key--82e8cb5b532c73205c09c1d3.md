# sum_grouped_by_key

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd7efca9-2bea-33e2-4b00-75464e2c2daa",
  "kind": "theorem",
  "lexical_name": "sum_grouped_by_key",
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
  "slug": "sum-grouped-by-key--82e8cb5b532c73205c09c1d3",
  "source": {
    "blob": "78ada58f59d7210b8fa01dd53477696de3ae809e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 265,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Varianta52eaa22ace53e076e96374d97ca50eca10c7bd6a52c516f10a38f7cd6f8cac1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82e8cb5b532c73205c09c1d331ea5b7478a489391fbd766546d37e203eec48d4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Varianta52eaa22ace53e076e96374d97ca50eca10c7bd6a52c516f10a38f7cd6f8cac1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd7efca9-2bea-33e2-4b00-75464e2c2daa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_grouped_by_key {ι κ : Type*} [DecidableEq κ] (s : Finset ι)
    (key : ι → κ) (weight : ι → ℝ) (response : κ → ℝ) :
    (∑ i ∈ s, weight i * response (key i)) =
      ∑ r ∈ s.image key, (∑ i ∈ s with key i = r, weight i) * response r := by
  classical
  rw [← Finset.sum_fiberwise_of_maps_to (s := s) (t := s.image key)
    (g := key) (by intro i hi; exact Finset.mem_image_of_mem key hi)
    (fun i => weight i * response (key i))]
  apply Finset.sum_congr rfl
  intro r _
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro i hi
  rw [(Finset.mem_filter.mp hi).2]

/-- Four exact rational keys for the cubic product-to-sum identity. Rational
arithmetic reduces equal fractions canonically; logarithmic rounding is unused. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Varianta52eaa22ace53e076e96374d97ca50eca10c7bd6a52c516f10a38f7cd6f8cac1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Varianta52eaa22ace53e076e96374d97ca50eca10c7bd6a52c516f10a38f7cd6f8cac1.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78ada58f59d7210b8fa01dd53477696de3ae809e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
