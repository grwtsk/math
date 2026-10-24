# sum_ramification_inertia_eq_finrank_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d88fe6fc951ef7c4c9819c247b25a464dd16f18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7f5290e28d150f9ed28f5100cc0dac909345d4c1ab00a9df328f01bbf045d95.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ee5551a-2835-3adc-225f-8647a3de592a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:334ded74-adc8-972e-dc75-d0a8838bb9e0",
  "kind": "theorem",
  "lexical_name": "sum_ramification_inertia_eq_finrank_fiber",
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
  "slug": "sum-ramification-inertia-eq-finrank-fiber--096cac8246a1ede165f4fb05",
  "source": {
    "blob": "0d88fe6fc951ef7c4c9819c247b25a464dd16f18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 44,
    "path": "GRWTSK/Algebra/Basic/Variantb7f5290e28d150f9ed28f5100cc0dac909345d4c1ab00a9df328f01bbf045d95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:096cac8246a1ede165f4fb05f56a4bf005c8593be12da3cd927fa0a6d39c07bd",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantb7f5290e28d150f9ed28f5100cc0dac909345d4c1ab00a9df328f01bbf045d95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:334ded74-adc8-972e-dc75-d0a8838bb9e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_ramification_inertia_eq_finrank_fiber
    [Algebra.QuasiFinite R S] [Fintype (p.primesOver S)] :
    ∑ q : p.primesOver S, q.1.ramificationIdx R * q.1.inertiaDeg R =
      finrank p.ResidueField (p.Fiber S) := by
  let := Fintype.ofFinite (PrimeSpectrum (p.Fiber S))
  rw [IsArtinianRing.finrank_eq_sum_primeSpectrum, ← (primesOverOrderIsoFiber R S p).symm.sum_comp]
  apply Finset.sum_congr rfl
  intro q _
  simp_rw [toEquiv_symm, coe_symm_toEquiv, coe_primesOverOrderIsoFiber_symm_apply]
  set r := q.1.comap Algebra.TensorProduct.includeRight
  let := Localization.AtPrime.algebraOfLiesOver p r
  rw [ramificationIdx_eq p r, inertiaDeg_eq p r]
  let Rp := Localization.AtPrime p
  let Sq := Localization.AtPrime q.1
  let Sr := Localization.AtPrime r
  let κp := p.ResidueField
  let κr := r.ResidueField
  let A := Sr ⧸ p.map (algebraMap R Sr)
  suffices length Sr A * finrank κp κr = finrank κp Sq by simpa using congr_arg ENat.toNat this
  calc length Sr A * finrank κp κr = length Sr A * length κp κr := by rw [length_eq_finrank]
    _ = length Rp A := (length_restrictScalars Rp Sr A).symm
    _ = length Rp Sq := (Fiber.localizationAlgEquivQuotient p q.1).toLinearEquiv.length_eq.symm
    _ = length κp Sq := length_eq_of_surjective residue_surjective
    _ = finrank κp Sq := length_eq_finrank κp Sq

/-- Let `R` be an integral domain, let `S` be a finite flat `R`-algebra, and let `p` be a prime
ideal of `R`. Then the sum over all prime ideals `q` of `S` lying over `p` of the ramification
index of `q` times the inertia degree of `q` equals the rank of `S` as an `R`-module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantb7f5290e28d150f9ed28f5100cc0dac909345d4c1ab00a9df328f01bbf045d95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantb7f5290e28d150f9ed28f5100cc0dac909345d4c1ab00a9df328f01bbf045d95.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d88fe6fc951ef7c4c9819c247b25a464dd16f18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
