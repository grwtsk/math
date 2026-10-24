# intCast_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:231f2865-7975-b8b5-a688-8b9c9aee5ff0",
  "kind": "lemma",
  "lexical_name": "intCast_apply",
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
  "slug": "intcast-apply--108fd910f1c501ed47c54065",
  "source": {
    "blob": "08afe696b924b1e67cd23eb36e392347be564b53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 305,
    "path": "GRWTSK/Topology/GeneralTopology/WeakOperatorTopology/Variant5d84bbf6bc693fc8192d1ed2f6fa0f48224189bc45f248468a5b5e6c600d987e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:108fd910f1c501ed47c54065c1b0da2ad04baeac7d6129649bed798f9cc5a190",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakOperatorTopology/Variant5d84bbf6bc693fc8192d1ed2f6fa0f48224189bc45f248468a5b5e6c600d987e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:231f2865-7975-b8b5-a688-8b9c9aee5ff0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma intCast_apply (n : ℤ) (x : F) : (n : F →WOT[𝕜₂] F) x = n • x := rfl

end Basic

/-!
### The topology of `E →WOT[𝕜] F`

The section endows `E →WOT[𝕜] F` with the weak operator topology and shows the basic properties
of this topology. In particular, we show that it is a topological vector space.
-/
section Topology

variable [IsTopologicalAddGroup F] [ContinuousConstSMul 𝕜₂ F]

variable (σ E F) in
/-- The function that induces the topology on `E →WOT[𝕜] F`, namely the function that takes
an `A` and maps it to `fun ⟨x, y⟩ => y (A x)` in `E × F⋆ → 𝕜`, bundled as a linear map to make
it easier to prove that it is a TVS. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakOperatorTopology/Variant5d84bbf6bc693fc8192d1ed2f6fa0f48224189bc45f248468a5b5e6c600d987e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakOperatorTopology/Variant5d84bbf6bc693fc8192d1ed2f6fa0f48224189bc45f248468a5b5e6c600d987e.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08afe696b924b1e67cd23eb36e392347be564b53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
