# aestronglyMeasurable_traj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df82423d-2cb7-dce2-cec9-b645aadb4de2",
  "kind": "theorem",
  "lexical_name": "aestronglyMeasurable_traj",
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
  "slug": "aestronglymeasurable-traj--09c4a44fc2d0ce81166670bb",
  "source": {
    "blob": "8f1752e5d91d551ac2645e9ff6e93780bac736ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 654,
    "line": 645,
    "path": "GRWTSK/Analysis/MeasureTheory/Traj/Variantefbde4a18eb2fc5ea533e9bbba49e704cc08a4cd6d75cbfd0af0b45eb9f8bdc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09c4a44fc2d0ce81166670bb560967e95240f7ee30113ea8ec6408a77ae719d7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Traj/Variantefbde4a18eb2fc5ea533e9bbba49e704cc08a4cd6d75cbfd0af0b45eb9f8bdc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df82423d-2cb7-dce2-cec9-b645aadb4de2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 645–654.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aestronglyMeasurable_traj {a b : ℕ} (hab : a ≤ b) {f : (Π n, X n) → E}
    {x₀ : Π i : Iic a, X i} (hf : AEStronglyMeasurable f (traj κ a x₀)) :
    ∀ᵐ x ∂partialTraj κ a b x₀, AEStronglyMeasurable f (traj κ b x) := by
  rw [← traj_comp_partialTraj hab] at hf
  exact hf.comp

variable [NormedSpace ℝ E]

/-- When computing `∫ x, f x ∂traj κ n x₀`, because the trajectory up to time `n` is
determined by `x₀` we can replace `x` by `updateFinset x (Iic a) x₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Traj/Variantefbde4a18eb2fc5ea533e9bbba49e704cc08a4cd6d75cbfd0af0b45eb9f8bdc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Traj/Variantefbde4a18eb2fc5ea533e9bbba49e704cc08a4cd6d75cbfd0af0b45eb9f8bdc0.lean#L645).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f1752e5d91d551ac2645e9ff6e93780bac736ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
