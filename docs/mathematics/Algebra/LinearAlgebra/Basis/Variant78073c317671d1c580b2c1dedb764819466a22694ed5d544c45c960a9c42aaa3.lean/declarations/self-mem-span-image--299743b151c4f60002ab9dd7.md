# self_mem_span_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0002ce74f4a1e6a4ba22eba807f02735c3fc5283",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/78073c317671d1c580b2c1dedb764819466a22694ed5d544c45c960a9c42aaa3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:637a1294-da83-d2dd-fa6a-8d9ce24de406",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7cbad706-e88f-9490-6878-d39be4579919",
  "kind": "theorem",
  "lexical_name": "self_mem_span_image",
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
  "slug": "self-mem-span-image--299743b151c4f60002ab9dd7",
  "source": {
    "blob": "0002ce74f4a1e6a4ba22eba807f02735c3fc5283",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 201,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant78073c317671d1c580b2c1dedb764819466a22694ed5d544c45c960a9c42aaa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:299743b151c4f60002ab9dd733c432f9affd0698433f0d1f9e86ae40aca6b092",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant78073c317671d1c580b2c1dedb764819466a22694ed5d544c45c960a9c42aaa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cbad706-e88f-9490-6878-d39be4579919`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem self_mem_span_image [Nontrivial R] {i : ι} {s : Set ι} :
    b i ∈ span R (b '' s) ↔ i ∈ s := by
  simp [mem_span_image, Finsupp.support_single_ne_zero]

end repr

section Coord

/-- `b.coord i` is the linear function giving the `i`'th coordinate of a vector
with respect to the basis `b`.

`b.coord i` is an element of the dual space. In particular, for
finite-dimensional spaces it is the `ι`th basis vector of the dual space.
-/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant78073c317671d1c580b2c1dedb764819466a22694ed5d544c45c960a9c42aaa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant78073c317671d1c580b2c1dedb764819466a22694ed5d544c45c960a9c42aaa3.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0002ce74f4a1e6a4ba22eba807f02735c3fc5283` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
