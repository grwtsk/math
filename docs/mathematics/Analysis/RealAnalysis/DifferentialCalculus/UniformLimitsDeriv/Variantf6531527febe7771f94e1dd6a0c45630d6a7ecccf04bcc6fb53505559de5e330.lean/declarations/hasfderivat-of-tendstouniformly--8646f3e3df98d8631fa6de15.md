# hasFDerivAt_of_tendstoUniformly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98bee4e5dc8eb57cbd2486e201e26a0df912a9d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 430,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c2a24b0-3278-eac8-e529-da8048829f65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fcfc359a-71e3-70c9-c6f2-c9db156d2325",
  "kind": "theorem",
  "lexical_name": "hasFDerivAt_of_tendstoUniformly",
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
  "slug": "hasfderivat-of-tendstouniformly--8646f3e3df98d8631fa6de15",
  "source": {
    "blob": "98bee4e5dc8eb57cbd2486e201e26a0df912a9d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 430,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8646f3e3df98d8631fa6de15cb4a27064ae78424e77759d90adf63e344c3c5f4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcfc359a-71e3-70c9-c6f2-c9db156d2325`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFDerivAt_of_tendstoUniformly [NeBot l] (hf' : TendstoUniformly f' g' l)
    (hf : ∀ n : ι, ∀ x : E, HasFDerivAt (f n) (f' n x) x)
    (hfg : ∀ x : E, Tendsto (fun n => f n x) l (𝓝 (g x))) (x : E) : HasFDerivAt g (g' x) x := by
  have hf : ∀ n : ι, ∀ x : E, x ∈ Set.univ → HasFDerivAt (f n) (f' n x) x := by simp [hf]
  have hfg : ∀ x : E, x ∈ Set.univ → Tendsto (fun n => f n x) l (𝓝 (g x)) := by simp [hfg]
  have hf' : TendstoUniformlyOn f' g' l Set.univ := by rwa [tendstoUniformlyOn_univ]
  exact hasFDerivAt_of_tendstoUniformlyOn isOpen_univ hf' hf hfg (Set.mem_univ x)

end LimitsOfDerivatives

section deriv

/-! ### `deriv` versions of above theorems

In this section, we provide `deriv` equivalents of the `fderiv` lemmas in the previous section.
-/


variable {ι : Type*} {l : Filter ι} {𝕜 : Type*} [NontriviallyNormedField 𝕜]
  {G : Type*} [NormedAddCommGroup G]
  [NormedSpace 𝕜 G] {f : ι → 𝕜 → G} {g : 𝕜 → G} {f' : ι → 𝕜 → G} {g' : 𝕜 → G} {x : 𝕜}

/-- If our derivatives converge uniformly, then the Fréchet derivatives converge uniformly -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98bee4e5dc8eb57cbd2486e201e26a0df912a9d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
