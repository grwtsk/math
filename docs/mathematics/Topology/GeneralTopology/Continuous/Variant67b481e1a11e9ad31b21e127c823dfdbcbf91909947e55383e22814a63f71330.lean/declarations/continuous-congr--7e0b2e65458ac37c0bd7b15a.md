# continuous_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d628b8a8-b3bb-f66d-7eb4-69a45ea9fc9b",
  "kind": "theorem",
  "lexical_name": "continuous_congr",
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
  "slug": "continuous-congr--7e0b2e65458ac37c0bd7b15a",
  "source": {
    "blob": "dd07c8110a77314a60e43b3f273cb82dea04a392",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/Continuous/Variant67b481e1a11e9ad31b21e127c823dfdbcbf91909947e55383e22814a63f71330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e0b2e65458ac37c0bd7b15a98d3b14d5dee524f9a235d801bc83f58099c6d68",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuous/Variant67b481e1a11e9ad31b21e127c823dfdbcbf91909947e55383e22814a63f71330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d628b8a8-b3bb-f66d-7eb4-69a45ea9fc9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_congr
    {X : Type u} {Y : Type v}
    {TX : TopologicalSpaceLike X}
    {TY : TopologicalSpaceLike Y}
    {f g : X → Y}
    (hf : Continuous TX TY f)
    (hfg : ∀ x, f x = g x) :
    Continuous TX TY g := by
  intro V hV
  have hopen := hf V hV
  have heq : Set.preimage f V = Set.preimage g V := by
    apply Set.ext
    intro x
    change V (f x) ↔ V (g x)
    rw [hfg x]
  rw [← heq]
  exact hopen

/-- Every map out of a discrete space is continuous only when its preimages are open;
for the discrete topology this holds automatically. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuous/Variant67b481e1a11e9ad31b21e127c823dfdbcbf91909947e55383e22814a63f71330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuous/Variant67b481e1a11e9ad31b21e127c823dfdbcbf91909947e55383e22814a63f71330.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd07c8110a77314a60e43b3f273cb82dea04a392` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
