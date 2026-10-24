# toList_splitToSubslice_of_isEmpty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce3c0c77-edd3-e076-f05e-90c97b3f74ee",
  "kind": "theorem",
  "lexical_name": "toList_splitToSubslice_of_isEmpty",
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
  "slug": "tolist-splittosubslice-of-isempty--582fbd8356cd16bab1f2b3da",
  "source": {
    "blob": "21251ddf6bd8abc62748637d3c5bf6b8e492dbf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 170,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:582fbd8356cd16bab1f2b3da2525a3c304f2c2f4736bd52f00c1f137578cce8a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce3c0c77-edd3-e076-f05e-90c97b3f74ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem toList_splitToSubslice_of_isEmpty {ρ : Type} (pat : ρ)
    [Model.PatternModel pat] [Model.StrictPatternModel pat] {σ : Slice → Type}
    [ToForwardSearcher pat σ] [∀ s, Std.Iterator (σ s) Id (SearchStep s)]
    [∀ s, Std.Iterators.Finite (σ s) Id] [Model.LawfulToForwardSearcherModel pat] {s : Slice}
    (h : s.isEmpty = true) :
    (s.splitToSubslice pat).toList = [s.subsliceFrom s.endPos] := by
  simp [toList_splitToSubslice_eq_modelSplit, Slice.startPos_eq_endPos_iff.2 h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21251ddf6bd8abc62748637d3c5bf6b8e492dbf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
