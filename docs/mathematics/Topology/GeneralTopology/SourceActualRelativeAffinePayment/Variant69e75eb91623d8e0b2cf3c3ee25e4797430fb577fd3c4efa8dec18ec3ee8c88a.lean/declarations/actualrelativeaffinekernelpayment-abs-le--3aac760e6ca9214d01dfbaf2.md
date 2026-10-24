# actualRelativeAffineKernelPayment_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd2120bf-1a20-9665-d1ad-211b671602db",
  "kind": "theorem",
  "lexical_name": "actualRelativeAffineKernelPayment_abs_le",
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
  "slug": "actualrelativeaffinekernelpayment-abs-le--3aac760e6ca9214d01dfbaf2",
  "source": {
    "blob": "239b8c6afa13fc8ea03b3340f8cc09f7a61c1d1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 70,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant69e75eb91623d8e0b2cf3c3ee25e4797430fb577fd3c4efa8dec18ec3ee8c88a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3aac760e6ca9214d01dfbaf2fb59ebde6d1ffb40ca8bdc80a5a67f171a4242b7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant69e75eb91623d8e0b2cf3c3ee25e4797430fb577fd3c4efa8dec18ec3ee8c88a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd2120bf-1a20-9665-d1ad-211b671602db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRelativeAffineKernelPayment_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |actualRelativeAffineKernelPayment A| ≤ |relativePsiError (2*A)| +
      (2*A+6) * |relativePsiError (2*A)-relativePsiError (2*A-1)| := by
  rw [actualRelativeAffineKernelPayment_eq hA]
  have h0 := (actualRelativeKernel_zero_moment_abs_lt_one hA).le
  have h1 := actualRelativeKernel_first_moment_abs_le_six hA
  have ha : |2*A| = 2*A := abs_of_nonneg (by linarith)
  calc
    _ ≤ |relativePsiError (2*A) - 2*A *
        (relativePsiError (2*A) - relativePsiError (2*A-1))| *
        |∫ t in 0..2*A, baselineLogKernel A t| +
      |relativePsiError (2*A) - relativePsiError (2*A-1)| *
        |∫ t in 0..2*A, t * baselineLogKernel A t| := by
      simpa only [abs_mul] using
        abs_add_le ((relativePsiError (2*A) - 2*A *
          (relativePsiError (2*A) - relativePsiError (2*A-1))) *
          (∫ t in 0..2*A, baselineLogKernel A t))
          ((relativePsiError (2*A) - relativePsiError (2*A-1)) *
            (∫ t in 0..2*A, t * baselineLogKernel A t))
    _ ≤ (|relativePsiError (2*A)| +
        2*A*|relativePsiError (2*A)-relativePsiError (2*A-1)|) * 1 +
      |relativePsiError (2*A)-relativePsiError (2*A-1)| * 6 := by
      apply add_le_add
      · apply mul_le_mul _ h0 (abs_nonneg _) (by positivity)
        simpa only [abs_mul, ha] using abs_sub (relativePsiError (2*A))
          (2*A*(relativePsiError (2*A)-relativePsiError (2*A-1)))
      · exact mul_le_mul_of_nonneg_left h1 (abs_nonneg _)
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant69e75eb91623d8e0b2cf3c3ee25e4797430fb577fd3c4efa8dec18ec3ee8c88a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant69e75eb91623d8e0b2cf3c3ee25e4797430fb577fd3c4efa8dec18ec3ee8c88a.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `239b8c6afa13fc8ea03b3340f8cc09f7a61c1d1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
