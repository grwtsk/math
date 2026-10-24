# elim_one_mulSingle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b55a8def-f5c5-e5ff-888a-3ed8f9a7b9be",
  "kind": "theorem",
  "lexical_name": "elim_one_mulSingle",
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
  "slug": "elim-one-mulsingle--b046745ae408fec7f297f3d5",
  "source": {
    "blob": "04e6bef8c036dbe2dea28b7c4e94ed94e84ffefe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 239,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant92ebb274d907fb4faac18db69c26f3eb21979248d4154f26d8f8f035e583c0c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b046745ae408fec7f297f3d5f183c3afadd404a7bb951edf01b4803491ce8a21",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant92ebb274d907fb4faac18db69c26f3eb21979248d4154f26d8f8f035e583c0c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b55a8def-f5c5-e5ff-888a-3ed8f9a7b9be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem elim_one_mulSingle [DecidableEq α] [DecidableEq β] [One γ] (i : β) (c : γ) :
    Sum.elim (1 : α → γ) (Pi.mulSingle i c) = Pi.mulSingle (Sum.inr i) c := by
  simp only [Pi.mulSingle, Sum.elim_update_right, elim_one_one]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant92ebb274d907fb4faac18db69c26f3eb21979248d4154f26d8f8f035e583c0c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant92ebb274d907fb4faac18db69c26f3eb21979248d4154f26d8f8f035e583c0c6.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04e6bef8c036dbe2dea28b7c4e94ed94e84ffefe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
