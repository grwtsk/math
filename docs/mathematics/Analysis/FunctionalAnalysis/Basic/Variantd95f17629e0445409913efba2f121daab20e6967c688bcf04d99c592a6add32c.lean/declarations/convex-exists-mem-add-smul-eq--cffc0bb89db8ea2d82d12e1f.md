# Convex.exists_mem_add_smul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94a0acae-de0e-1787-b7d4-818b44703769",
  "kind": "theorem",
  "lexical_name": "Convex.exists_mem_add_smul_eq",
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
  "slug": "convex-exists-mem-add-smul-eq--cffc0bb89db8ea2d82d12e1f",
  "source": {
    "blob": "dad72a7e634f0ec546159aeb36424c7c4029816c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 548,
    "line": 539,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variantd95f17629e0445409913efba2f121daab20e6967c688bcf04d99c592a6add32c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cffc0bb89db8ea2d82d12e1f60aebf18ffbfbfce1e65173beca512c4d00e085a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variantd95f17629e0445409913efba2f121daab20e6967c688bcf04d99c592a6add32c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94a0acae-de0e-1787-b7d4-818b44703769`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–548.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Convex.exists_mem_add_smul_eq (h : Convex 𝕜 s) {x y : E} {p q : 𝕜} (hx : x ∈ s) (hy : y ∈ s)
    (hp : 0 ≤ p) (hq : 0 ≤ q) : ∃ z ∈ s, (p + q) • z = p • x + q • y := by
  rcases _root_.em (p = 0 ∧ q = 0) with (⟨rfl, rfl⟩ | hpq)
  · use x, hx
    simp
  · replace hpq : 0 < p + q :=
      (add_nonneg hp hq).lt_of_ne' (mt (add_eq_zero_iff_of_nonneg hp hq).1 hpq)
    refine ⟨_, convex_iff_div.1 h hx hy hp hq hpq, ?_⟩
    match_scalars <;> field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variantd95f17629e0445409913efba2f121daab20e6967c688bcf04d99c592a6add32c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variantd95f17629e0445409913efba2f121daab20e6967c688bcf04d99c592a6add32c.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dad72a7e634f0ec546159aeb36424c7c4029816c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
