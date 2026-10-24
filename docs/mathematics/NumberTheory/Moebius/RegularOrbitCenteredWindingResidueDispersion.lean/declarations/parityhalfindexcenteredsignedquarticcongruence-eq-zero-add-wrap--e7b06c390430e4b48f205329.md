# parityHalfIndexCenteredSignedQuarticCongruence_eq_zero_add_wrap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4b76daa-88e4-ab2d-a066-9304ac12ac7b",
  "kind": "theorem",
  "lexical_name": "parityHalfIndexCenteredSignedQuarticCongruence_eq_zero_add_wrap",
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
  "slug": "parityhalfindexcenteredsignedquarticcongruence-eq-zero-add-wrap--e7b06c390430e4b48f205329",
  "source": {
    "blob": "f1ef8a1621beac56033f471991cbc06911cfc9ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 168,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7b06c390430e4b48f205329aae5daed08c9f42025d99f68b8517bede1760df7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4b76daa-88e4-ab2d-a066-9304ac12ac7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parityHalfIndexCenteredSignedQuarticCongruence_eq_zero_add_wrap
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityHalfIndexCenteredSignedQuarticCongruence b d r H =
      parityHalfIndexSignedQuarticZeroWinding b r H +
        parityHalfIndexSignedQuarticWrap b d r H := by
  classical
  unfold parityHalfIndexCenteredSignedQuarticCongruence
    parityHalfIndexSignedQuarticZeroWinding
    parityHalfIndexSignedQuarticWrap
  rw [← mul_add]
  apply congrArg (fun x : ℝ => 4 * x)
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro h hh
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro g hg
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases heq :
      halfIndexZeroWindingCoordinate m h =
        halfIndexZeroWindingCoordinate n g
  · simp [heq, Nat.ModEq.refl]
  · by_cases hmod :
      halfIndexZeroWindingCoordinate m h ≡
        halfIndexZeroWindingCoordinate n g [MOD d * d]
    · simp [hmod, heq]
    · simp [hmod, heq]

/-- Load-bearing residue-dispersion decomposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1ef8a1621beac56033f471991cbc06911cfc9ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
