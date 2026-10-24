# eventually_accepts_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a68cb2f4-076b-84e4-b312-21bb47a8d6ea",
  "kind": "theorem",
  "lexical_name": "eventually_accepts_iff",
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
  "slug": "eventually-accepts-iff--cc8f3310ab0139b2cf5d82f6",
  "source": {
    "blob": "9a6a3079b9471ca6f452de308bdc787a27bce30a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 109,
    "path": "GRWTSK/Analysis/Complex/SymmetricPairApproximation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc8f3310ab0139b2cf5d82f606fa1b158e6887326c00a4f88eb0b3f79be1edc6",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/SymmetricPairApproximation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a68cb2f4-076b-84e4-b312-21bb47a8d6ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_accepts_iff {F : ℂ → ℂ} {P : ℕ → ℂ → ℂ} {c d : ℂ}
    (C : ∀ n, Enclosure F (P n) c d)
    (hbudget : Tendsto (fun n => (C n).budget) atTop (𝓝 0)) :
    (∀ᶠ n in atTop, (C n).budget < energy (P n) c d) ↔
      ¬ (F (c+d)=0 ∧ F (c-d)=0) := by
  constructor
  · intro h
    obtain ⟨n,hn⟩ := h.exists
    exact (C n).excludes_pair hn
  · intro h
    have he : 0 < energy F c d := (energy_pos_iff F c d).mpr h
    have hsmall : ∀ᶠ n in atTop, (C n).budget < energy F c d/4 :=
      hbudget.eventually (gt_mem_nhds (by linarith : (0 : ℝ) < energy F c d/4))
    filter_upwards [hsmall] with n hn
    exact (C n).accepts_of_source_gap (by linarith)

/-- A finite strict comparison exists exactly when this particular source pair
is nonzero, provided the complete enclosure budget actually tends to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/SymmetricPairApproximation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/SymmetricPairApproximation.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a6a3079b9471ca6f452de308bdc787a27bce30a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
