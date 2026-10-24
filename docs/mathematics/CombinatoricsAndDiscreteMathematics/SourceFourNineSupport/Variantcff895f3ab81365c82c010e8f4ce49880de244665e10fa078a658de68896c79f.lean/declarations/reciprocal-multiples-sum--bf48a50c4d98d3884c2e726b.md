# reciprocal_multiples_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be7a0d30-4d99-8f47-bab1-36c7050bbff6",
  "kind": "theorem",
  "lexical_name": "reciprocal_multiples_sum",
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
  "slug": "reciprocal-multiples-sum--bf48a50c4d98d3884c2e726b",
  "source": {
    "blob": "81e009d3e9e119b38e862ae52660550061abd251",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 52,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variantcff895f3ab81365c82c010e8f4ce49880de244665e10fa078a658de68896c79f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf48a50c4d98d3884c2e726bcceaf42d02fa0c80cfdef64bf94d2e327c783086",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variantcff895f3ab81365c82c010e8f4ce49880de244665e10fa078a658de68896c79f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be7a0d30-4d99-8f47-bab1-36c7050bbff6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem reciprocal_multiples_sum (k N : Nat) (hk : 0 < k) :
    (∑ n ∈ Finset.Icc 1 N, if k ∣ n then 1 / Real.sqrt (n : Real) else 0) =
      reciprocalSqrtSum (N / k) / Real.sqrt (k : Real) := by
  classical
  rw [← Finset.sum_filter, multiples_eq_image k N hk]
  rw [Finset.sum_image (by intro a _ b _ h; dsimp at h; nlinarith)]
  unfold reciprocalSqrtSum
  rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro j hj
  rw [Nat.cast_mul, Real.sqrt_mul (Nat.cast_nonneg k)]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variantcff895f3ab81365c82c010e8f4ce49880de244665e10fa078a658de68896c79f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variantcff895f3ab81365c82c010e8f4ce49880de244665e10fa078a658de68896c79f.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81e009d3e9e119b38e862ae52660550061abd251` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
