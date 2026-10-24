# homotopy_jump_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf07023b-726e-40f2-10a9-b15c40733714",
  "kind": "theorem",
  "lexical_name": "homotopy_jump_const",
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
  "slug": "homotopy-jump-const--9a51b6bb262d50bb1d585685",
  "source": {
    "blob": "c4982cd25e063c014803bcb751a80287da6ade0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 168,
    "path": "GRWTSK/Analysis/Complex/ExponentialLoopIndex.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a51b6bb262d50bb1d5856858d29732fe5e1440e4e3824b85d32659c397af8d7",
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

Occurrence: `result:bf07023b-726e-40f2-10a9-b15c40733714`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homotopy_jump_const {g₀ g₁ : C(I, Punctured)}
    (H : HomotopyWith g₀ g₁ (fun g => g 0 = g 1)) (lam : I) :
    liftedHomotopy H.toHomotopy (lam, 1) - liftedHomotopy H.toHomotopy (lam, 0) =
      logLift g₀ 1 - logLift g₀ 0 := by
  let A : C(I, ℂ) := ⟨fun t => liftedHomotopy H.toHomotopy (t, 1),
    (liftedHomotopy H.toHomotopy).continuous.comp (by fun_prop)⟩
  let B : C(I, ℂ) := ⟨fun t => liftedHomotopy H.toHomotopy (t, 0),
    (liftedHomotopy H.toHomotopy).continuous.comp (by fun_prop)⟩
  have he : ∀ t, Complex.exp (A t) = Complex.exp (B t) := by
    intro t
    change Complex.exp (liftedHomotopy H.toHomotopy (t, 1)) =
      Complex.exp (liftedHomotopy H.toHomotopy (t, 0))
    rw [liftedHomotopy_exp, liftedHomotopy_exp]
    exact congrArg Subtype.val (H.prop t).symm
  have hd := difference_const A B he lam (0 : I)
  change liftedHomotopy H.toHomotopy (lam, 1) - liftedHomotopy H.toHomotopy (lam, 0) =
    liftedHomotopy H.toHomotopy (0, 1) - liftedHomotopy H.toHomotopy (0, 0) at hd
  simpa only [liftedHomotopy_zero] using hd

/-- FREE homotopy invariance in the actual punctured plane. Fixed basepoints,
principal-argument continuity, and a quotient-circle conversion are unnecessary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/ExponentialLoopIndex.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4982cd25e063c014803bcb751a80287da6ade0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
