# HasBasis_counterUniformity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd94d4c5-841a-dd46-ba08-f831ce40e1e4",
  "kind": "lemma",
  "lexical_name": "HasBasis_counterUniformity",
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
  "slug": "hasbasis-counteruniformity--82dc16d6c7d6e7de26b70477",
  "source": {
    "blob": "78ba76d6250d0818b49b2d6192832dead96b9a76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 278,
    "path": "GRWTSK/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82dc16d6c7d6e7de26b704776543e7ab24b139df72e99b93203df753514a2856",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd94d4c5-841a-dd46-ba08-f831ce40e1e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasBasis_counterUniformity :
    (uniformity ℕ).HasBasis (fun _ ↦ True) fundamentalEntourage := by
  show counterCoreUniformity.uniformity.HasBasis (fun _ ↦ True) fundamentalEntourage
  simp only [Filter.hasBasis_iff, exists_and_left, true_and]
  intro T
  refine ⟨fun ⟨s, ⟨⟨r, hr⟩, hs⟩⟩ ↦ ⟨r, subset_of_eq_of_subset hr hs⟩ , fun ⟨n, hn⟩ ↦ ?_⟩
  exact (@FilterBasis.mem_filter_iff _ counterBasis T).mpr ⟨fundamentalEntourage n, by simp, hn⟩

/-- A proof that the topology on `ℕ` induced by the "crude" uniformity `counterCoreUniformity`
(or by `counterUniformity` tout-court, since they are `defeq`) is discrete -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78ba76d6250d0818b49b2d6192832dead96b9a76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
