# isJacobsonRing_iff_jacobsonSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31db5992ef94532287e99a8dba689484fef71b06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78fa5427-238d-ad2a-5b7a-89fecac6d6f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4888b1a3-4b54-69ee-d80c-10ec11d4f43c",
  "kind": "lemma",
  "lexical_name": "isJacobsonRing_iff_jacobsonSpace",
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
  "slug": "isjacobsonring-iff-jacobsonspace--e2926ecf3abb127a41cdd004",
  "source": {
    "blob": "31db5992ef94532287e99a8dba689484fef71b06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 57,
    "path": "GRWTSK/Topology/GeneralTopology/Jacobson/Variant8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2926ecf3abb127a41cdd004729b4e2f1378f3505f4d0a5704c968bc2b143e46",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Jacobson/Variant8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4888b1a3-4b54-69ee-d80c-10ec11d4f43c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isJacobsonRing_iff_jacobsonSpace :
    IsJacobsonRing R ↔ JacobsonSpace (PrimeSpectrum R) := by
  refine ⟨fun _ ↦ inferInstance, fun H ↦ ⟨fun I hI ↦ le_antisymm ?_ Ideal.le_jacobson⟩⟩
  rw [← I.isRadical_jacobson.radical]
  conv_rhs => rw [← hI.radical]
  simp_rw [← vanishingIdeal_zeroLocus_eq_radical]
  apply vanishingIdeal_anti_mono
  rw [← H.1 (isClosed_zeroLocus I), (isClosed_zeroLocus _).closure_subset_iff]
  rintro x ⟨hx : I ≤ x.asIdeal, hx'⟩
  show jacobson I ≤ x.asIdeal
  exact sInf_le ⟨hx, (isClosed_singleton_iff_isMaximal _).mp hx'⟩

/--
If `R` is both noetherian and jacobson, then the following are equivalent for `x : Spec R`:
1. `{x}` is open (i.e. `x` is an isolated point)
2. `{x}` is clopen
3. `{x}` is both closed and stable under generalization
  (i.e. `x` is both a minimal prime and a maximal ideal)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Jacobson/Variant8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Jacobson/Variant8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31db5992ef94532287e99a8dba689484fef71b06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
