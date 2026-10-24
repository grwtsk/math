# actualRelativeKernel_zero_moment_abs_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23fcc678-2514-ee0e-a99b-10fc7832cce7",
  "kind": "theorem",
  "lexical_name": "actualRelativeKernel_zero_moment_abs_lt_one",
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
  "slug": "actualrelativekernel-zero-moment-abs-lt-one--7534bb513376102776a34568",
  "source": {
    "blob": "e6b35ad32331c78b9a5fbb3c6a30075bf5887dc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 200,
    "path": "GRWTSK/Analysis/SourceActualRelativeKernelMoments/Variant0654c235fe43f024eb7d73289f4632b701be4636b7ef47cdfbc22a0f7ef00980.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7534bb513376102776a345686385107e98d958ad0145066142d3262bcd96bdb5",
  "verification": {
    "reference": "docs/verification/Analysis/SourceActualRelativeKernelMoments/Variant0654c235fe43f024eb7d73289f4632b701be4636b7ef47cdfbc22a0f7ef00980.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23fcc678-2514-ee0e-a99b-10fc7832cce7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRelativeKernel_zero_moment_abs_lt_one {A : ℝ} (hA : 1 ≤ A) :
    |∫ t in 0..2*A, baselineLogKernel A t| < 1 := by
  rw [actualRelativeKernel_zero_moment_eq hA]
  have hh := criticalContinuousMoment_strict_bounds hA
  rw [criticalContinuousMoment_eq_neg_negative A hA] at hh
  exact abs_lt.mpr ⟨by linarith [hh.1], by linarith [hh.2]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SourceActualRelativeKernelMoments/Variant0654c235fe43f024eb7d73289f4632b701be4636b7ef47cdfbc22a0f7ef00980.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SourceActualRelativeKernelMoments/Variant0654c235fe43f024eb7d73289f4632b701be4636b7ef47cdfbc22a0f7ef00980.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6b35ad32331c78b9a5fbb3c6a30075bf5887dc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
