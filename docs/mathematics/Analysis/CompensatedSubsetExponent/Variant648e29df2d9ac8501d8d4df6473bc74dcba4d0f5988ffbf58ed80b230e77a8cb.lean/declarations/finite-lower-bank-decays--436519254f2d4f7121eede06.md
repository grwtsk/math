# finite_lower_bank_decays

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38f55ffc-c3b4-32df-229b-8457c25ba19e",
  "kind": "theorem",
  "lexical_name": "finite_lower_bank_decays",
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
  "slug": "finite-lower-bank-decays--436519254f2d4f7121eede06",
  "source": {
    "blob": "9da36f8b2cc4196457642633e52033b4dca38525",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 50,
    "path": "GRWTSK/Analysis/CompensatedSubsetExponent/Variant648e29df2d9ac8501d8d4df6473bc74dcba4d0f5988ffbf58ed80b230e77a8cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:436519254f2d4f7121eede06bf14660fc8dad7b2aeafac344cd5ec7096ef2db5",
  "verification": {
    "reference": "docs/verification/Analysis/CompensatedSubsetExponent/Variant648e29df2d9ac8501d8d4df6473bc74dcba4d0f5988ffbf58ed80b230e77a8cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38f55ffc-c3b4-32df-229b-8457c25ba19e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_lower_bank_decays {ι : Type*} (bank : Finset (Finset ι))
    (ell : ι → ℝ) (a : Finset ι → ℝ)
    (hn : ∀ J ∈ bank, J.Nonempty) (hell : ∀ J ∈ bank, ∀ i ∈ J, 0 < ell i) :
    Tendsto (fun Z : ℝ ↦ ∑ J ∈ bank, a J * Z ^ extraExponent ell J) atTop (𝓝 0) := by
  have h := tendsto_finsetSum bank (fun J hJ ↦
    (subset_relative_power_decays (hn J hJ) (hell J hJ)).const_mul (a J))
  simpa using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CompensatedSubsetExponent/Variant648e29df2d9ac8501d8d4df6473bc74dcba4d0f5988ffbf58ed80b230e77a8cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CompensatedSubsetExponent/Variant648e29df2d9ac8501d8d4df6473bc74dcba4d0f5988ffbf58ed80b230e77a8cb.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9da36f8b2cc4196457642633e52033b4dca38525` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
