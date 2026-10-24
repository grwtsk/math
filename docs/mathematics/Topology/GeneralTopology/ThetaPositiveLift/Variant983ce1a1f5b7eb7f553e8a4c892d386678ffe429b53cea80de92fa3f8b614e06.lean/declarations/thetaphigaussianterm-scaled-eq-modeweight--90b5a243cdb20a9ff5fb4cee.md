# thetaPhiGaussianTerm_scaled_eq_modeWeight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "520bd44ad1867a6a9fce65fc325d6f919dcac3b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e03f7525-b10b-7b3a-f98e-e174ece5d6a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91d3d32f-173e-1b71-9ea9-dd6b6b1f23d7",
  "kind": "theorem",
  "lexical_name": "thetaPhiGaussianTerm_scaled_eq_modeWeight",
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
  "slug": "thetaphigaussianterm-scaled-eq-modeweight--90b5a243cdb20a9ff5fb4cee",
  "source": {
    "blob": "520bd44ad1867a6a9fce65fc325d6f919dcac3b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90b5a243cdb20a9ff5fb4cee88f25ecfcc49b9395f1f974bcd0ea44222a2fad4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91d3d32f-173e-1b71-9ea9-dd6b6b1f23d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiGaussianTerm_scaled_eq_modeWeight
    (j m : ℕ) (t : ℝ) :
    Real.pi ^ (j + 1) *
        thetaGaussianTerm (2 * j + 2) (4 * j + 5) m t =
      thetaPhiDerivativeModeWeight m t * thetaModeY m t ^ j := by
  have hc : Real.exp (((4 * j + 5 : ℕ) : ℝ) * t) =
      Real.exp (5 * t) * Real.exp (4 * t) ^ j := by
    rw [← Real.exp_nat_mul, ← Real.exp_add]
    congr 1
    push_cast
    ring
  unfold thetaPhiDerivativeModeWeight thetaGaussianTerm
    thetaModeY thetaModeA HurwitzKernelBounds.f_nat
  rw [hc]
  push_cast
  simp only [pow_add, pow_mul, mul_pow]
  ring_nf

/-- One all-order source derivative contribution from one theta mode. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `520bd44ad1867a6a9fce65fc325d6f919dcac3b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
