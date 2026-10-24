# separableSpaceInductiveLimit_of_separableSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83f1399586e311fd245c703d54ed8c0728c617c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 621,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91f6ac2a-7605-770f-f39e-52d32aaacaef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4b1990d-2282-aa3b-d62c-16ca6160bac2",
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
  "slug": "separablespaceinductivelimit-of-separablespace--8a0a0c586606a318df19fa6b",
  "source": {
    "blob": "83f1399586e311fd245c703d54ed8c0728c617c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 637,
    "line": 621,
    "path": "GRWTSK/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a0a0c586606a318df19fa6b6b4a6ebf6d2ee80f9eedb3150f7c27b02b6458e3",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4b1990d-2282-aa3b-d62c-16ca6160bac2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–637.

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

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83f1399586e311fd245c703d54ed8c0728c617c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
