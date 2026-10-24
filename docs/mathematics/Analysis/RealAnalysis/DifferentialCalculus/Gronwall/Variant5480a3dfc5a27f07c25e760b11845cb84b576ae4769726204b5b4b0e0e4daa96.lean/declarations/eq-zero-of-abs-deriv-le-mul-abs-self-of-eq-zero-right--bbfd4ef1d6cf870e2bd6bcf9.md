# eq_zero_of_abs_deriv_le_mul_abs_self_of_eq_zero_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8baf1a4b2c803603ebc385e55ff72ee2d0c08c15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae1a4a37-97bc-1403-de27-06aa5a8cc516",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af58942b-5ca2-b34d-fe33-90d5296aa1e9",
  "kind": "theorem",
  "lexical_name": "eq_zero_of_abs_deriv_le_mul_abs_self_of_eq_zero_right",
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
  "slug": "eq-zero-of-abs-deriv-le-mul-abs-self-of-eq-zero-right--bbfd4ef1d6cf870e2bd6bcf9",
  "source": {
    "blob": "8baf1a4b2c803603ebc385e55ff72ee2d0c08c15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 143,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbfd4ef1d6cf870e2bd6bcf9cd7e837c309b8e0453b90276b7ab9cbf57ce2b5d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af58942b-5ca2-b34d-fe33-90d5296aa1e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_of_abs_deriv_le_mul_abs_self_of_eq_zero_right {f f' : ℝ → E} {K a b : ℝ}
    (hf : ContinuousOn f (Icc a b)) (hf' : ∀ x ∈ Ico a b, HasDerivWithinAt f (f' x) (Ici x) x)
    (ha : f a = 0) (bound : ∀ x ∈ Ico a b, ‖f' x‖ ≤ K * ‖f x‖) :
    ∀ x ∈ Set.Icc a b, f x = 0 := by
  intro x hx
  apply norm_le_zero_iff.mp
  calc ‖f x‖
    _ ≤ gronwallBound 0 K 0 (x - a) :=
      norm_le_gronwallBound_of_norm_deriv_right_le hf hf' (by simp [ha]) (by simpa using bound) _ hx
    _ = 0 := by rw [gronwallBound_ε0_δ0]

variable {v : ℝ → E → E} {s : ℝ → Set E} {K : ℝ≥0} {f g f' g' : ℝ → E} {a b : ℝ} {εf εg δ : ℝ}

/-- If `f` and `g` are two approximate solutions of the same ODE, then the distance between them
can't grow faster than exponentially. This is a simple corollary of Grönwall's inequality, and some
people call this Grönwall's inequality too.

This version assumes all inequalities to be true in some time-dependent set `s t`,
and assumes that the solutions never leave this set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8baf1a4b2c803603ebc385e55ff72ee2d0c08c15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
