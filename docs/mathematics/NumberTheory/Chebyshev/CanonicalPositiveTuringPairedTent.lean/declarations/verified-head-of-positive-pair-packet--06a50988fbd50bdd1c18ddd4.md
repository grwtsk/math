# verified_head_of_positive_pair_packet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:999ed252-8004-6e5c-7d8d-640d1ea36189",
  "kind": "theorem",
  "lexical_name": "verified_head_of_positive_pair_packet",
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
  "slug": "verified-head-of-positive-pair-packet--06a50988fbd50bdd1c18ddd4",
  "source": {
    "blob": "66092c73fd39e7219eb5387fc7004a28194fdba6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 111,
    "path": "GRWTSK/NumberTheory/Chebyshev/CanonicalPositiveTuringPairedTent.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06a50988fbd50bdd1c18ddd408aa8721cb9dcaba1b980b35665ecc01b40dc4ae",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CanonicalPositiveTuringPairedTent.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:999ed252-8004-6e5c-7d8d-640d1ea36189`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verified_head_of_positive_pair_packet
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0)
    (alignment : PositivePairRowAlignment packet rows)
    (tolerance : ℚ) (out : State)
    (accepted : verify x h bits rows tolerance out = true) :
    ‖(∑ z ∈ heightHead packet.certificate.height,
        (multiplicity z : ℂ) * tentKernel (x : ℝ) (h : ℝ) z.1) -
      QComplex.embed out.value‖ ≤ (out.error : ℝ) ∧
      out.error ≤ tolerance := by
  have hs := GRWTSK.Analysis.Complex.RationalConjugatePairAccumulation.verify_sound
    x h bits rows tolerance out accepted
    (fun i => (packet.alignment.point (alignment.rowEquiv i)).1)
    (fun i => (point_mem_strip (packet.alignment.point (alignment.rowEquiv i))).2.le)
    (fun i => ne_of_gt (((mem_positiveHeightHead packet.certificate.height
      (packet.alignment.point (alignment.rowEquiv i))).mp
        (packet.alignment.point_mem_head (alignment.rowEquiv i))).1))
    alignment.coordinate
  rw [full_tent_sum_eq_positive_rows_of_gap_eq_zero
    (x : ℝ) (h : ℝ) packet zeroGap rows alignment]
  exact hs

/-- The existing prime consumer can use only the positive certified rows.
Completeness comes from zero gap; the accepted arithmetic and strict prime margin
remain independent premises. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CanonicalPositiveTuringPairedTent.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CanonicalPositiveTuringPairedTent.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66092c73fd39e7219eb5387fc7004a28194fdba6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
