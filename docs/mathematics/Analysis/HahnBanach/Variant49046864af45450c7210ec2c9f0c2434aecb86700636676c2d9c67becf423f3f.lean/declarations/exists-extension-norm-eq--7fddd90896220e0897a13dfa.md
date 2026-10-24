# exists_extension_norm_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4de7b93-d920-3e95-000e-740fe6a21aab",
  "kind": "theorem",
  "lexical_name": "exists_extension_norm_eq",
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
  "slug": "exists-extension-norm-eq--7fddd90896220e0897a13dfa",
  "source": {
    "blob": "e3e49b37cda623f4fd6d400206720c64d52e9658",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 52,
    "path": "GRWTSK/Analysis/HahnBanach/Variant49046864af45450c7210ec2c9f0c2434aecb86700636676c2d9c67becf423f3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fddd90896220e0897a13dfae533c9394af97fce7d2051b1472b2fb237bea0ed",
  "verification": {
    "reference": "docs/verification/Analysis/HahnBanach/Variant49046864af45450c7210ec2c9f0c2434aecb86700636676c2d9c67becf423f3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4de7b93-d920-3e95-000e-740fe6a21aab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_extension_norm_eq (p : Subspace 𝕜 E) (f : StrongDual 𝕜 p) :
    ∃ g : StrongDual 𝕜 E, (∀ x : p, g x = f x) ∧ ‖g‖ = ‖f‖ := by
  obtain ⟨g, hg, hl⟩ := by
    refine Module.Dual.exists_continuous_extension_of_le_seminorm p f
      (show Continuous (‖f‖₊ • (normSeminorm 𝕜 E)) from ?_) fun x => f.le_opNorm x
    exact continuous_norm.const_smul ‖f‖₊
  refine ⟨g, hg, le_antisymm (g.opNorm_le_bound (norm_nonneg f) hl) ?_⟩
  exact f.opNorm_le_bound (norm_nonneg _) fun x => by simpa [hg x] using g.le_opNorm x

end RCLike

section DualVector

variable (𝕜 : Type v) [RCLike 𝕜]

open ContinuousLinearEquiv Submodule

section Seminormed

variable {E : Type u} [SeminormedAddCommGroup E] [NormedSpace 𝕜 E]

/-- Corollary of Hahn-Banach. Given an element `x` of a normed space with `‖x‖ ≠ 0`, there
exists an element of the dual space, of norm `1`, whose value on `x` is `‖x‖`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/HahnBanach/Variant49046864af45450c7210ec2c9f0c2434aecb86700636676c2d9c67becf423f3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HahnBanach/Variant49046864af45450c7210ec2c9f0c2434aecb86700636676c2d9c67becf423f3f.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3e49b37cda623f4fd6d400206720c64d52e9658` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
