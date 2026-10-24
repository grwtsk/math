# cauchy_schwarz_aux'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32ddfb6b-7827-69e1-e88d-d5508015d610",
  "kind": "lemma",
  "lexical_name": "cauchy_schwarz_aux'",
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
  "slug": "cauchy-schwarz-aux--a6648b41fcb738fd1631014d",
  "source": {
    "blob": "7fd4ed84fb15b74a247f0db5aca286b9750e590d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 326,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Defs/Variant417450ff468b4795ce5cfeb51715dc9a1dc026926e483ff6ec76cf04ae528404.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6648b41fcb738fd1631014d668e08974756bc1888f2431059764423ab7d8e30",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Defs/Variant417450ff468b4795ce5cfeb51715dc9a1dc026926e483ff6ec76cf04ae528404.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32ddfb6b-7827-69e1-e88d-d5508015d610`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cauchy_schwarz_aux' (x y : F) (t : ℝ) : 0 ≤ normSqF x * t * t + 2 * re ⟪x, y⟫ * t
    + normSqF y := by
  calc 0 ≤ re ⟪(ofReal t : 𝕜) • x + y, (ofReal t : 𝕜) • x + y⟫ := inner_self_nonneg
  _ = re (⟪(ofReal t : 𝕜) • x, (ofReal t : 𝕜) • x⟫ + ⟪(ofReal t : 𝕜) • x, y⟫
      + ⟪y, (ofReal t : 𝕜) • x⟫ + ⟪y, y⟫) := by rw [inner_add_add_self ((ofReal t : 𝕜) • x) y]
  _ = re ⟪(ofReal t : 𝕜) • x, (ofReal t : 𝕜) • x⟫
      + re ⟪(ofReal t : 𝕜) • x, y⟫ + re ⟪y, (ofReal t : 𝕜) • x⟫ + re ⟪y, y⟫ := by
      simp only [map_add]
  _ = normSq x * t * t + re (⟪x, y⟫ * t) + re (⟪y, x⟫ * t) + re ⟪y, y⟫ := by rw
    [re_inner_smul_ofReal_smul_self, inner_smul_ofReal_left, inner_smul_ofReal_right]
  _ = normSq x * t * t + re ⟪x, y⟫ * t + re ⟪y, x⟫ * t + re ⟪y, y⟫ := by rw [mul_comm ⟪x, y⟫ _,
    RCLike.re_ofReal_mul, mul_comm t _, mul_comm ⟪y, x⟫ _, RCLike.re_ofReal_mul, mul_comm t _]
  _ = normSq x * t * t + re ⟪x, y⟫ * t + re ⟪y, x⟫ * t + normSq y := by rw [← normSq]
  _ = normSq x * t * t + re ⟪x, y⟫ * t + re ⟪x, y⟫ * t + normSq y := by rw [inner_re_symm]
  _ = normSq x * t * t + 2 * re ⟪x, y⟫ * t + normSq y := by ring

/-- Another auxiliary equality related with the **Cauchy–Schwarz inequality**: the square of the
seminorm of `⟪x, y⟫ • x - ⟪x, x⟫ • y` is equal to `‖x‖ ^ 2 * (‖x‖ ^ 2 * ‖y‖ ^ 2 - ‖⟪x, y⟫‖ ^ 2)`.
We use `InnerProductSpace.ofCore.normSq x` etc. (defeq to `is_R_or_C.re ⟪x, x⟫`) instead of
`‖x‖ ^ 2` etc. to avoid extra rewrites when applying it to an `InnerProductSpace`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Defs/Variant417450ff468b4795ce5cfeb51715dc9a1dc026926e483ff6ec76cf04ae528404.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Defs/Variant417450ff468b4795ce5cfeb51715dc9a1dc026926e483ff6ec76cf04ae528404.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fd4ed84fb15b74a247f0db5aca286b9750e590d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
