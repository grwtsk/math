# tail_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:acc320da-e1e4-b75e-4565-d3cec3439bed",
  "kind": "theorem",
  "lexical_name": "tail_hasDerivAt",
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
  "slug": "tail-hasderivat--b6db97ef2c79c3fcc8b8d1a0",
  "source": {
    "blob": "60a81adb71f26f27a942cca13e1a9b46226ecc37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 96,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6db97ef2c79c3fcc8b8d1a0cb63b90b6705241b4d966513b80735ec077bbbe1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acc320da-e1e4-b75e-4565-d3cec3439bed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tail_hasDerivAt (K : BoundedKernel) {T : ℝ} {z : ℂ}
    (hT : 1 ≤ T) (hz : 1 < z.re) :
    HasDerivAt (fun w : ℂ => K.tail w T) (-K.logTail z T) z := by
  have hm := mellin_hasDerivAt_of_isBigO_rpow
    (K.cutoff_locallyIntegrable T) (K.cutoff_bigO_top T)
    (s := 1-z) (by simp only [Complex.sub_re, Complex.one_re]; linarith)
    (K.cutoff_bigO_zero hT (-z.re))
    (by simp only [Complex.sub_re, Complex.one_re]; linarith)
  have hlin : HasDerivAt (fun w : ℂ => 1-w) (-1) z := by
    simpa using (hasDerivAt_const z (1 : ℂ)).sub (hasDerivAt_id z)
  have h := hm.2.comp z hlin
  have he : (fun w : ℂ => mellin (K.cutoff T) (1-w)) = fun w => K.tail w T :=
    funext (K.mellin_cutoff hT)
  rw [he, K.mellin_log_cutoff hT] at h
  simpa only [mul_neg_one] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60a81adb71f26f27a942cca13e1a9b46226ecc37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
