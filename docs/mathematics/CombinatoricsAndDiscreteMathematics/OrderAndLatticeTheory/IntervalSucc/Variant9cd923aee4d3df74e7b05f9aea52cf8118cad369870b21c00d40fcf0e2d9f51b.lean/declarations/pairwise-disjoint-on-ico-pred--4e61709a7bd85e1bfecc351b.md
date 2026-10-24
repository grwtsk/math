# pairwise_disjoint_on_Ico_pred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d057ad69-a032-5a65-d714-717434dfcf56",
  "kind": "theorem",
  "lexical_name": "pairwise_disjoint_on_Ico_pred",
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
  "slug": "pairwise-disjoint-on-ico-pred--4e61709a7bd85e1bfecc351b",
  "source": {
    "blob": "5cdfe287b0952d0f4c2f885ddf0bf83b49e9b96a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 170,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant9cd923aee4d3df74e7b05f9aea52cf8118cad369870b21c00d40fcf0e2d9f51b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e61709a7bd85e1bfecc351b82aa1ac99362d615e702801c8e089ce09cbaa20e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant9cd923aee4d3df74e7b05f9aea52cf8118cad369870b21c00d40fcf0e2d9f51b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d057ad69-a032-5a65-d714-717434dfcf56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairwise_disjoint_on_Ico_pred [PredOrder α] [Preorder β] {f : α → β} (hf : Antitone f) :
    Pairwise (Disjoint on fun n => Ico (f n) (f (pred n))) :=
  hf.dual_left.pairwise_disjoint_on_Ico_succ

/-- If `α` is a linear pred order, `β` is a preorder, and `f : α → β` is an antitone function, then
the intervals `Set.Ioo (f n) (f (Order.pred n))` are pairwise disjoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant9cd923aee4d3df74e7b05f9aea52cf8118cad369870b21c00d40fcf0e2d9f51b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant9cd923aee4d3df74e7b05f9aea52cf8118cad369870b21c00d40fcf0e2d9f51b.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cdfe287b0952d0f4c2f885ddf0bf83b49e9b96a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
