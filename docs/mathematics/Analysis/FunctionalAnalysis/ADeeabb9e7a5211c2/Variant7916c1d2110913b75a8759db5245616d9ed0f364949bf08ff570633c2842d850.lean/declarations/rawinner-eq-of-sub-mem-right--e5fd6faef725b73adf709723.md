# rawInner_eq_of_sub_mem_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69726801-4e0b-04bb-7049-a1c0ad3d3f1d",
  "kind": "theorem",
  "lexical_name": "rawInner_eq_of_sub_mem_right",
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
  "slug": "rawinner-eq-of-sub-mem-right--e5fd6faef725b73adf709723",
  "source": {
    "blob": "20842f05872baa1a06233e2018d86b424d1cbb4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 28,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ADeeabb9e7a5211c2/Variant7916c1d2110913b75a8759db5245616d9ed0f364949bf08ff570633c2842d850.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5fd6faef725b73adf7097230eca77958b8ea90f1da8095770b5b079f9af8cbe",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ADeeabb9e7a5211c2/Variant7916c1d2110913b75a8759db5245616d9ed0f364949bf08ff570633c2842d850.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69726801-4e0b-04bb-7049-a1c0ad3d3f1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawInner_eq_of_sub_mem_right
    (f : Raw kernel)
    {g g' : Raw kernel}
    (differenceNull : g - g' ∈ kernelNullSubmodule kernel) :
    Raw.inner kernel f g = Raw.inner kernel f g' := by
  have zero := null_orthogonal_all kernel differenceNull f
  have rightZero : Raw.inner kernel f (g - g') = 0 := by
    rw [Raw.inner_conj_symm, zero]
    simp
  have expanded := Raw.add_right kernel f (g - g') g'
  rw [sub_add_cancel] at expanded
  rw [rightZero, zero_add] at expanded
  exact expanded

end Mathematics.Hilbert
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ADeeabb9e7a5211c2/Variant7916c1d2110913b75a8759db5245616d9ed0f364949bf08ff570633c2842d850.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ADeeabb9e7a5211c2/Variant7916c1d2110913b75a8759db5245616d9ed0f364949bf08ff570633c2842d850.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20842f05872baa1a06233e2018d86b424d1cbb4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
