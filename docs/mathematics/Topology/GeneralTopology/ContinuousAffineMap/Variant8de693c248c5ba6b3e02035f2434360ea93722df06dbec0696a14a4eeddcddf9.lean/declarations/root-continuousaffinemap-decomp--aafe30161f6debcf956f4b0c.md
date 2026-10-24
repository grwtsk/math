# _root_.ContinuousAffineMap.decomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e59c21e9dd9c79a6fb746d0cfe6bfb9498a9f9ea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 469,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8de693c248c5ba6b3e02035f2434360ea93722df06dbec0696a14a4eeddcddf9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61517d48-6a27-57b9-cb56-1cac11ab2a01",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a572d443-d0fc-17d1-8e1e-ba09f49d3c6f",
  "kind": "theorem",
  "lexical_name": "_root_.ContinuousAffineMap.decomp",
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
  "slug": "root-continuousaffinemap-decomp--aafe30161f6debcf956f4b0c",
  "source": {
    "blob": "e59c21e9dd9c79a6fb746d0cfe6bfb9498a9f9ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 469,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousAffineMap/Variant8de693c248c5ba6b3e02035f2434360ea93722df06dbec0696a14a4eeddcddf9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aafe30161f6debcf956f4b0c083860e722787c260410921d9d05fd2dae60f500",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousAffineMap/Variant8de693c248c5ba6b3e02035f2434360ea93722df06dbec0696a14a4eeddcddf9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a572d443-d0fc-17d1-8e1e-ba09f49d3c6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 469–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.ContinuousAffineMap.decomp (f : V →ᴬ[R] W) :
    (f : V → W) = f.contLinear + Function.const V (f 0) := by
  rcases f with ⟨f, h⟩
  rw [ContinuousAffineMap.coe_mk_contLinear_eq_linear, ContinuousAffineMap.coe_mk, f.decomp,
    Pi.add_apply, LinearMap.map_zero, zero_add, ← Function.const_def]

end ContinuousLinearMap

namespace ContinuousAffineMap

variable (R S V : Type*) {W : Type*} (Q : Type*) [Ring S] [Ring R]
variable [AddCommGroup V] [Module R V] [TopologicalSpace V] [IsTopologicalAddGroup V]
variable [AddCommGroup W] [Module R W] [TopologicalSpace W]
variable [Module S W] [SMulCommClass R S W] [ContinuousConstSMul S W]
variable [AddTorsor W Q] [TopologicalSpace Q]

section

variable [IsTopologicalAddTorsor Q]

/-- The space of continuous affine maps from a topological vector space to a topological affine
space is in bijection with the product of the codomain with the space of linear maps, by taking the
value of the affine map at `(0 : V)` and the linear part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousAffineMap/Variant8de693c248c5ba6b3e02035f2434360ea93722df06dbec0696a14a4eeddcddf9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousAffineMap/Variant8de693c248c5ba6b3e02035f2434360ea93722df06dbec0696a14a4eeddcddf9.lean#L469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e59c21e9dd9c79a6fb746d0cfe6bfb9498a9f9ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
