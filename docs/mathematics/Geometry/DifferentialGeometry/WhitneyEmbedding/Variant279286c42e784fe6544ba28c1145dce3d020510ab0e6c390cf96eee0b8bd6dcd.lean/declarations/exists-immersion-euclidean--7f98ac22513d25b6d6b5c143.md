# exists_immersion_euclidean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "afda663d4190bc7fd7a9fd1cd949d6d993ff33d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/279286c42e784fe6544ba28c1145dce3d020510ab0e6c390cf96eee0b8bd6dcd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90b5b2f0-0feb-5d54-387a-12363d21ee74",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99bad12d-e320-ae49-2880-c2d0eb2d0290",
  "kind": "theorem",
  "lexical_name": "exists_immersion_euclidean",
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
  "slug": "exists-immersion-euclidean--7f98ac22513d25b6d6b5c143",
  "source": {
    "blob": "afda663d4190bc7fd7a9fd1cd949d6d993ff33d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 110,
    "path": "GRWTSK/Geometry/DifferentialGeometry/WhitneyEmbedding/Variant279286c42e784fe6544ba28c1145dce3d020510ab0e6c390cf96eee0b8bd6dcd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f98ac22513d25b6d6b5c1439e1f1948687d7047616aea00f4ae5a849634b85c",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/WhitneyEmbedding/Variant279286c42e784fe6544ba28c1145dce3d020510ab0e6c390cf96eee0b8bd6dcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99bad12d-e320-ae49-2880-c2d0eb2d0290`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_immersion_euclidean {ι : Type*} [Finite ι] (f : SmoothBumpCovering ι I M) :
    ∃ (n : ℕ) (e : M → EuclideanSpace ℝ (Fin n)),
      ContMDiff I (𝓡 n) ∞ e ∧ Injective e ∧ ∀ x : M, Injective (mfderiv I (𝓡 n) e x) := by
  cases nonempty_fintype ι
  set F := EuclideanSpace ℝ (Fin <| finrank ℝ (ι → E × ℝ))
  letI : IsNoetherian ℝ (E × ℝ) := IsNoetherian.iff_fg.2 inferInstance
  letI : FiniteDimensional ℝ (ι → E × ℝ) := IsNoetherian.iff_fg.1 inferInstance
  set eEF : (ι → E × ℝ) ≃L[ℝ] F :=
    ContinuousLinearEquiv.ofFinrankEq finrank_euclideanSpace_fin.symm
  refine ⟨_, eEF ∘ f.embeddingPiTangent,
    eEF.toDiffeomorph.contMDiff.comp f.embeddingPiTangent.contMDiff,
    eEF.injective.comp f.embeddingPiTangent_injective, fun x => ?_⟩
  rw [mfderiv_comp _ eEF.differentiableAt.mdifferentiableAt
      (f.embeddingPiTangent.contMDiff.mdifferentiableAt (mod_cast le_top)),
    eEF.mfderiv_eq]
  exact eEF.injective.comp (f.embeddingPiTangent_injective_mfderiv _ trivial)

end SmoothBumpCovering

/-- Baby version of the Whitney weak embedding theorem: if `M` admits a finite covering by
supports of bump functions, then for some `n` it can be embedded into the `n`-dimensional
Euclidean space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/WhitneyEmbedding/Variant279286c42e784fe6544ba28c1145dce3d020510ab0e6c390cf96eee0b8bd6dcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/WhitneyEmbedding/Variant279286c42e784fe6544ba28c1145dce3d020510ab0e6c390cf96eee0b8bd6dcd.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afda663d4190bc7fd7a9fd1cd949d6d993ff33d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
