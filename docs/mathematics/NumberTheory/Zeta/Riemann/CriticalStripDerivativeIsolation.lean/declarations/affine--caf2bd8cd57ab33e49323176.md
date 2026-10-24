# affine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c267eea40387d29ae46d351a1d44f80b5c831382da70afe184895ff92027cce",
  "kind": "def",
  "lexical_name": "affine",
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
  "slug": "affine--caf2bd8cd57ab33e49323176",
  "source": {
    "blob": "f378227390bbb9559399c2df24157ed40994e1da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 139,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:caf2bd8cd57ab33e493231761c39b53814d8353fe80a04a4b40dd00979c2eff8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c267eea40387d29ae46d351a1d44f80b5c831382da70afe184895ff92027cce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def affine (a c : ℂ) {U : Set ℂ} (ha : a ≠ 0) (hconv : Convex ℝ U) :
    DerivativeDisk (fun z => a * (z - c)) U where
  linearPart := a
  radius := 0
  radius_nonneg := le_rfl
  convex := hconv
  differentiable := by intro z hz; fun_prop
  encloses := by
    intro z hz
    have hd : HasDerivAt (fun w : ℂ => a * (w - c)) a z := by
      simpa only [mul_one] using ((hasDerivAt_id z).sub_const c).const_mul a
    rw [hd.deriv, sub_self, norm_zero]
  strict_margin := norm_pos_iff.mpr ha

end DerivativeDisk
end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f378227390bbb9559399c2df24157ed40994e1da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
