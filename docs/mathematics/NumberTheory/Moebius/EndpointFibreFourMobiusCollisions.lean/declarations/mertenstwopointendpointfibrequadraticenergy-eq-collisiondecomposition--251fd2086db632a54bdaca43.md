# mertensTwoPointEndpointFibreQuadraticEnergy_eq_collisionDecomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c88bd42-612a-b1cd-fa49-1f3919f533cc",
  "kind": "theorem",
  "lexical_name": "mertensTwoPointEndpointFibreQuadraticEnergy_eq_collisionDecomposition",
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
  "slug": "mertenstwopointendpointfibrequadraticenergy-eq-collisiondecomposition--251fd2086db632a54bdaca43",
  "source": {
    "blob": "51aac37245b50e6bcb14dfc10b9d35f026a6b7da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 273,
    "path": "GRWTSK/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:251fd2086db632a54bdaca432f055e09edc9dbbd45143cfbf7fd33a3897933cc",
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

Occurrence: `result:9c88bd42-612a-b1cd-fa49-1f3919f533cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensTwoPointEndpointFibreQuadraticEnergy_eq_collisionDecomposition
    (b : ℕ) :
    mertensTwoPointEndpointFibreQuadraticEnergy b =
      mertensEndpointFibreDiagonalEnergy b +
        mertensEndpointFibreCrossCollisionEnergy b +
        mertensEndpointFibreFourDistinctCorrelation b := by
  unfold mertensTwoPointEndpointFibreQuadraticEnergy
    mertensEndpointFibreDiagonalEnergy
    mertensEndpointFibreCrossCollisionEnergy
    mertensEndpointFibreFourDistinctCorrelation
  calc
    (∑ n ∈ Finset.Ico 1 b,
      mertensTwoPointPrefix (b - n) n ^ 2) =
      ∑ n ∈ Finset.Ico 1 b,
        ∑ p ∈ mertensEndpointPairSet n,
          mertensEndpointFourMobiusTerm b n p.1 p.2 := by
        apply Finset.sum_congr rfl
        intro n _hn
        rw [mertensTwoPointPrefix_sq_eq_fourMobiusSum]
        unfold mertensEndpointPairSet
        rw [Finset.product_eq_sprod, Finset.sum_product]
    _ = _ := by
      have hsplit (n : ℕ) := sum_mertensEndpointPairSet_eq_strata b n
        (mertensEndpointFourMobiusTerm b n)
      simp_rw [hsplit, Finset.sum_add_distrib]
      ring

/-- Reciprocal endpoint-weighted diagonal contribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51aac37245b50e6bcb14dfc10b9d35f026a6b7da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
