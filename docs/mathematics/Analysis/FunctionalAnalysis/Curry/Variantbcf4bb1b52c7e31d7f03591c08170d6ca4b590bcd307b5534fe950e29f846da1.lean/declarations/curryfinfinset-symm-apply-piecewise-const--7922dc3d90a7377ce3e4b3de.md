# curryFinFinset_symm_apply_piecewise_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffa2874e81ead4265410d862f7fa58d1d94fb895",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 623,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bcf4bb1b52c7e31d7f03591c08170d6ca4b590bcd307b5534fe950e29f846da1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f86fbb2d-96ce-647d-865c-3db9f1697297",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:355739ed-8394-5f09-0ef5-af00c97af384",
  "kind": "theorem",
  "lexical_name": "curryFinFinset_symm_apply_piecewise_const",
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
  "slug": "curryfinfinset-symm-apply-piecewise-const--7922dc3d90a7377ce3e4b3de",
  "source": {
    "blob": "ffa2874e81ead4265410d862f7fa58d1d94fb895",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 629,
    "line": 623,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Curry/Variantbcf4bb1b52c7e31d7f03591c08170d6ca4b590bcd307b5534fe950e29f846da1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7922dc3d90a7377ce3e4b3defcf040066adf05c501811fd01ce1784e7c75e4a6",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Curry/Variantbcf4bb1b52c7e31d7f03591c08170d6ca4b590bcd307b5534fe950e29f846da1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:355739ed-8394-5f09-0ef5-af00c97af384`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 623–629.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem curryFinFinset_symm_apply_piecewise_const (hk : #s = k) (hl : #sᶜ = l)
    (f : G [×k]→L[𝕜] G [×l]→L[𝕜] G') (x y : G) :
    (curryFinFinset 𝕜 G G' hk hl).symm f (s.piecewise (fun _ => x) fun _ => y) =
      f (fun _ => x) fun _ => y :=
  MultilinearMap.curryFinFinset_symm_apply_piecewise_const hk hl _ x y

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Curry/Variantbcf4bb1b52c7e31d7f03591c08170d6ca4b590bcd307b5534fe950e29f846da1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Curry/Variantbcf4bb1b52c7e31d7f03591c08170d6ca4b590bcd307b5534fe950e29f846da1.lean#L623).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffa2874e81ead4265410d862f7fa58d1d94fb895` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
