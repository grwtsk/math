# meromorphicOrderAt_comp_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a5bf1f96ef9ad5e04e639c4c7097162b04d0bfe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/bec5e7354f0c232ed1fda0f290a7c2a839f7160951836217a9d56c0d2aba90c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e78a77b7-1b7e-f32d-821b-8e35f9c8a618",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba4659ca-fe35-cd91-31b5-f6e52243bf5f",
  "kind": "lemma",
  "lexical_name": "meromorphicOrderAt_comp_smul",
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
  "slug": "meromorphicorderat-comp-smul--8a28750edb53ca6a2878c704",
  "source": {
    "blob": "7a5bf1f96ef9ad5e04e639c4c7097162b04d0bfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 204,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Manifold/Variantbec5e7354f0c232ed1fda0f290a7c2a839f7160951836217a9d56c0d2aba90c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a28750edb53ca6a2878c704f31cce1c55c391516bc0632fbf272a90d5d3923b",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Manifold/Variantbec5e7354f0c232ed1fda0f290a7c2a839f7160951836217a9d56c0d2aba90c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba4659ca-fe35-cd91-31b5-f6e52243bf5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma meromorphicOrderAt_comp_smul {f : ℍ → ℂ} {τ : ℍ} {g : GL (Fin 2) ℝ} (hg : 0 < g.val.det) :
    meromorphicOrderAt (fun z ↦ f (g • ofComplex z)) τ =
      meromorphicOrderAt (fun z ↦ f (ofComplex z)) ↑(g • τ) := by
  let G z : ℂ := ↑(g • ofComplex z)
  let F z := f (ofComplex z)
  have : (fun z : ℂ ↦ f (g • ofComplex z)) = F ∘ G := by ext; simp [F, G]
  rw [this, meromorphicOrderAt_comp_of_deriv_ne_zero]
  · simp [F, G]
  · exact τ.analyticAt_smul hg
  · exact τ.deriv_smul_ne_zero hg

end Complex


section Real

/-- `ℝ`-linear map from `ℂ` to itself, which we shall show is the real derivative of the
`GL(2, ℝ)`-action on `ℍ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Manifold/Variantbec5e7354f0c232ed1fda0f290a7c2a839f7160951836217a9d56c0d2aba90c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Manifold/Variantbec5e7354f0c232ed1fda0f290a7c2a839f7160951836217a9d56c0d2aba90c4.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a5bf1f96ef9ad5e04e639c4c7097162b04d0bfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
