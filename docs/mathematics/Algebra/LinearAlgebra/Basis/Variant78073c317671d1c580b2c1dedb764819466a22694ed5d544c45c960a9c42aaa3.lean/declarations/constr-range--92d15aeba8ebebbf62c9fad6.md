# constr_range

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
      "line": 647,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/78073c317671d1c580b2c1dedb764819466a22694ed5d544c45c960a9c42aaa3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6b85e01-801a-b858-b6c1-964e5e993ea1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25e4e0a1-8b28-5d46-5cc8-4198b3be13eb",
  "kind": "theorem",
  "lexical_name": "constr_range",
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
  "slug": "constr-range--92d15aeba8ebebbf62c9fad6",
  "source": {
    "blob": "0002ce74f4a1e6a4ba22eba807f02735c3fc5283",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 654,
    "line": 647,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant78073c317671d1c580b2c1dedb764819466a22694ed5d544c45c960a9c42aaa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92d15aeba8ebebbf62c9fad6dae97a70bec06038c3bb3fef1063dedfd5f6ee57",
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

Occurrence: `result:25e4e0a1-8b28-5d46-5cc8-4198b3be13eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 647–654.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem constr_range [Nonempty ι] {f : ι → M'} :
    LinearMap.range (constr (M' := M') b S f) = span R (range f) := by
  rw [b.constr_def S f, LinearMap.range_comp, LinearMap.range_comp, LinearEquiv.range, ←
    Finsupp.supported_univ, Finsupp.lmapDomain_supported, ← Set.image_univ, ←
    Finsupp.span_image_eq_map_total, Set.image_id]
#align basis.constr_range Basis.constr_range

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant78073c317671d1c580b2c1dedb764819466a22694ed5d544c45c960a9c42aaa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant78073c317671d1c580b2c1dedb764819466a22694ed5d544c45c960a9c42aaa3.lean#L647).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0002ce74f4a1e6a4ba22eba807f02735c3fc5283` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
