# sum_split_boxes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62d33275-b475-59c2-f8a8-73efed5ec4a4",
  "kind": "theorem",
  "lexical_name": "sum_split_boxes",
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
  "slug": "sum-split-boxes--28fa763c8a08fd08595df422",
  "source": {
    "blob": "6c780ac9575d5245f41bed13852b225a0efc89d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 185,
    "path": "GRWTSK/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28fa763c8a08fd08595df4227863338ced9261625c3408eb502e4e1d679d4151",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62d33275-b475-59c2-f8a8-73efed5ec4a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_split_boxes {M : Type*} [AddCommMonoid M] (I : Box ι) (i : ι) (x : ℝ) (f : Box ι → M) :
    (∑ J ∈ (split I i x).boxes, f J) =
      (I.splitLower i x).elim' 0 f + (I.splitUpper i x).elim' 0 f := by
  classical
  rw [split, sum_ofWithBot, Finset.sum_pair (I.splitLower_ne_splitUpper i x)]

/-- If `x ∉ (I.lower i, I.upper i)`, then the hyperplane `{y | y i = x}` does not split `I`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c780ac9575d5245f41bed13852b225a0efc89d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
