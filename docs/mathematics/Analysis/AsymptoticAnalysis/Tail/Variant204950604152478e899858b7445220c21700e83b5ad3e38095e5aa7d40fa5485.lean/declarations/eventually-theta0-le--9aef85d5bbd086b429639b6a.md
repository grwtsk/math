# eventually_theta0_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab96a8ff-7528-f6ee-b0bd-be26719b66bb",
  "kind": "theorem",
  "lexical_name": "eventually_theta0_le",
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
  "slug": "eventually-theta0-le--9aef85d5bbd086b429639b6a",
  "source": {
    "blob": "2b4f18d0facc79b76677a7ad506b0a698a7fc21b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 684,
    "line": 676,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9aef85d5bbd086b429639b6ad40f0d7f232b9155978b08ecf8fa50ca21ae88c0",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab96a8ff-7528-f6ee-b0bd-be26719b66bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 676–684.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_theta0_le (P : Params) (hP : P.Valid) {A₀ R : ℝ} (hA₀ : 1 ≤ A₀)
    (C₁ : ℝ → ℝ) (hC₁ : ∀ T, 0 ≤ C₁ T) (hC₁R : ∀ᶠ T in atTop, C₁ T ≤ 2 * R) :
    ∃ C : ℝ, ∀ᶠ T in atTop,
      theta0 A₀ (Real.exp (P.L T / 4) * C₁ T) T ≤ C * l T * T ^ (P.lam / 2 - 1) := by
  refine ⟨32 * A₀ * R ^ 2, ?_⟩
  filter_upwards [eventually_ge_atTop T₀, hC₁R] with T hT hR
  exact theta0_le P hP hT (by linarith) (hC₁ T) hR

/-- **N(I'∖I) ≪ D₀ l, eventually**: ∃ C, eventually N(I'∖I) ≤ C·√T·l(T) (C = 6A₀). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean#L676).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b4f18d0facc79b76677a7ad506b0a698a7fc21b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
