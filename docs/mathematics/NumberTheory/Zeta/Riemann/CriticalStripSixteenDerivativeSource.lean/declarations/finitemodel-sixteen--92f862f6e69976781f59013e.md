# finiteModel_sixteen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef8b5fe8-f619-223a-26e9-4e37ea94d8ed",
  "kind": "lemma",
  "lexical_name": "finiteModel_sixteen",
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
  "slug": "finitemodel-sixteen--92f862f6e69976781f59013e",
  "source": {
    "blob": "8b8c1570d8e3aaf419e33610d00a93d0be37161a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 150,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92f862f6e69976781f59013e7f781ed3560bb1566428e4413c1391a85ba432cc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef8b5fe8-f619-223a-26e9-4e37ea94d8ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finiteModel_sixteen (s : ℂ) : finiteModel 16 s = value s := by
  have hsum : finiteDirichletPowerSum 16 s = ∑ k : Fin 16, power k s := by
    rw [finiteDirichletPowerSum,
      show Finset.Icc (1 : ℕ) 16 = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16} from by decide]
    norm_num [power, base, Fin.sum_univ_succ] <;> ring
  have hshift (j : ℕ) : (16 : ℂ)^(-(s+(j : ℂ))) = (16 : ℂ)^(-s)/(16 : ℂ)^j := by
    rw [show -(s+(j : ℂ)) = -s-(j : ℂ) by ring,
      Complex.cpow_sub _ _ (by norm_num : (16 : ℂ) ≠ 0), Complex.cpow_natCast]
  have hend : (16 : ℂ)^(1-s) = 16*(16 : ℂ)^(-s) := by
    rw [sub_eq_add_neg, Complex.cpow_add _ _ (by norm_num : (16 : ℂ) ≠ 0), Complex.cpow_one]
  unfold finiteModel QuarticPrimitive.finiteModel CubicPrimitive.finiteModel
    CenteredMellin.finiteModel finitePowerPoleModel
  norm_num only [Nat.cast_ofNat]
  rw [hsum, hend, hshift 1, hshift 3, hshift 5]
  unfold value weight
  rw [product_four, product_six]
  norm_num [power, base] <;> ring

/-- Exact first-derivative telescope, including the multiplier derivative and log tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b8c1570d8e3aaf419e33610d00a93d0be37161a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
