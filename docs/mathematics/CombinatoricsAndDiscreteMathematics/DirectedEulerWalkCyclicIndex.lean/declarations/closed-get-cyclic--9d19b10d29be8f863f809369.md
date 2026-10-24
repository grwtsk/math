# closed_get_cyclic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53403566-1ee8-2873-d89d-f0f91be5454d",
  "kind": "theorem",
  "lexical_name": "closed_get_cyclic",
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
  "slug": "closed-get-cyclic--9d19b10d29be8f863f809369",
  "source": {
    "blob": "a33c4d66b54a94b9c86c16b4e93b3bcbe7abe301",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 75,
    "path": "GRWTSK/Combinatorics/DirectedEulerWalkCyclicIndex.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d19b10d29be8f863f8093699f333f1733553a03ada00c1d98fc0333dd457298",
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

Occurrence: `result:53403566-1ee8-2873-d89d-f0f91be5454d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closed_get_cyclic (p : Walk tail head a a) (hN : 0 < p.edges.length)
    (i : Fin p.edges.length) :
    head (p.edges.get i) =
      tail (p.edges.get ⟨(i.val + 1) % p.edges.length, Nat.mod_lt _ hN⟩) := by
  by_cases hnext : i.val + 1 < p.edges.length
  · simpa only [List.get_eq_getElem, Nat.mod_eq_of_lt hnext] using
      head_getElem_succ p i.val hnext
  · have hlast : i.val + 1 = p.edges.length := by omega
    have hmod : (i.val + 1) % p.edges.length = 0 := by rw [hlast, Nat.mod_self]
    calc
      head (p.edges.get i) = a := head_getElem_last p i.val i.isLt hlast
      _ = tail (p.edges.get ⟨(i.val + 1) % p.edges.length, Nat.mod_lt _ hN⟩) := by
        simpa only [List.get_eq_getElem, hmod] using (tail_getElem_zero p hN).symm

end GRWTSK.Combinatorics.DirectedEulerSplicing.Walk
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedEulerWalkCyclicIndex.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedEulerWalkCyclicIndex.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a33c4d66b54a94b9c86c16b4e93b3bcbe7abe301` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
