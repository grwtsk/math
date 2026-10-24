# TendstoInDistribution.continuous_comp_prodMk_of_tendstoInMeasure_const

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
      "line": 333,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/11f09777bf2f054e6e1304ea481e1d4b991aaa43e36ef786407438093cf60ac9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a42f950a-f8e0-5d88-0ee0-cffb6c2cb37f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd7cc333-b839-bdd8-6796-7c68e5d7ad27",
  "kind": "theorem",
  "lexical_name": "TendstoInDistribution.continuous_comp_prodMk_of_tendstoInMeasure_const",
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
  "slug": "tendstoindistribution-continuous-comp-prodmk-of-tendstoinmeasure-const--e813073ac4f173ffb1324854",
  "source": {
    "blob": "4a21da7944b9948957408fd561a3883c7cd85441",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 333,
    "path": "GRWTSK/Topology/GeneralTopology/ConvergenceInDistribution/Variant11f09777bf2f054e6e1304ea481e1d4b991aaa43e36ef786407438093cf60ac9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e813073ac4f173ffb132485479f92abe29e64bffb22d5a32326e5182981dd2be",
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

Occurrence: `result:fd7cc333-b839-bdd8-6796-7c68e5d7ad27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TendstoInDistribution.continuous_comp_prodMk_of_tendstoInMeasure_const {E' F : Type*}
    {mE' : MeasurableSpace E'} [SeminormedAddCommGroup E'] [SecondCountableTopology E']
    [BorelSpace E']
    [TopologicalSpace F] [MeasurableSpace F] [BorelSpace F] {g : E × E' → F} (hg : Continuous g)
    [l.IsCountablyGenerated] {X : ι → Ω'' → E} {Y : ι → Ω'' → E'}
    {c : E'} (hXZ : TendstoInDistribution X l Z (fun _ ↦ μ'') μ')
    (hY_tendsto : TendstoInMeasure μ'' Y l (fun _ ↦ c))
    (hY : ∀ i, AEMeasurable (Y i) μ'') :
    TendstoInDistribution (fun n ω ↦ g (X n ω, Y n ω)) l (fun ω ↦ g (Z ω, c)) (fun _ ↦ μ'') μ' := by
  refine TendstoInDistribution.continuous_comp hg ?_
  exact hXZ.prodMk_of_tendstoInMeasure_const X Y Z hY_tendsto hY

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConvergenceInDistribution/Variant11f09777bf2f054e6e1304ea481e1d4b991aaa43e36ef786407438093cf60ac9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConvergenceInDistribution/Variant11f09777bf2f054e6e1304ea481e1d4b991aaa43e36ef786407438093cf60ac9.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a21da7944b9948957408fd561a3883c7cd85441` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
