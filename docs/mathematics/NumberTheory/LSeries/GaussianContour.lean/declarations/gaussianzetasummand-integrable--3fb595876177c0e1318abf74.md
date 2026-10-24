# gaussianZetaSummand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2af414a7-f4ed-24cf-46aa-2003ac83308b",
  "kind": "lemma",
  "lexical_name": "gaussianZetaSummand_integrable",
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
  "slug": "gaussianzetasummand-integrable--3fb595876177c0e1318abf74",
  "source": {
    "blob": "fb0b6dcfd5630a2687f0b8e34373e3afc39e124e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 63,
    "path": "GRWTSK/NumberTheory/LSeries/GaussianContour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fb595876177c0e1318abf74e11e88dbc09e3a828054019d19853c4da33ba35d",
  "verification": {
    "reference": "docs/verification/NumberTheory/LSeries/GaussianContour.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2af414a7-f4ed-24cf-46aa-2003ac83308b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gaussianZetaSummand_integrable (σ Z : ℝ) (hZ : 0 < Z) (n : ℕ) :
    Integrable (gaussianZetaSummand σ Z n) := by
  have hc : Continuous (fun v : ℝ => (σ : ℂ)+v*Complex.I) := by fun_prop
  have hz : (Z : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hZ.ne'
  have hn : (n+1 : ℂ) ≠ 0 := by exact_mod_cast (Nat.succ_ne_zero n)
  have ht : Continuous (gaussianZetaSummand σ Z n) :=
    ((hc.const_cpow (Or.inl hz)).mul ((hc.pow 2).cexp)).mul
      (hc.neg.const_cpow (Or.inl hn))
  have hg : Integrable (fun v : ℝ =>
      (Z^σ * Real.exp (σ^2) * (n+1 : ℝ)^(-σ)) * Real.exp (-(v^2))) := by
    simpa using (integrable_exp_neg_mul_sq (b := 1) (by norm_num)).const_mul
      (Z^σ * Real.exp (σ^2) * (n+1 : ℝ)^(-σ))
  exact hg.mono' ht.aestronglyMeasurable (ae_of_all _ (fun v => (gaussianZetaSummand_norm σ Z hZ n v).le))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/LSeries/GaussianContour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/LSeries/GaussianContour.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb0b6dcfd5630a2687f0b8e34373e3afc39e124e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
