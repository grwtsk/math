# head_getElem_last

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f4073cf-6d14-f9a6-3b2f-589a039dc292",
  "kind": "theorem",
  "lexical_name": "head_getElem_last",
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
  "slug": "head-getelem-last--a58ea7f479d0d9479561d586",
  "source": {
    "blob": "a33c4d66b54a94b9c86c16b4e93b3bcbe7abe301",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 32,
    "path": "GRWTSK/Combinatorics/DirectedEulerWalkCyclicIndex.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a58ea7f479d0d9479561d586a8531d77174ea12e76f15caa39411b1c2a067d9a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedEulerWalkCyclicIndex.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f4073cf-6d14-f9a6-3b2f-589a039dc292`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem head_getElem_last (p : Walk tail head a b) (i : ℕ)
    (hi : i < p.edges.length) (hlast : i + 1 = p.edges.length) :
    head (p.edges[i]'hi) = b := by
  induction p generalizing i with
  | nil => simp only [edges_nil, List.length_nil, Nat.not_lt_zero] at hi
  | cons e rest ih =>
      cases i with
      | zero =>
          have hlen : rest.edges.length = 0 := by
            simp only [edges_cons, List.length_cons] at hlast
            omega
          exact endpoints_eq_of_length_zero rest hlen
      | succ i =>
          have hi' : i < rest.edges.length := by
            simp only [edges_cons, List.length_cons] at hi
            omega
          have hlast' : i + 1 = rest.edges.length := by
            simp only [edges_cons, List.length_cons] at hlast
            omega
          simpa only [edges_cons, List.getElem_cons_succ] using ih i hi' hlast'

/-- Every two consecutive traversed edge IDs have exact matching endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedEulerWalkCyclicIndex.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedEulerWalkCyclicIndex.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a33c4d66b54a94b9c86c16b4e93b3bcbe7abe301` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
