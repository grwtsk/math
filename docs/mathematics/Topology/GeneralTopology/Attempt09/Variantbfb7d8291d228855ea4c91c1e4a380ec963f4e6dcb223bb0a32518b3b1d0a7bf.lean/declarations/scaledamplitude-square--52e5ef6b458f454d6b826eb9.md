# scaledAmplitude_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9342aa61-e766-f3cd-0dcd-f114fb633c4d",
  "kind": "theorem",
  "lexical_name": "scaledAmplitude_square",
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
  "slug": "scaledamplitude-square--52e5ef6b458f454d6b826eb9",
  "source": {
    "blob": "9165ed14c852e9809d74bc046471f61c33efa59e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 202,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt09/Variantbfb7d8291d228855ea4c91c1e4a380ec963f4e6dcb223bb0a32518b3b1d0a7bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52e5ef6b458f454d6b826eb95fd2df22d8f20efc1fab296f1ca275818ab9d111",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt09/Variantbfb7d8291d228855ea4c91c1e4a380ec963f4e6dcb223bb0a32518b3b1d0a7bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9342aa61-e766-f3cd-0dcd-f114fb633c4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaledAmplitude_square {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    scaledAmplitude A z^2 =
      (A : ℂ)^9*Complex.exp (-2*(A : ℂ)*z)*normalizedTransform A z^2 := by
  have hs : ((A^4*Real.sqrt A : ℝ) : ℂ)^2 = (A : ℂ)^9 := by
    push_cast
    rw [mul_pow]
    have hh : (Real.sqrt A : ℂ)^2 = (A : ℂ) := by
      exact_mod_cast Real.sq_sqrt (by linarith : 0 ≤ A)
    rw [hh]
    ring
  have he : Complex.exp (-(A : ℂ)*z)^2 = Complex.exp (-2*(A : ℂ)*z) := by
    rw [sq,← Complex.exp_add]
    congr 1
    ring
  unfold scaledAmplitude
  rw [mul_pow,mul_pow,hs,he]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt09/Variantbfb7d8291d228855ea4c91c1e4a380ec963f4e6dcb223bb0a32518b3b1d0a7bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt09/Variantbfb7d8291d228855ea4c91c1e4a380ec963f4e6dcb223bb0a32518b3b1d0a7bf.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9165ed14c852e9809d74bc046471f61c33efa59e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
