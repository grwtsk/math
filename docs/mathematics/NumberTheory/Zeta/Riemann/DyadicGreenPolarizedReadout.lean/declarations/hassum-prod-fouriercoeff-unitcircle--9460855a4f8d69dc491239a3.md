# hasSum_prod_fourierCoeff_unitCircle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93b6d161-0385-36ca-2f55-a59c33b10f0e",
  "kind": "theorem",
  "lexical_name": "hasSum_prod_fourierCoeff_unitCircle",
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
  "slug": "hassum-prod-fouriercoeff-unitcircle--9460855a4f8d69dc491239a3",
  "source": {
    "blob": "37f98d21c77c6a9f8fa8e2ea26f3af5c9c13f8a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 42,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9460855a4f8d69dc491239a312ff82d32b4d50945205db7d69edeed9a9de06e4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93b6d161-0385-36ca-2f55-a59c33b10f0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_prod_fourierCoeff_unitCircle
    (f g : Lp ℂ 2 (@AddCircle.haarAddCircle (1 : ℝ) (Fact.mk zero_lt_one))) :
    HasSum
      (fun k : ℤ => conj (fourierCoeff f k) * fourierCoeff g k)
      (∫ t : AddCircle (1 : ℝ),
        conj (f t) * g t
        ∂(@AddCircle.haarAddCircle (1 : ℝ) (Fact.mk zero_lt_one))) := by
  simp_rw [mul_comm (conj _)]
  refine HasSum.congr_fun
    ((@fourierBasis (1 : ℝ) (Fact.mk zero_lt_one)).hasSum_inner_mul_inner f g)
    (fun k => ?_)
  simp only [← fourierBasis_repr, HilbertBasis.repr_apply_apply,
    inner_conj_symm, mul_comm (inner ℂ f _)]

/-- Polarized Parseval transported directly to the real interval (0,1]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37f98d21c77c6a9f8fa8e2ea26f3af5c9c13f8a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
