# precomp_uniformContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46eef5b66be1bf1fa5147fb430663c2432efab16",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 421,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/efeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2c78d5d-e966-91a7-f855-b5f0bb90fe16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:540b65ef-296d-0697-bf3d-28ab2122dddd",
  "kind": "theorem",
  "lexical_name": "precomp_uniformContinuous",
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
  "slug": "precomp-uniformcontinuous--a1ae9ef786b3b551c5c7a833",
  "source": {
    "blob": "46eef5b66be1bf1fa5147fb430663c2432efab16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 421,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variantefeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1ae9ef786b3b551c5c7a8332414b7d18d79783357793e242822a2dad32ce4d3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variantefeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:540b65ef-296d-0697-bf3d-28ab2122dddd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem precomp_uniformContinuous {f : γ → α} :
    UniformContinuous fun g : α →ᵤ β => ofFun (toFun g ∘ f) := by
  -- Here we simply go back to filter bases.
  rw [UniformContinuous,
      (UniformFun.hasBasis_uniformity α β).tendsto_iff (UniformFun.hasBasis_uniformity γ β)]
  exact fun U hU => ⟨U, hU, fun uv huv x => huv (f x)⟩

/-- Turn a bijection `γ ≃ α` into a uniform isomorphism
`(γ →ᵤ β) ≃ᵤ (α →ᵤ β)` by pre-composing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variantefeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variantefeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46eef5b66be1bf1fa5147fb430663c2432efab16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
