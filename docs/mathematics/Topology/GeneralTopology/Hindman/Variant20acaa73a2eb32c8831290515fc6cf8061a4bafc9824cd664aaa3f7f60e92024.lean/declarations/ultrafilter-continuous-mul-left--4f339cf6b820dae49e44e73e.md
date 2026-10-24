# Ultrafilter.continuous_mul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6bb1c6db54ca2124297ce7094ea64406de55ecf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f816629-b679-9d5b-4eb6-4793db51eb4c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2397f95b-46fd-ef67-e377-4e22f48a512e",
  "kind": "theorem",
  "lexical_name": "Ultrafilter.continuous_mul_left",
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
  "slug": "ultrafilter-continuous-mul-left--4f339cf6b820dae49e44e73e",
  "source": {
    "blob": "f6bb1c6db54ca2124297ce7094ea64406de55ecf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f339cf6b820dae49e44e73e40ab2fd1daa79049f8ddc9d8dd7cfc5fda71b840",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2397f95b-46fd-ef67-e377-4e22f48a512e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ultrafilter.continuous_mul_left {M} [Semigroup M] (V : Ultrafilter M) :
    Continuous (· * V) :=
  TopologicalSpace.IsTopologicalBasis.continuous ultrafilterBasis_is_basis _ <|
    Set.forall_range_iff.mpr fun s => ultrafilter_isOpen_basic { m : M | ∀ᶠ m' in V, m * m' ∈ s }
#align ultrafilter.continuous_mul_left Ultrafilter.continuous_mul_left
#align ultrafilter.continuous_add_left Ultrafilter.continuous_add_left

namespace Hindman

-- porting note: mathport wants these names to be `fS`, `fP`, etc, but this does violence to
-- mathematical naming conventions, as does `fs`, `fp`, so we just followed `mathlib` 3 here

/-- `FS a` is the set of finite sums in `a`, i.e. `m ∈ FS a` if `m` is the sum of a nonempty
subsequence of `a`. We give a direct inductive definition instead of talking about subsequences. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6bb1c6db54ca2124297ce7094ea64406de55ecf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
