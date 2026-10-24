# eventually_countable_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32fc0606-f000-626f-ced9-7316c9908525",
  "kind": "theorem",
  "lexical_name": "eventually_countable_ball",
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
  "slug": "eventually-countable-ball--2a99c5e850b81010b8d58118",
  "source": {
    "blob": "3211b83ae709775f19b1bfa258415af9a4a006a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 72,
    "path": "GRWTSK/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a99c5e850b81010b8d581184f29ec145db1a0d6d24c9fcb67ddd806cb4dcf14",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32fc0606-f000-626f-ced9-7316c9908525`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_countable_ball {ι : Type*} {S : Set ι} (hS : S.Countable)
    {p : α → ∀ i ∈ S, Prop} :
    (∀ᶠ x in l, ∀ i hi, p x i hi) ↔ ∀ i hi, ∀ᶠ x in l, p x i hi := by
  simpa only [Filter.Eventually, setOf_forall] using
    @countable_bInter_mem _ l _ _ _ hS fun i hi => { x | p x i hi }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3211b83ae709775f19b1bfa258415af9a4a006a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
