# Module.Dual.norm_extendRCLike_le_seminorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84d5dd5fbeb0eb763d77eb667953ecafeb8b12de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9bf3da1ebd28a95414f5673de8adaf41c9f3b17a9e0a4f8df5764cb088920c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ca2184d-1cce-b2b0-6501-135861f1f2c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28078b36-3e32-2526-5ae3-9fe2dfae73d7",
  "kind": "theorem",
  "lexical_name": "Module.Dual.norm_extendRCLike_le_seminorm",
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
  "slug": "module-dual-norm-extendrclike-le-seminorm--8b295518780dbdb1d77ff54a",
  "source": {
    "blob": "84d5dd5fbeb0eb763d77eb667953ecafeb8b12de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 26,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extend/Variantf9bf3da1ebd28a95414f5673de8adaf41c9f3b17a9e0a4f8df5764cb088920c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b295518780dbdb1d77ff54a7084f4bcc4f9bf7a0e120bffeafffcd94d454f1d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extend/Variantf9bf3da1ebd28a95414f5673de8adaf41c9f3b17a9e0a4f8df5764cb088920c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28078b36-3e32-2526-5ae3-9fe2dfae73d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.Dual.norm_extendRCLike_le_seminorm [AddCommGroup E] [Module 𝕜 E] [Module ℝ E]
    [IsScalarTower ℝ 𝕜 E] (fr : Dual ℝ E) {p : Seminorm 𝕜 E} (hp : ∀ x, |fr x| ≤ p x) (x : E) :
    ‖(fr.extendRCLike x : 𝕜)‖ ≤ p x := by
  by_cases hx : fr.extendRCLike (𝕜 := 𝕜) x = 0
  · simp [hx]
  have hsq : ‖fr.extendRCLike (𝕜 := 𝕜) x‖ ^ 2 ≤ ‖fr.extendRCLike (𝕜 := 𝕜) x‖ * p x := calc
    _ = fr (conj (fr.extendRCLike x) • x) := fr.norm_extendRCLike_apply_sq x
    _ ≤ |fr (conj (fr.extendRCLike x) • x)| := le_abs_self _
    _ ≤ p (conj (fr.extendRCLike x) • x) := hp _
    _ = ‖conj (fr.extendRCLike x)‖ * p x := map_smul_eq_mul _ _ _
    _ = ‖(fr.extendRCLike x)‖ * p x := by rw [norm_conj]
  exact (mul_le_mul_iff_left₀ (norm_pos_iff.2 hx)).1 <| by simpa [pow_two, mul_comm] using hsq

namespace StrongDual

/-- The extension `StrongDual.extendRCLike` as a continuous linear equivalence between
the strong duals when scalar multiplication (by `𝕜`) is jointly continuous. -/
@[expose, simps! -isSimp apply symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extend/Variantf9bf3da1ebd28a95414f5673de8adaf41c9f3b17a9e0a4f8df5764cb088920c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extend/Variantf9bf3da1ebd28a95414f5673de8adaf41c9f3b17a9e0a4f8df5764cb088920c1.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84d5dd5fbeb0eb763d77eb667953ecafeb8b12de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
