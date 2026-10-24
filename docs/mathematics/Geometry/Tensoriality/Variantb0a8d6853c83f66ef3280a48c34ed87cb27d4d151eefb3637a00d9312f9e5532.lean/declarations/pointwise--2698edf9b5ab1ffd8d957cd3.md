# pointwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a494d4bef9dae920d6bac00f9b790c3d6168efcc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65cad4be-5dee-429e-60bd-37d519e79ee9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c85e1614-21c9-7415-9b30-903da9da5061",
  "kind": "lemma",
  "lexical_name": "pointwise",
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
  "slug": "pointwise--2698edf9b5ab1ffd8d957cd3",
  "source": {
    "blob": "a494d4bef9dae920d6bac00f9b790c3d6168efcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 133,
    "path": "GRWTSK/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2698edf9b5ab1ffd8d957cd3ed1489ef404e0b73a5e1ffa8d5e6836d9f8c033c",
  "verification": {
    "reference": "docs/verification/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c85e1614-21c9-7415-9b30-903da9da5061`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pointwise (hΦ : TensorialAt I F Φ x) {σ σ' : Π x : M, V x}
    (hσ : MDiffAt (T% σ) x) (hσ' : MDiffAt (T% σ') x) (hσσ' : σ x = σ' x) :
    Φ σ = Φ σ' := by
  -- Select a local frame `s` for the bundle `V` near `x`,
  -- and let `c` be the family of linear maps evaluating the coefficients of a section relative to
  -- this frame
  let t := trivializationAt F V x
  have x_mem : x ∈ t.baseSet := FiberBundle.mem_baseSet_trivializationAt F V x
  let b := Basis.ofVectorSpace 𝕜 F
  let s := t.localFrame b
  let c := t.localFrameCoeff I b
  have hs (i) : MDiffAt (T% (s i)) x :=
    (contMDiffAt_localFrame_of_mem 1 _ b i x_mem).mdifferentiableAt (by simp)
  have hc {σ : (x : M) → V x} (hσ : MDiffAt (T% σ) x) (i) :
      MDiffAt (LinearMap.piApply (c i) σ) x :=
    mdifferentiableAt_localFrameCoeff b x_mem hσ i
  -- By the locality of the operation `(Φ · x)`, its value on `σ` agrees with the value of `Φ` on
  -- the expansion of `σ` into coefficients relative to the frame.
  have hΦ_eq {σ : (x : M) → V x} (hσ : MDiffAt (T% σ) x) :
      Φ σ = Φ (fun x' ↦ ∑ i, c i x' (σ x') • s i x') :=
    hΦ.local hσ
      (.sum_section fun i _ ↦ (hc hσ i).smul_section (hs i))
      (t.eventually_eq_localFrame_sum_coeff_smul b x_mem)
  -- Now evaluate using the tensoriality properties.
  rw [hΦ_eq hσ, hΦ_eq hσ', hΦ.sum, hΦ.sum]
  · congr! 1 with i
    calc Φ ((LinearMap.piApply (c i) σ) • (s i))
        = c i x (σ x) • Φ (s i) := hΦ.smul (hc hσ i) (hs i)
      _ = c i x (σ' x) • Φ (s i) := by rw [hσσ']
      _ = Φ ((LinearMap.piApply (c i) σ') • (s i)) :=
          hΦ.smul (hc hσ' i) (hs i) |>.symm
  · exact fun i _ ↦ (hc hσ' i).smul_section (hs i)
  · exact fun i _ ↦ (hc hσ i).smul_section (hs i)

/-- If the operation `Φ` on sections of vector bundles `V` and `V'` is tensorial at `x` in each
argument, then it depends only on the value of the sections at `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a494d4bef9dae920d6bac00f9b790c3d6168efcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
