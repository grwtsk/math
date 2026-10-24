# Module.punctured_nhds_neBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f194652-9b4d-0fa2-163c-7fc53fb3306d",
  "kind": "theorem",
  "lexical_name": "Module.punctured_nhds_neBot",
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
  "slug": "module-punctured-nhds-nebot--e3c7a5435db01eb6e84b86c5",
  "source": {
    "blob": "4f3a00bc08844d8f3772ea2b7b901f69f97effea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 96,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantba8bf9835caebf89cf2d0079bc510171dae42a6f83d686ccd4b637fea2cafdba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3c7a5435db01eb6e84b86c5f0d3ad7c4e31991b85f7541dc88c843d647c9b75",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantba8bf9835caebf89cf2d0079bc510171dae42a6f83d686ccd4b637fea2cafdba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f194652-9b4d-0fa2-163c-7fc53fb3306d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.punctured_nhds_neBot [Nontrivial M] [NeBot (𝓝[≠] (0 : R))] [Module.IsTorsionFree R M]
    (x : M) : NeBot (𝓝[≠] x) := by
  rcases exists_ne (0 : M) with ⟨y, hy⟩
  suffices Tendsto (fun c : R => x + c • y) (𝓝[≠] 0) (𝓝[≠] x) from this.neBot
  refine Tendsto.inf ?_ (tendsto_principal_principal.2 <| ?_)
  · convert! tendsto_const_nhds.add ((@tendsto_id R _).zero_smul_const y)
    rw [add_zero]
  · intro c hc
    simpa [hy] using hc

end

section LatticeOps

variable {R S M₁ M₂ M₂' : Type*} {φ : R → S} [SMul R M₁] [SMul R M₂] [SMul S M₂']
  [u : TopologicalSpace R] [u' : TopologicalSpace S]
  {t : TopologicalSpace M₂} {t' : TopologicalSpace M₂'}
  [ContinuousSMul R M₂] [ContinuousSMul S M₂']
  {F : Type*} [FunLike F M₁ M₂] [MulActionHomClass F R M₁ M₂] (f : F)
  {F' : Type*} [FunLike F' M₁ M₂'] [MulActionSemiHomClass F' φ M₁ M₂'] (f' : F')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantba8bf9835caebf89cf2d0079bc510171dae42a6f83d686ccd4b637fea2cafdba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantba8bf9835caebf89cf2d0079bc510171dae42a6f83d686ccd4b637fea2cafdba.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f3a00bc08844d8f3772ea2b7b901f69f97effea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
