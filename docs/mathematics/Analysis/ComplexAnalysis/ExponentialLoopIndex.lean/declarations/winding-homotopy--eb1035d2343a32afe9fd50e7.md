# winding_homotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5db1f1e0-6bab-9263-2dc7-7b927b1ddeb3",
  "kind": "theorem",
  "lexical_name": "winding_homotopy",
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
  "slug": "winding-homotopy--eb1035d2343a32afe9fd50e7",
  "source": {
    "blob": "c4982cd25e063c014803bcb751a80287da6ade0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 189,
    "path": "GRWTSK/Analysis/Complex/ExponentialLoopIndex.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb1035d2343a32afe9fd50e71ff9d537bdfc520e2f6416cb622894f456c16f1f",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5db1f1e0-6bab-9263-2dc7-7b927b1ddeb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem winding_homotopy {g₀ g₁ : C(I, Punctured)}
    (hg₀ : g₀ 0 = g₀ 1) (hg₁ : g₁ 0 = g₁ 1)
    (H : HomotopyWith g₀ g₁ (fun g => g 0 = g 1)) :
    winding g₀ hg₀ = winding g₁ hg₁ := by
  let L : C(I, ℂ) := ⟨fun t => liftedHomotopy H.toHomotopy (1, t),
    (liftedHomotopy H.toHomotopy).continuous.comp (by fun_prop)⟩
  have hL : ∀ t, Complex.exp (L t) = (g₁ t).1 := by
    intro t
    change Complex.exp (liftedHomotopy H.toHomotopy (1, t)) = _
    rw [liftedHomotopy_exp, H.apply_one]
  have hj : L 1 - L 0 = deck (winding g₀ hg₀) :=
    (homotopy_jump_const H (1 : I)).trans (winding_spec g₀ hg₀)
  exact (winding_eq_of_lift g₁ hg₁ L hL hj).symm

end
end GRWTSK.Analysis.Complex.ExponentialLoopIndex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/ExponentialLoopIndex.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4982cd25e063c014803bcb751a80287da6ade0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
