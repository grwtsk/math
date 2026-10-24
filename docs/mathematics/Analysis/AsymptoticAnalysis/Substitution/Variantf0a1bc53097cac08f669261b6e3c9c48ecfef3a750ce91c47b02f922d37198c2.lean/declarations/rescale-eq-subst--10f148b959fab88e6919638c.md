# rescale_eq_subst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:612f2f90-e016-9c15-875c-3580f47a8378",
  "kind": "theorem",
  "lexical_name": "rescale_eq_subst",
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
  "slug": "rescale-eq-subst--10f148b959fab88e6919638c",
  "source": {
    "blob": "8a91e921819b605ae2907dddfea54663b2e353ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 761,
    "line": 745,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Substitution/Variantf0a1bc53097cac08f669261b6e3c9c48ecfef3a750ce91c47b02f922d37198c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10f148b959fab88e6919638cd87278647087a28df4cb56159938f3bcbced72e7",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Substitution/Variantf0a1bc53097cac08f669261b6e3c9c48ecfef3a750ce91c47b02f922d37198c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:612f2f90-e016-9c15-875c-3580f47a8378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 745–761.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rescale_eq_subst (a : σ → R) (f : MvPowerSeries σ R) :
    rescale a f = subst (a • X) f := by
  classical
  ext n
  rw [coeff_rescale]
  rw [coeff_subst (HasSubst.smul_X a),
    finsum_eq_sum _ (coeff_subst_finite (HasSubst.smul_X a) f n)]
  simp only [Pi.smul_apply', smul_eq_mul]
  rw [Finset.sum_eq_single n _ _]
  · simp [mul_comm, ← monomial_eq]
  · intro b hb hbn
    rw [← monomial_eq, coeff_monomial, ite_eq_right (Ne.symm hbn), mul_zero]
  · intro hn
    simpa using hn

/-- Rescale a multivariate power series, as an `AlgHom` in the scaling parameters,
by multiplying each variable `x` by the value `a x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Substitution/Variantf0a1bc53097cac08f669261b6e3c9c48ecfef3a750ce91c47b02f922d37198c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Substitution/Variantf0a1bc53097cac08f669261b6e3c9c48ecfef3a750ce91c47b02f922d37198c2.lean#L745).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a91e921819b605ae2907dddfea54663b2e353ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
