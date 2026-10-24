# logarithmicLongRemainder_eq_shallow_add_deep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58db594e-e56b-369f-5203-71e6d946d194",
  "kind": "theorem",
  "lexical_name": "logarithmicLongRemainder_eq_shallow_add_deep",
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
  "slug": "logarithmiclongremainder-eq-shallow-add-deep--8bee5a2efb162d885be34cb8",
  "source": {
    "blob": "5b3556714a377d18f199d0c9c6360a863068f8ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 159,
    "path": "GRWTSK/NumberTheory/Moebius/MertensShallowDepthPayment.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bee5a2efb162d885be34cb8369ac2f2a3dcb46536810cce49dab2a1be2df011",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensShallowDepthPayment.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58db594e-e56b-369f-5203-71e6d946d194`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logarithmicLongRemainder_eq_shallow_add_deep
    (j : ℕ) :
    logarithmicLongHarmonicRemainderPacket j =
      logarithmicShallowLongRemainderPacket j +
        logarithmicDeepLongRemainderPacket j := by
  rw [logarithmicLongHarmonicRemainderPacket_eq_sum_depth]
  unfold logarithmicShallowLongRemainderPacket
    logarithmicDeepLongRemainderPacket
  have hD :
      logarithmicShallowDepthCount j ≤ 2 ^ (j + 1) := by
    unfold logarithmicShallowDepthCount
    exact le_trans (min_le_right _ _) (Nat.sub_le _ _)
  simp only [← Nat.Ico_zero_eq_range]
  exact (Finset.sum_Ico_consecutive
    (fun t => logarithmicLongDepthRemainder j t)
    (Nat.zero_le _) hD).symm

/-- Exact deep analytic regime.  Both cumulative interval length and depth are
at least logarithmic, modulo the small-scale `min` cap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensShallowDepthPayment.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensShallowDepthPayment.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b3556714a377d18f199d0c9c6360a863068f8ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
