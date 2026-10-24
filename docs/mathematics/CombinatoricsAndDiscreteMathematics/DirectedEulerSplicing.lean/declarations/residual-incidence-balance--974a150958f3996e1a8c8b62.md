# residual_incidence_balance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f508eb81-9947-b0e4-c04c-8570bcb54b49",
  "kind": "theorem",
  "lexical_name": "residual_incidence_balance",
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
  "slug": "residual-incidence-balance--974a150958f3996e1a8c8b62",
  "source": {
    "blob": "e4e189af2f8c7cd3ac4ae02c0ac6d1e6de3852bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 154,
    "path": "GRWTSK/Combinatorics/DirectedEulerSplicing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:974a150958f3996e1a8c8b62f8afe3978d215981a4070a169ee28b1abb60f567",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f508eb81-9947-b0e4-c04c-8570bcb54b49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_incidence_balance [DecidableEq V]
    (p : Walk tail head a a) (all remaining : Multiset E)
    (hpartition : all = (p.edges : Multiset E) + remaining)
    (hbalance : ∀ x : V, (all.map tail).count x = (all.map head).count x) :
    ∀ x : V, (remaining.map tail).count x = (remaining.map head).count x := by
  intro x
  have htotal := hbalance x
  simp only [hpartition, Multiset.map_add, Multiset.count_add] at htotal
  have hused : ((p.edges : Multiset E).map tail).count x =
      ((p.edges : Multiset E).map head).count x := by
    simpa only [Multiset.map_coe, Multiset.coe_count] using closed_incidence_balance p x
  rw [hused] at htotal
  exact Nat.add_left_cancel htotal

/-- A walk in a balanced edge supply cannot be stuck at a different endpoint:
if no residual edge leaves its terminal vertex, that vertex is its start.
The edge partition is exact; no maximality or Euler existence is assumed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedEulerSplicing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedEulerSplicing.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4e189af2f8c7cd3ac4ae02c0ac6d1e6de3852bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
