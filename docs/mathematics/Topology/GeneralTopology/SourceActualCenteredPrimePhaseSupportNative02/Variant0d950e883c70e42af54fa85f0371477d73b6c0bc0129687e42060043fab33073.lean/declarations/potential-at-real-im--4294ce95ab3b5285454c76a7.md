# potential_at_real_im

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a2ec8ff-dd6c-43bf-8f58-4178f27aeda8",
  "kind": "theorem",
  "lexical_name": "potential_at_real_im",
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
  "slug": "potential-at-real-im--4294ce95ab3b5285454c76a7",
  "source": {
    "blob": "bb8453b388fc99225c4f0ff26633792c62e59413",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 55,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative02/Variant0d950e883c70e42af54fa85f0371477d73b6c0bc0129687e42060043fab33073.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4294ce95ab3b5285454c76a7aa1ee091b12ee62c0c714b9dc846eb8335b4c0af",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative02/Variant0d950e883c70e42af54fa85f0371477d73b6c0bc0129687e42060043fab33073.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a2ec8ff-dd6c-43bf-8f58-4178f27aeda8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem potential_at_real_im (A c : ℝ) :
    (actualClosedPrimeLogPotential A (c : ℂ)).im = 0 := by
  simp only [actualClosedPrimeLogPotential, Complex.im_sum, Complex.mul_im,
    Complex.ofReal_re, Complex.ofReal_im, Complex.exp_im, Complex.neg_im,
    Complex.mul_im, zero_mul, mul_zero, add_zero, neg_zero,
    Real.sin_zero, mul_zero, Finset.sum_const_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative02/Variant0d950e883c70e42af54fa85f0371477d73b6c0bc0129687e42060043fab33073.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative02/Variant0d950e883c70e42af54fa85f0371477d73b6c0bc0129687e42060043fab33073.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb8453b388fc99225c4f0ff26633792c62e59413` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
