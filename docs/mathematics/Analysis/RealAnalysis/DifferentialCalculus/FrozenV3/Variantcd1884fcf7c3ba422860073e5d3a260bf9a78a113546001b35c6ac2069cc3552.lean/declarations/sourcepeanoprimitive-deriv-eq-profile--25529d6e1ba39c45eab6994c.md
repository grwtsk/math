# sourcePeanoPrimitive_deriv_eq_profile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43a3fe5f-096c-efcb-f3ec-f447d6660829",
  "kind": "theorem",
  "lexical_name": "sourcePeanoPrimitive_deriv_eq_profile",
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
  "slug": "sourcepeanoprimitive-deriv-eq-profile--25529d6e1ba39c45eab6994c",
  "source": {
    "blob": "1d70a46a5c900a80edfbc47255c0464d652304f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FrozenV3/Variantcd1884fcf7c3ba422860073e5d3a260bf9a78a113546001b35c6ac2069cc3552.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25529d6e1ba39c45eab6994c741f9b473c5f3b72844695b36842e946437143e8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FrozenV3/Variantcd1884fcf7c3ba422860073e5d3a260bf9a78a113546001b35c6ac2069cc3552.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43a3fe5f-096c-efcb-f3ec-f447d6660829`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePeanoPrimitive_deriv_eq_profile {A t : ℝ} (hA : 0 < A)
    (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    deriv (sourcePeanoPrimitive A) t =
      Real.exp (t / 2) / sourceNormalization A *
        (deriv (deriv (deriv overlapProfile)) (t / A) / A ^ 3 -
          deriv (deriv overlapProfile) (t / A) / (2 * A ^ 2) -
          deriv overlapProfile (t / A) / (4 * A) + overlapProfile (t / A) / 8) := by
  have he := deriv_eq_on_closed (a := 0) (b := 2 * A) (by linarith)
    ((sourcePeanoPrimitive_contDiff_two hA).differentiable (by norm_num))
    (fun s => (profilePrimitive_hasDerivAt A s).differentiableAt)
    (fun s hs => sourcePeanoPrimitive_eq_profile hA hs.1 hs.2)
  rw [he ⟨ht0, ht2⟩, (profilePrimitive_hasDerivAt A t).deriv]

/-- The actual exponential primitive vanishes at the closed touching-support endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FrozenV3/Variantcd1884fcf7c3ba422860073e5d3a260bf9a78a113546001b35c6ac2069cc3552.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FrozenV3/Variantcd1884fcf7c3ba422860073e5d3a260bf9a78a113546001b35c6ac2069cc3552.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d70a46a5c900a80edfbc47255c0464d652304f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
