# Module.punctured_nhds_neBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bc7532b-fd36-7223-0033-f114a5b70d9b",
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
  "slug": "module-punctured-nhds-nebot--cf010416035d12d8e75199f1",
  "source": {
    "blob": "596d52e15c46b6115a2d4747e0dc67143fb1e7ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 92,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant9fc73d29323175bf6ec2e23eeef24b7c610bdc55d40b63078b1bbc54897e539a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf010416035d12d8e75199f106f8c41c1b3a48d7cec2d8d242c7f4e6e5e0b5df",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant9fc73d29323175bf6ec2e23eeef24b7c610bdc55d40b63078b1bbc54897e539a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bc7532b-fd36-7223-0033-f114a5b70d9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.punctured_nhds_neBot [Nontrivial M] [NeBot (𝓝[≠] (0 : R))] [NoZeroSMulDivisors R M]
    (x : M) : NeBot (𝓝[≠] x) := by
  rcases exists_ne (0 : M) with ⟨y, hy⟩
  suffices Tendsto (fun c : R => x + c • y) (𝓝[≠] 0) (𝓝[≠] x) from this.neBot
  refine Tendsto.inf ?_ (tendsto_principal_principal.2 <| ?_)
  · convert tendsto_const_nhds.add ((@tendsto_id R _).smul_const y)
    rw [zero_smul, add_zero]
  · intro c hc
    simpa [hy] using hc

end

section LatticeOps

variable {R M₁ M₂ : Type*} [SMul R M₁] [SMul R M₂] [u : TopologicalSpace R]
  {t : TopologicalSpace M₂} [ContinuousSMul R M₂]
  {F : Type*} [FunLike F M₁ M₂] [MulActionHomClass F R M₁ M₂] (f : F)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant9fc73d29323175bf6ec2e23eeef24b7c610bdc55d40b63078b1bbc54897e539a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant9fc73d29323175bf6ec2e23eeef24b7c610bdc55d40b63078b1bbc54897e539a.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `596d52e15c46b6115a2d4747e0dc67143fb1e7ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
