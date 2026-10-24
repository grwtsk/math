# thetaPhiSignedMomentKrylovGram_det_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3cc6e87a-4427-30a4-faca-695c431f628a",
  "kind": "theorem",
  "lexical_name": "thetaPhiSignedMomentKrylovGram_det_pos",
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
  "slug": "thetaphisignedmomentkrylovgram-det-pos--6b24ca0b14632c7177ab5986",
  "source": {
    "blob": "fc224fb594014868358b33f4e79a0d3ef6989a21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 199,
    "path": "GRWTSK/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b24ca0b14632c7177ab5986478c6576cb9b97e3716f609f709c98badd67e81c",
  "verification": {
    "reference": "docs/verification/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cc6e87a-4427-30a4-faca-695c431f628a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiSignedMomentKrylovGram_det_pos
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    0 <
      Matrix.det
        (thetaPhiSignedMomentKrylovGram k L N t) :=
  (thetaPhiSignedMomentKrylovGram_posDef hk hN t).det_pos

/-- On a nondegenerate cutoff, projective normalization does not change the
sign question: its denominator is the strictly positive Krylov Gram
determinant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc224fb594014868358b33f4e79a0d3ef6989a21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
