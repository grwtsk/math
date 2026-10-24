# tendstoUniformlyOn_iff_of_uniformity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf99ede0-5338-7aa3-8132-bafd78a5d2c1",
  "kind": "lemma",
  "lexical_name": "tendstoUniformlyOn_iff_of_uniformity",
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
  "slug": "tendstouniformlyon-iff-of-uniformity--384bd510bfd42a4f0b0ad4ce",
  "source": {
    "blob": "3dd1a950ccbf086c7b365c0d709c403e012d04b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 406,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant34ffaf3e476fe763dfc064146e3ebf576965d7284aff8971ce15cf0984c8bd1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:384bd510bfd42a4f0b0ad4cee495791410755efd19491621a94a9e586970acf1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant34ffaf3e476fe763dfc064146e3ebf576965d7284aff8971ce15cf0984c8bd1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf99ede0-5338-7aa3-8132-bafd78a5d2c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendstoUniformlyOn_iff_of_uniformity {F : X → α → β} {f : α → β}
    {l : Filter X} {s : Set α} {pβ : ιβ → Prop} {sβ : ιβ → Set (β × β)}
    (hβ : (uniformity β).HasBasis pβ sβ) :
    TendstoUniformlyOn F f l s ↔
      (∀ i, pβ i → ∀ᶠ n in l, ∀ x ∈ s, (f x, F n x) ∈ sβ i) := by
  simp_rw [tendstoUniformlyOn_iff_tendsto, hβ.tendsto_right_iff, eventually_prod_principal_iff]

/-- An analogue of `Filter.HasBasis.tendsto_iff` for `TendstoUniformlyOn`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant34ffaf3e476fe763dfc064146e3ebf576965d7284aff8971ce15cf0984c8bd1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant34ffaf3e476fe763dfc064146e3ebf576965d7284aff8971ce15cf0984c8bd1c.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dd1a950ccbf086c7b365c0d709c403e012d04b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
