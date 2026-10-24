# N0star_lower_explicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05b7cdd7-0bf7-5759-d8e5-db4702a05f8e",
  "kind": "theorem",
  "lexical_name": "N0star_lower_explicit",
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
  "slug": "n0star-lower-explicit--c48d1baff2562edef403ca98",
  "source": {
    "blob": "3469a865bcf135c2b08ee407b8cc36179ab7deac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 338,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variant0c051c2e02af50fe38d1d4e5f121934500d041dcb2b21a07cb096cb70236b65e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c48d1baff2562edef403ca988c982f76e8f28815d7457dd461f57242912058cc",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Assembly/Variant0c051c2e02af50fe38d1d4e5f121934500d041dcb2b21a07cb096cb70236b65e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05b7cdd7-0bf7-5759-d8e5-db4702a05f8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem N0star_lower_explicit
    {N0star s12 : ℕ} {N NII trGh frGh trAh frAh B : ℝ}
    (hcount : (s12 : ℝ) ≤ N0star + NII)
    (hcore : 4 * trAh - 2 * (N + NII) - frAh ≤ s12)
    (hpert : 4 * trGh - frGh - B * (4 + 2 * Real.sqrt frGh + B) ≤ 4 * trAh - frAh) :
    4 * trGh - frGh - 2 * N - 3 * NII - B * (4 + 2 * Real.sqrt frGh + B) ≤ N0star := by
  linarith

/-- **§6 proof of Thm A, the "`(H(λ₁) − O(𝓔′_T)) N`" line made explicit.**
With `cλ := 1/λ₁ + λ₁/3` (so `4 − cλ − 2 = H(λ₁)`), if `|tr Ĝ − N| ≤ R₁`
("`tr Ĝ = N + O(√X/a)`") and `‖Ĝ‖_F² ≤ cλ N + R₂` ("`‖Ĝ‖_F² ≤ (1/λ₁+λ₁/3)N(1+O(𝓔′_T))`"), then
`N₀*(T,2T) ≥ H(λ₁) N − [4R₁ + R₂ + 3N(I′∖I) + B(4 + 2√(cλ N + R₂) + B)]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Assembly/Variant0c051c2e02af50fe38d1d4e5f121934500d041dcb2b21a07cb096cb70236b65e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variant0c051c2e02af50fe38d1d4e5f121934500d041dcb2b21a07cb096cb70236b65e.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3469a865bcf135c2b08ee407b8cc36179ab7deac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
