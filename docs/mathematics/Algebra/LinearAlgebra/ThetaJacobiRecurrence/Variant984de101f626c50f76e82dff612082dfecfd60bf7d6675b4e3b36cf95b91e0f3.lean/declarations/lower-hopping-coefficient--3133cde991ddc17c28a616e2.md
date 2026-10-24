# lower_hopping_coefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ecd5644709417ba33995718873c494d071bc1dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 239,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8792d635-e143-e6e6-56ac-e3e13abded55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae5909fc-95f0-a4bd-3c74-1bc2d809a5ab",
  "kind": "theorem",
  "lexical_name": "lower_hopping_coefficient",
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
  "slug": "lower-hopping-coefficient--3133cde991ddc17c28a616e2",
  "source": {
    "blob": "6ecd5644709417ba33995718873c494d071bc1dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 239,
    "path": "GRWTSK/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3133cde991ddc17c28a616e264da50e2da8685ca8947e7c7793533c51c396455",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae5909fc-95f0-a4bd-3c74-1bc2d809a5ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lower_hopping_coefficient {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    ⟪orthogonalPolynomial t ht n,
      multiplicationMap t (basisDomainVector t ht (n + 1))⟫_ℂ =
        (hopping t ht n : ℂ) := by
  change ⟪(basisDomainVector t ht n : Lp ℂ 2 (momentMeasure t)),
    multiplicationMap t (basisDomainVector t ht (n + 1))⟫_ℂ = _
  rw [← multiplicationMap_formalAdjoint t, ← inner_conj_symm]
  change (starRingEnd ℂ) ⟪orthogonalPolynomial t ht (n + 1),
    multiplicationMap t (basisDomainVector t ht n)⟫_ℂ = _
  rw [upper_hopping_coefficient ht n, Complex.conj_ofReal]

/-- The actual real diagonal coefficient is the real part of its cyclic basis coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ecd5644709417ba33995718873c494d071bc1dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
