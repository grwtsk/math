# sum_mertensEndpointPairSet_eq_strata

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30acf2f4-2307-381e-1988-50a350cd6fb3",
  "kind": "theorem",
  "lexical_name": "sum_mertensEndpointPairSet_eq_strata",
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
  "slug": "sum-mertensendpointpairset-eq-strata--a8b395478f9c24d20f5759cf",
  "source": {
    "blob": "51aac37245b50e6bcb14dfc10b9d35f026a6b7da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 106,
    "path": "GRWTSK/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8b395478f9c24d20f5759cf6ae70c964490c238c88e31470a6982c301d13a19",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30acf2f4-2307-381e-1988-50a350cd6fb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_mertensEndpointPairSet_eq_strata
    (b n : ℕ) (F : ℕ → ℕ → ℝ) :
    (∑ p ∈ mertensEndpointPairSet n, F p.1 p.2) =
      (∑ p ∈ mertensEndpointStratumPairSet b n .diagonal,
        F p.1 p.2) +
      (∑ p ∈ mertensEndpointStratumPairSet b n .forwardCross,
        F p.1 p.2) +
      (∑ p ∈ mertensEndpointStratumPairSet b n .backwardCross,
        F p.1 p.2) +
      (∑ p ∈ mertensEndpointStratumPairSet b n .fourDistinct,
        F p.1 p.2) := by
  classical
  unfold mertensEndpointStratumPairSet
  simp only [Finset.sum_filter]
  calc
    (∑ p ∈ mertensEndpointPairSet n, F p.1 p.2) =
      ∑ p ∈ mertensEndpointPairSet n,
        ((if mertensEndpointFourMobiusStratum b n p.1 p.2 =
              .diagonal then F p.1 p.2 else 0) +
         (if mertensEndpointFourMobiusStratum b n p.1 p.2 =
              .forwardCross then F p.1 p.2 else 0) +
         (if mertensEndpointFourMobiusStratum b n p.1 p.2 =
              .backwardCross then F p.1 p.2 else 0) +
         (if mertensEndpointFourMobiusStratum b n p.1 p.2 =
              .fourDistinct then F p.1 p.2 else 0)) := by
        apply Finset.sum_congr rfl
        intro p _hp
        cases mertensEndpointFourMobiusStratum b n p.1 p.2 <;> simp
    _ = _ := by
      simp only [Finset.sum_add_distrib]

/-- Characterization of the diagonal stratum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51aac37245b50e6bcb14dfc10b9d35f026a6b7da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
