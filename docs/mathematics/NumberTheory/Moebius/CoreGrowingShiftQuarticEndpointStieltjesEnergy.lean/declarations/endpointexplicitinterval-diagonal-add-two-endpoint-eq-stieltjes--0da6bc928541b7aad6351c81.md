# endpointExplicitInterval_diagonal_add_two_endpoint_eq_stieltjes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f001e2f4-7ef8-1d38-2bd8-4a46b3406f2c",
  "kind": "theorem",
  "lexical_name": "endpointExplicitInterval_diagonal_add_two_endpoint_eq_stieltjes",
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
  "slug": "endpointexplicitinterval-diagonal-add-two-endpoint-eq-stieltjes--0da6bc928541b7aad6351c81",
  "source": {
    "blob": "b1bfa84eb99b3829a02980495e11decb5c0cf75b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 258,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0da6bc928541b7aad6351c81997c6e44a575a8dde95decd427cf59ec4bc9a88c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f001e2f4-7ef8-1d38-2bd8-4a46b3406f2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointExplicitInterval_diagonal_add_two_endpoint_eq_stieltjes
    (j h : ℕ) :
    (∑ b ∈ Finset.range (2 ^ (j + 1)),
      coreGrowingShiftQuarticEndpointExplicitDepthWeight j h b *
        mertensTwoPointQuarticEndpointPair h b ^ 2) +
      2 * (∑ b ∈ Finset.range (2 ^ (j + 1)),
        coreGrowingShiftQuarticEndpointExplicitDepthWeight j h b *
          (mertensTwoPointPrefix h b *
            mertensTwoPointQuarticEndpointPair h b)) =
    ∑ b ∈ Finset.range (2 ^ (j + 1)),
      coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop j h b *
        mertensTwoPointPrefix h (b + 1) ^ 2 := by
  simpa [coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop,
    mertensTwoPointPrefix,
    mertensTwoPointQuarticEndpointPair] using
    finite_weighted_prefix_square_telescope
      (fun b => mertensTwoPointQuarticEndpointPair h b)
      (fun b => coreGrowingShiftQuarticEndpointExplicitDepthWeight j h b)
      (2 ^ (j + 1))
      (coreGrowingShiftQuarticEndpointExplicitDepthWeight_at_rightScale j h)

/-- Positive square function against the first drop of the exact endpoint
depth multiplicity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1bfa84eb99b3829a02980495e11decb5c0cf75b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
