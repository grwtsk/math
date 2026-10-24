# TendstoInDistribution.prodMk_of_tendstoInMeasure_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a21da7944b9948957408fd561a3883c7cd85441",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 313,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/11f09777bf2f054e6e1304ea481e1d4b991aaa43e36ef786407438093cf60ac9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2954bda7-630e-0096-e4c1-e919b143c5a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:56d186a7-0c6b-517e-ecac-a0f824a675be",
  "kind": "theorem",
  "lexical_name": "TendstoInDistribution.prodMk_of_tendstoInMeasure_const",
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
  "slug": "tendstoindistribution-prodmk-of-tendstoinmeasure-const--68a423749c56e0e05602ae3c",
  "source": {
    "blob": "4a21da7944b9948957408fd561a3883c7cd85441",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 313,
    "path": "GRWTSK/Topology/GeneralTopology/ConvergenceInDistribution/Variant11f09777bf2f054e6e1304ea481e1d4b991aaa43e36ef786407438093cf60ac9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68a423749c56e0e05602ae3c2a62d78a9c620ac730858740377c25e1b2b665bc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConvergenceInDistribution/Variant11f09777bf2f054e6e1304ea481e1d4b991aaa43e36ef786407438093cf60ac9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56d186a7-0c6b-517e-ecac-a0f824a675be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TendstoInDistribution.prodMk_of_tendstoInMeasure_const
    {E' : Type*} {mE' : MeasurableSpace E'} [SeminormedAddCommGroup E'] [SecondCountableTopology E']
    [BorelSpace E']
    [l.IsCountablyGenerated] (X : ι → Ω'' → E) (Y : ι → Ω'' → E') (Z : Ω' → E)
    {c : E'} (hXZ : TendstoInDistribution X l Z (fun _ ↦ μ'') μ')
    (hY : TendstoInMeasure μ'' Y l (fun _ ↦ c))
    (hY_meas : ∀ i, AEMeasurable (Y i) μ'') :
    TendstoInDistribution (fun n ω ↦ (X n ω, Y n ω)) l (fun ω ↦ (Z ω, c)) (fun _ ↦ μ'') μ' := by
  have hX : ∀ i, AEMeasurable (X i) μ'' := hXZ.forall_aemeasurable
  refine tendstoInDistribution_of_tendstoInMeasure_sub (X := fun n ω ↦ (X n ω, c))
    (fun n ω ↦ (X n ω, Y n ω)) (fun ω ↦ (Z ω, c)) ?_ ?_ (fun i ↦ (hX i).prodMk (hY_meas i))
  · exact hXZ.continuous_comp (g := fun x ↦ (x, c)) (by fun_prop)
  · suffices TendstoInMeasure μ'' (fun n ω ↦ ((0 : E), Y n ω - c)) l 0 by
      convert! this with n ω
      simp
    simpa [tendstoInMeasure_iff_norm] using hY

/-- **Slutsky's theorem** for a continuous function: if `X n` converges in distribution to `Z`,
`Y n` converges in probability to a constant `c`, and `g` is a continuous function, then
`g (X n, Y n)` converges in distribution to `g (Z, c)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConvergenceInDistribution/Variant11f09777bf2f054e6e1304ea481e1d4b991aaa43e36ef786407438093cf60ac9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConvergenceInDistribution/Variant11f09777bf2f054e6e1304ea481e1d4b991aaa43e36ef786407438093cf60ac9.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a21da7944b9948957408fd561a3883c7cd85441` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
