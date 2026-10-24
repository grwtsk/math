# caratheodoryDynkin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2cf527ff97404bbf6cc4a0dfb5f4688d896bc9afa592f3ac7d42085036a8c6bd",
  "kind": "def",
  "lexical_name": "caratheodoryDynkin",
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
  "slug": "caratheodorydynkin--34a8d93a1d42ef612e18ee60",
  "source": {
    "blob": "9be48467d351918c581cfd36817ea9a0e29164a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 167,
    "path": "GRWTSK/Analysis/MeasureTheory/Caratheodory/Variant477179988083a4e79b87b25c40eacaed6fda9cd2569b9f725341570a808b50fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34a8d93a1d42ef612e18ee6056b846536793ba3ffc06fa314eac250d717f026d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Caratheodory/Variant477179988083a4e79b87b25c40eacaed6fda9cd2569b9f725341570a808b50fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2cf527ff97404bbf6cc4a0dfb5f4688d896bc9afa592f3ac7d42085036a8c6bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def caratheodoryDynkin : MeasurableSpace.DynkinSystem α where
  Has := IsCaratheodory m
  has_empty := isCaratheodory_empty m
  has_compl s := isCaratheodory_compl m s
  has_iUnion_nat _ hf hn := by apply isCaratheodory_iUnion m hf

/-- Given an outer measure `μ`, the Carathéodory-measurable space is
  defined such that `s` is measurable if `∀ t, μ t = μ (t ∩ s) + μ (t \ s)`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Caratheodory/Variant477179988083a4e79b87b25c40eacaed6fda9cd2569b9f725341570a808b50fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Caratheodory/Variant477179988083a4e79b87b25c40eacaed6fda9cd2569b9f725341570a808b50fe.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9be48467d351918c581cfd36817ea9a0e29164a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
