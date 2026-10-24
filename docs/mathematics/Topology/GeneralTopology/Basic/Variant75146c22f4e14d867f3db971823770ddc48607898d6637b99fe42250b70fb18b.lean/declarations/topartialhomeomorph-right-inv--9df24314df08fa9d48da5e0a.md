# toPartialHomeomorph_right_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7517514b-e322-46fb-db15-42bfc2a18a9c",
  "kind": "lemma",
  "lexical_name": "toPartialHomeomorph_right_inv",
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
  "slug": "topartialhomeomorph-right-inv--9df24314df08fa9d48da5e0a",
  "source": {
    "blob": "3c15948205161e978ca964529d52994922119721",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 234,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant75146c22f4e14d867f3db971823770ddc48607898d6637b99fe42250b70fb18b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9df24314df08fa9d48da5e0a28d17e0625c581b1dff21560421a613557232f8f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant75146c22f4e14d867f3db971823770ddc48607898d6637b99fe42250b70fb18b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7517514b-e322-46fb-db15-42bfc2a18a9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toPartialHomeomorph_right_inv {x : Y} (hx : x ∈ Set.range f) :
    f ((h.toPartialHomeomorph f).symm x) = x := by
  rw [← congr_fun (h.toPartialHomeomorph_apply f), PartialHomeomorph.right_inv]
  rwa [toPartialHomeomorph_target]

end Topology.IsEmbedding

/-! inclusion of a set in a topological space -/
namespace Set

/- `Nonempty s` is not a type class argument because `s`, being a subset, rarely comes with a type
class instance. Then we'd have to manually provide the instance every time we use the following
lemmas, tediously using `haveI := ...` or `@foobar _ _ _ ...`. -/
variable (s : Set X) (hs : Nonempty s)

/-- The inclusion of an subset `s` of a space `X` into `X` is a partial homeomorphism
from the subtype `s` to `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant75146c22f4e14d867f3db971823770ddc48607898d6637b99fe42250b70fb18b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant75146c22f4e14d867f3db971823770ddc48607898d6637b99fe42250b70fb18b.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c15948205161e978ca964529d52994922119721` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
