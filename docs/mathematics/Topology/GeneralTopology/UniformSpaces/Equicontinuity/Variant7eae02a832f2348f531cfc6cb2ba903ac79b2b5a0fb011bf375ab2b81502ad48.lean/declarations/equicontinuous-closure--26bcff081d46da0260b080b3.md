# Equicontinuous.closure'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:466f973c-c6c4-19b4-5234-2935fa185abd",
  "kind": "theorem",
  "lexical_name": "Equicontinuous.closure'",
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
  "slug": "equicontinuous-closure--26bcff081d46da0260b080b3",
  "source": {
    "blob": "edeaa023f7615f9fc86899e670c1d0041a24cd10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 823,
    "line": 815,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant7eae02a832f2348f531cfc6cb2ba903ac79b2b5a0fb011bf375ab2b81502ad48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26bcff081d46da0260b080b35d800cd162bfb25dc991c615b87ede2ebd0bb30a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant7eae02a832f2348f531cfc6cb2ba903ac79b2b5a0fb011bf375ab2b81502ad48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:466f973c-c6c4-19b4-5234-2935fa185abd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 815–823.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Equicontinuous.closure' {A : Set Y} {u : Y → X → α}
    (hA : Equicontinuous (u ∘ (↑) : A → X → α)) (hu : Continuous u) :
    Equicontinuous (u ∘ (↑) : closure A → X → α) := fun x ↦ (hA x).closure' hu

/-- If a set of functions is equicontinuous on a set `S`, the same is true for its closure in *any*
topology for which evaluation at any `x ∈ S` is continuous. Since this will be applied to
`DFunLike` types, we state it for any topological space with a map to `X → α` satisfying the right
continuity conditions. See also `Set.EquicontinuousOn.closure` for a more familiar
(but weaker) statement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant7eae02a832f2348f531cfc6cb2ba903ac79b2b5a0fb011bf375ab2b81502ad48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant7eae02a832f2348f531cfc6cb2ba903ac79b2b5a0fb011bf375ab2b81502ad48.lean#L815).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edeaa023f7615f9fc86899e670c1d0041a24cd10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
