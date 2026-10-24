# IsMarkovKernel.comapRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4683fef638ea312441ef263192bb3ec2ea40c62c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 312,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/429f6f73a9cc7e2d1222caa1e94f68a4126640d2d6b69f8d9071aeb28c1fcda3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78073519-947f-e435-faf4-939674481b56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6592d75-7b6f-28f4-3dee-16385a131d30",
  "kind": "theorem",
  "lexical_name": "IsMarkovKernel.comapRight",
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
  "slug": "ismarkovkernel-comapright--277a250c7d16f76f6690e7e5",
  "source": {
    "blob": "4683fef638ea312441ef263192bb3ec2ea40c62c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 312,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant429f6f73a9cc7e2d1222caa1e94f68a4126640d2d6b69f8d9071aeb28c1fcda3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:277a250c7d16f76f6690e7e55a994c8c5018186e02866775ff02f2235ee4a0e6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant429f6f73a9cc7e2d1222caa1e94f68a4126640d2d6b69f8d9071aeb28c1fcda3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6592d75-7b6f-28f4-3dee-16385a131d30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsMarkovKernel.comapRight (κ : Kernel α β) (hf : MeasurableEmbedding f)
    (hκ : ∀ a, κ a (Set.range f) = 1) : IsMarkovKernel (comapRight κ hf) := by
  refine ⟨fun a => ⟨?_⟩⟩
  rw [comapRight_apply' κ hf a MeasurableSet.univ]
  simp only [Set.image_univ, Subtype.range_coe_subtype, Set.setOf_mem_eq]
  exact hκ a

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant429f6f73a9cc7e2d1222caa1e94f68a4126640d2d6b69f8d9071aeb28c1fcda3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant429f6f73a9cc7e2d1222caa1e94f68a4126640d2d6b69f8d9071aeb28c1fcda3.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4683fef638ea312441ef263192bb3ec2ea40c62c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
