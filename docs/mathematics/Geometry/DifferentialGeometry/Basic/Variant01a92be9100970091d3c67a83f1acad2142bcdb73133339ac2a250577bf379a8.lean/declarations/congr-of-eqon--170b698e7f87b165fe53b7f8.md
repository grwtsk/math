# congr_of_eqOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c9563d266d97b9201d51fce894db3958bc18e43",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5ed5b16-ac5e-4352-23fe-13b3002a04d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce326403-2965-a648-5370-8df123f571bf",
  "kind": "lemma",
  "lexical_name": "congr_of_eqOn",
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
  "slug": "congr-of-eqon--170b698e7f87b165fe53b7f8",
  "source": {
    "blob": "2c9563d266d97b9201d51fce894db3958bc18e43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 153,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:170b698e7f87b165fe53b7f8170d5f3c0fb743a2cd8d0be54afd726fd7b9fb00",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce326403-2965-a648-5370-8df123f571bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma congr_of_eqOn
    {cov : (Π x : M, V x) → (Π x : M, TangentSpace I x →L[𝕜] V x)}
    {s : Set M} (hcov : IsCovariantDerivativeOn F cov s)
    {σ σ' : Π x : M, V x} {x : M}
    (hσ : MDiffAt (T% σ) x) (hσ' : MDiffAt (T% σ') x)
    (hxs : s ∈ 𝓝 x) (hσσ' : ∀ x ∈ s, σ x = σ' x) :
    cov σ x = cov σ' x := by
  classical
  have hxs' : x ∈ s := mem_of_mem_nhds hxs
  let ψ (x' : M) : 𝕜 := if x' ∈ s then 1 else 0
  have hψx : ψ x = 1 := by simp [ψ, hxs']
  -- Observe that `ψ • σ = ψ • σ'` as dependent functions.
  have H (x' : M) : ((ψ : M → 𝕜) • σ) x' = ((ψ : M → 𝕜) • σ') x' := by
    dsimp [ψ]
    split_ifs with hx's
    · simpa using hσσ' _ hx's
    · simp
  have hψ' : HasMFDerivAt I 𝓘(𝕜) ψ x 0 := by
    have : HasMFDerivAt I 𝓘(𝕜, 𝕜) (fun (_x : M) ↦ (1 : 𝕜)) x 0 := hasMFDerivAt_const ..
    refine this.congr_of_eventuallyEq ?_
    apply Filter.eventuallyEq_of_mem hxs
    intro t ht
    simp [ψ, ht]
  have := hcov.leibniz hσ hψ'.mdifferentiableAt
  -- Then, it's a chain of (dependent) equalities.
  calc cov σ x
    _ = cov ((ψ : M → 𝕜) • σ) x := by
      simp [hcov.leibniz hσ hψ'.mdifferentiableAt, hψx, mvfderiv, hψ'.mfderiv]
    _ = cov ((ψ : M → 𝕜) • σ') x := by rw [funext H]
    _ = cov σ' x := by
      simp [hcov.leibniz hσ' hψ'.mdifferentiableAt, hψx, mvfderiv, hψ'.mfderiv]

open Filter Set in
/-- Given a covariant derivative `cov` on a neighborhood `s` of a point `x`, if sections `σ` and
`σ'` agree near `x` and are differentiable at `x`, then `cov σ x = cov σ x'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c9563d266d97b9201d51fce894db3958bc18e43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
