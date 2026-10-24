# rootsGenerate_of_isSplittingField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aaee523fe00cebe5ac69961b79c41be49d74e921",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/Algebra/QuarticSplittingFaithfulness.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa6d6fac-42a1-7702-873e-554a3ac2f00e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c50f6304-7762-dcd6-7226-d29c632dd106",
  "kind": "theorem",
  "lexical_name": "rootsGenerate_of_isSplittingField",
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
  "slug": "rootsgenerate-of-issplittingfield--97c2100241fe24f008a210f9",
  "source": {
    "blob": "aaee523fe00cebe5ac69961b79c41be49d74e921",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 28,
    "path": "GRWTSK/Algebra/QuarticSplittingFaithfulness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97c2100241fe24f008a210f9a23e12c1a2d86c80ed2e64c7072f187bdf59e54d",
  "verification": {
    "reference": "docs/verification/Algebra/QuarticSplittingFaithfulness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c50f6304-7762-dcd6-7226-d29c632dd106`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rootsGenerate_of_isSplittingField
    (p : K[X]) [IsSplittingField K L p]
    (e : QuarticRootEnumeration (L := L) p) (hne : p ≠ 0) :
    RootsGenerate p e := by
  unfold RootsGenerate
  have hrange : p.rootSet L = Set.range e.r := by
    ext x
    rw [← rootLocus_eq_range_of_enumeration p e hne]
    rfl
  rw [← hrange]
  exact IsSplittingField.adjoin_rootSet L p

/-- For a separable quartic of exact degree four in its splitting field,
the root permutation representation is faithful. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/QuarticSplittingFaithfulness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuarticSplittingFaithfulness.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaee523fe00cebe5ac69961b79c41be49d74e921` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
