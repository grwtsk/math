# MemLp.im

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e59b895d-55b7-7734-167b-b798ac086044",
  "kind": "theorem",
  "lexical_name": "MemLp.im",
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
  "slug": "memlp-im--fab6762ba5cce03c5dce36aa",
  "source": {
    "blob": "624840488e6c617cbdb0e982148df08dc075ea6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1517,
    "line": 1501,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantabf7a65373ec7edee45b5e44fd40022eaabc2e89ab38a64b8bea7ccdd4c1e425.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fab6762ba5cce03c5dce36aaf350e31a395b90d0c57148ab5fdde9d20c97f485",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variantabf7a65373ec7edee45b5e44fd40022eaabc2e89ab38a64b8bea7ccdd4c1e425.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e59b895d-55b7-7734-167b-b798ac086044`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1501–1517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MemLp.im (hf : MemLp f p μ) : MemLp (fun x => RCLike.im (f x)) p μ := by
  have : ∀ x, ‖RCLike.im (f x)‖ ≤ 1 * ‖f x‖ := by
    intro x
    rw [one_mul]
    exact RCLike.norm_im_le_norm (f x)
  refine hf.of_le_mul ?_ (Eventually.of_forall this)
  exact RCLike.continuous_im.comp_aestronglyMeasurable hf.1

@[deprecated (since := "2025-02-21")]
alias Memℒp.im := MemLp.im

end RCLike

section Liminf

variable [MeasurableSpace E] [OpensMeasurableSpace E] {R : ℝ≥0}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variantabf7a65373ec7edee45b5e44fd40022eaabc2e89ab38a64b8bea7ccdd4c1e425.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantabf7a65373ec7edee45b5e44fd40022eaabc2e89ab38a64b8bea7ccdd4c1e425.lean#L1501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `624840488e6c617cbdb0e982148df08dc075ea6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
