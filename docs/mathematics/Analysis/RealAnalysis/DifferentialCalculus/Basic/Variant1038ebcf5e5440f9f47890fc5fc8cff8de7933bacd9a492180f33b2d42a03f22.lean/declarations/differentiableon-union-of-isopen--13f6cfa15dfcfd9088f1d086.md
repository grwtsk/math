# DifferentiableOn.union_of_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12ef16d4a4c2af8dae91ce67d279a1738a69c25c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 552,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/1038ebcf5e5440f9f47890fc5fc8cff8de7933bacd9a492180f33b2d42a03f22.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:abf888f8-9c63-9a0e-2b1a-d4b740abc0cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52b8b200-540e-3652-b937-f3b1bcfe44f3",
  "kind": "lemma",
  "lexical_name": "DifferentiableOn.union_of_isOpen",
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
  "slug": "differentiableon-union-of-isopen--13f6cfa15dfcfd9088f1d086",
  "source": {
    "blob": "12ef16d4a4c2af8dae91ce67d279a1738a69c25c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 552,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant1038ebcf5e5440f9f47890fc5fc8cff8de7933bacd9a492180f33b2d42a03f22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13f6cfa15dfcfd9088f1d0865c45cf60eb07c81a09ffc05e792011776f4568bf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant1038ebcf5e5440f9f47890fc5fc8cff8de7933bacd9a492180f33b2d42a03f22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52b8b200-540e-3652-b937-f3b1bcfe44f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–561.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma DifferentiableOn.union_of_isOpen
    (hf : DifferentiableOn 𝕜 f s) (hf' : DifferentiableOn 𝕜 f t)
    (hs : IsOpen s) (ht : IsOpen t) :
    DifferentiableOn 𝕜 f (s ∪ t) := by
  intro x hx
  obtain (hx | hx) := hx
  · exact (hf x hx).differentiableAt (hs.mem_nhds hx) |>.differentiableWithinAt
  · exact (hf' x hx).differentiableAt (ht.mem_nhds hx) |>.differentiableWithinAt

/-- A function is differentiable on two open sets iff it is differentiable on their union. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant1038ebcf5e5440f9f47890fc5fc8cff8de7933bacd9a492180f33b2d42a03f22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant1038ebcf5e5440f9f47890fc5fc8cff8de7933bacd9a492180f33b2d42a03f22.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12ef16d4a4c2af8dae91ce67d279a1738a69c25c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
