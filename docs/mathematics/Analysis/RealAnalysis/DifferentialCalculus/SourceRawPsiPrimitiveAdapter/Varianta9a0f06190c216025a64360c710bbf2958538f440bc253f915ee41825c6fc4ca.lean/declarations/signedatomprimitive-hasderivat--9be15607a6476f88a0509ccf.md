# signedAtomPrimitive_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cf3ad0b-f597-6e68-b22a-7aa620594405",
  "kind": "theorem",
  "lexical_name": "signedAtomPrimitive_hasDerivAt",
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
  "slug": "signedatomprimitive-hasderivat--9be15607a6476f88a0509ccf",
  "source": {
    "blob": "7879f686bf89ad4cad47509c82b316f2dcff9485",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 27,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRawPsiPrimitiveAdapter/Varianta9a0f06190c216025a64360c710bbf2958538f440bc253f915ee41825c6fc4ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9be15607a6476f88a0509ccfee036828a28059304151f76d2c85acc71fb41812",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceRawPsiPrimitiveAdapter/Varianta9a0f06190c216025a64360c710bbf2958538f440bc253f915ee41825c6fc4ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cf3ad0b-f597-6e68-b22a-7aa620594405`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedAtomPrimitive_hasDerivAt (t y : ℝ) (hy : 0 < y) :
    HasDerivAt (signedAtomPrimitive t) (literalXiWeight t y) y := by
  have h1 := (hasDerivAt_inv hy.ne').const_mul (-4 * Real.exp (t / 2))
  have h2 := (((hasDerivAt_const y t).sub (Real.hasDerivAt_log hy.ne')).add_const 2).const_mul 2
  have h3 := Real.hasDerivAt_rpow_const (x := y) (p := (-1 / 2 : ℝ)) (Or.inl hy.ne')
  have he : y ^ (-1 / 2 : ℝ) = y * y ^ (-3 / 2 : ℝ) := by
    rw [show (-1 / 2 : ℝ) = -3 / 2 + 1 by ring, Real.rpow_add hy]
    simp only [Real.rpow_one, mul_comm]
  have hneg : y ^ (-3 / 2 : ℝ) = (y ^ (3 / 2 : ℝ))⁻¹ := by
    rw [show (-3 / 2 : ℝ) = -(3 / 2) by ring, Real.rpow_neg hy.le]
  exact (h1.add (h2.mul h3)).congr_deriv (by
    dsimp only [literalXiWeight, Pi.mul_apply, Pi.add_apply, Pi.sub_apply]
    rw [show (-1 / 2 - 1 : ℝ) = -3 / 2 by ring, he, hneg]
    field_simp
    ring)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceRawPsiPrimitiveAdapter/Varianta9a0f06190c216025a64360c710bbf2958538f440bc253f915ee41825c6fc4ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRawPsiPrimitiveAdapter/Varianta9a0f06190c216025a64360c710bbf2958538f440bc253f915ee41825c6fc4ca.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7879f686bf89ad4cad47509c82b316f2dcff9485` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
