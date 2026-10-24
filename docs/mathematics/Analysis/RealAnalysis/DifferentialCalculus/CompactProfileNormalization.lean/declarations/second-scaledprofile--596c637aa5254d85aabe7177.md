# second_scaledProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d70649a-b055-2c68-727d-e51c7c4285bd",
  "kind": "theorem",
  "lexical_name": "second_scaledProfile",
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
  "slug": "second-scaledprofile--596c637aa5254d85aabe7177",
  "source": {
    "blob": "be1e5042ecc6aefd5ea86e7f63837b441e9846ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 79,
    "path": "GRWTSK/Analysis/Calculus/CompactProfileNormalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:596c637aa5254d85aabe71778a68ada6ea80990eff70b6ea8e6ddf341c674518",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileNormalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d70649a-b055-2c68-727d-e51c7c4285bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem second_scaledProfile {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (A x : ℝ) :
    deriv (deriv (scaledProfile h A)) x =
      deriv (deriv h) (x / A) / (A ^ 2 * Real.sqrt A) := by
  have heq : deriv (scaledProfile h A) =
      fun y ↦ deriv h (y / A) / (A * Real.sqrt A) := by
    funext y
    exact deriv_scaledProfile (hc.differentiable (by norm_num)) A y
  rw [heq]
  have hd := ((hc.differentiable_deriv_two (x / A)).hasDerivAt.comp x
    ((hasDerivAt_id x).div_const A)).div_const (A * Real.sqrt A)
  change HasDerivAt (fun y ↦ deriv h (y / A) / (A * Real.sqrt A))
    (deriv (deriv h) (x / A) * (1 / A) / (A * Real.sqrt A)) x at hd
  rw [hd.deriv]
  ring

/-- Explicit operator formula for every positive scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileNormalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Calculus/CompactProfileNormalization.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be1e5042ecc6aefd5ea86e7f63837b441e9846ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
