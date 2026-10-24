# mapped_resolvent_isRoot_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "37f2b2199747fb6435f853cfe49f8fff8691c13a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/Algebra/QuarticBaseResolventRootSet.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b98fe185-eee1-a953-0d97-c0fb92a159c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b58d4c23-07a7-7cec-0a02-9b56dd347cd2",
  "kind": "theorem",
  "lexical_name": "mapped_resolvent_isRoot_iff",
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
  "slug": "mapped-resolvent-isroot-iff--0da63e88fdc4f2d5003a658d",
  "source": {
    "blob": "37f2b2199747fb6435f853cfe49f8fff8691c13a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 31,
    "path": "GRWTSK/Algebra/QuarticBaseResolventRootSet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0da63e88fdc4f2d5003a658d50c60b0135d1f843b2a410c1b65e65074c654403",
  "verification": {
    "reference": "docs/verification/Algebra/QuarticBaseResolventRootSet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b58d4c23-07a7-7cec-0a02-9b56dd347cd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapped_resolvent_isRoot_iff
    (p : K[X]) (A B C₀ D : K)
    (hp : p = X ^ 4 + C A * X ^ 3 + C B * X ^ 2 +
      C C₀ * X + C D)
    (hs : (p.map (algebraMap K L)).Splits)
    (hm : (p.map (algebraMap K L)).Monic)
    (e : QuarticRootEnumeration (L := L) p) (x : L) :
    ((baseAdjacencyResolvent A B C₀ D).map (algebraMap K L)).IsRoot x ↔
      x = adjacencyOne (e.r 0) (e.r 1) (e.r 2) (e.r 3) ∨
      x = adjacencyTwo (e.r 0) (e.r 1) (e.r 2) (e.r 3) ∨
      x = adjacencyThree (e.r 0) (e.r 1) (e.r 2) (e.r 3) := by
  rw [← actual_quartic_base_resolvent p A B C₀ D hp hs hm e]
  simp [adjacencyResolventFromRoots, Polynomial.IsRoot.def,
    Polynomial.eval_mul, Polynomial.eval_sub,
    Polynomial.eval_X, Polynomial.eval_C, mul_eq_zero, sub_eq_zero]

/-- The actual root locus of the cubic equals the range of the
three matching-indexed adjacency values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/QuarticBaseResolventRootSet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuarticBaseResolventRootSet.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37f2b2199747fb6435f853cfe49f8fff8691c13a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
