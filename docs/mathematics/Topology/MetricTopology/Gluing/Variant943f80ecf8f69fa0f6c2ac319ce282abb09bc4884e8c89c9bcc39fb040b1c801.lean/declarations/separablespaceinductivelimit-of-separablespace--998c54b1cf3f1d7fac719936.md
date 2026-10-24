# separableSpaceInductiveLimit_of_separableSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0d155cb-308c-e8bf-8a46-61e2dd6a0c51",
  "kind": "theorem",
  "lexical_name": "separableSpaceInductiveLimit_of_separableSpace",
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
  "slug": "separablespaceinductivelimit-of-separablespace--998c54b1cf3f1d7fac719936",
  "source": {
    "blob": "4fa15e7207538ae55fdd3880b48e02d4ff055608",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 663,
    "line": 647,
    "path": "GRWTSK/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:998c54b1cf3f1d7fac719936f9a819d81d948dceaf542c1343c3bdcb91107a5f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0d155cb-308c-e8bf-8a46-61e2dd6a0c51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 647–663.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem separableSpaceInductiveLimit_of_separableSpace
    {X : ℕ → Type u} [(n : ℕ) → MetricSpace (X n)]
    [hs : (n : ℕ) → TopologicalSpace.SeparableSpace (X n)] {f : (n : ℕ) → X n → X (n + 1)}
    (I : ∀ (n : ℕ), Isometry (f n)) :
    TopologicalSpace.SeparableSpace (Metric.InductiveLimit I) := by
  choose hsX hcX hdX using (fun n ↦ TopologicalSpace.exists_countable_dense (X n))
  let s := ⋃ (i : ℕ), (toInductiveLimit I i '' (hsX i))
  refine ⟨s, countable_iUnion (fun n => (hcX n).image _), ?_⟩
  refine .of_closure <| (dense_iUnion_range_toInductiveLimit I).mono <| iUnion_subset fun i ↦ ?_
  calc
    range (toInductiveLimit I i) ⊆ closure (toInductiveLimit I i '' (hsX i)) :=
      (toInductiveLimit_isometry I i |>.continuous).range_subset_closure_image_dense (hdX i)
    _ ⊆ closure s := closure_mono <| subset_iUnion (fun j ↦ toInductiveLimit I j '' hsX j) i

end InductiveLimit --section

end Metric --namespace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean#L647).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fa15e7207538ae55fdd3880b48e02d4ff055608` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
