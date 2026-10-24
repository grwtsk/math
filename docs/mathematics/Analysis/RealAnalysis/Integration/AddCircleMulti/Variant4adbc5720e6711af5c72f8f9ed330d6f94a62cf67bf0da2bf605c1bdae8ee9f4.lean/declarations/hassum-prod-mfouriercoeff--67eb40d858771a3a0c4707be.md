# hasSum_prod_mFourierCoeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92652cf9-4fdb-6536-dce5-cecdcfc0fd50",
  "kind": "theorem",
  "lexical_name": "hasSum_prod_mFourierCoeff",
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
  "slug": "hassum-prod-mfouriercoeff--67eb40d858771a3a0c4707be",
  "source": {
    "blob": "234dad08a9037aee2d31e93f1493062d5ea4dd7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 300,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AddCircleMulti/Variant4adbc5720e6711af5c72f8f9ed330d6f94a62cf67bf0da2bf605c1bdae8ee9f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67eb40d858771a3a0c4707bec7bd8f3e568d8abf76864981c4a743dc1e0c317c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AddCircleMulti/Variant4adbc5720e6711af5c72f8f9ed330d6f94a62cf67bf0da2bf605c1bdae8ee9f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92652cf9-4fdb-6536-dce5-cecdcfc0fd50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_prod_mFourierCoeff (f g : L²(UnitAddTorus d)) :
    HasSum (fun i ↦ conj (mFourierCoeff f i) * (mFourierCoeff g i)) (∫ t, conj (f t) * g t) := by
  simp_rw [mul_comm (conj _)]
  refine HasSum.congr_fun (mFourierBasis.hasSum_inner_mul_inner f g) (fun n ↦ ?_)
  simp only [← mFourierBasis_repr, HilbertBasis.repr_apply_apply, inner_conj_symm,
    mul_comm (inner ℂ f _)]

/-- **Parseval's identity** for norms: for an `L²` function `f` on `UnitAddTorus d`, the sum of the
squared norms of the Fourier coefficients equals the `L²` norm of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AddCircleMulti/Variant4adbc5720e6711af5c72f8f9ed330d6f94a62cf67bf0da2bf605c1bdae8ee9f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AddCircleMulti/Variant4adbc5720e6711af5c72f8f9ed330d6f94a62cf67bf0da2bf605c1bdae8ee9f4.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `234dad08a9037aee2d31e93f1493062d5ea4dd7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
