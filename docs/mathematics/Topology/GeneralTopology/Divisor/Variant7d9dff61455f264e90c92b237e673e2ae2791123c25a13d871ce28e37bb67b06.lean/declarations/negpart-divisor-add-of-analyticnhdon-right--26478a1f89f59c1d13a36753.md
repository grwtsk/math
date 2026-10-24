# negPart_divisor_add_of_analyticNhdOn_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8892fe84c8719893454c5228af5c8f9751072e92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1d8bd76-9aa8-3476-bd85-4173b928675f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5792f036-4402-ef9c-5571-d2a4cf08a43f",
  "kind": "theorem",
  "lexical_name": "negPart_divisor_add_of_analyticNhdOn_right",
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
  "slug": "negpart-divisor-add-of-analyticnhdon-right--26478a1f89f59c1d13a36753",
  "source": {
    "blob": "8892fe84c8719893454c5228af5c8f9751072e92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 184,
    "path": "GRWTSK/Topology/GeneralTopology/Divisor/Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26478a1f89f59c1d13a367532a120514927f32f27752d3066db9a58cb16fa630",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Divisor/Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5792f036-4402-ef9c-5571-d2a4cf08a43f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negPart_divisor_add_of_analyticNhdOn_right {f₁ f₂ : 𝕜 → E} (hf₁ : MeromorphicOn f₁ U)
    (hf₂ : AnalyticOnNhd 𝕜 f₂ U) :
    (divisor (f₁ + f₂) U)⁻ = (divisor f₁ U)⁻ := by
  ext x
  by_cases hx : x ∈ U
  · suffices -(meromorphicOrderAt (f₁ + f₂) x).untop₀ ⊔ 0 = -(meromorphicOrderAt f₁ x).untop₀ ⊔ 0 by
      simpa [negPart_def, hx, hf₁, hf₁.add hf₂.meromorphicOn]
    by_cases h : 0 ≤ meromorphicOrderAt f₁ x
    · suffices 0 ≤ meromorphicOrderAt (f₁ + f₂) x by simp_all
      calc 0
      _ ≤ min (meromorphicOrderAt f₁ x) (meromorphicOrderAt f₂ x) :=
        le_inf h (hf₂ x hx).meromorphicOrderAt_nonneg
      _ ≤ meromorphicOrderAt (f₁ + f₂) x :=
        meromorphicOrderAt_add (hf₁ x hx) (hf₂ x hx).meromorphicAt
    · suffices meromorphicOrderAt f₁ x < meromorphicOrderAt f₂ x by
        rwa [meromorphicOrderAt_add_eq_left_of_lt (hf₂.meromorphicOn x hx)]
      calc meromorphicOrderAt f₁ x
      _ < 0 := by simpa using h
      _ ≤ meromorphicOrderAt f₂ x := (hf₂ x hx).meromorphicOrderAt_nonneg
  simp [hx]

/-- Adding an analytic function to a meromorphic one does not change the pole divisor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Divisor/Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Divisor/Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8892fe84c8719893454c5228af5c8f9751072e92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
