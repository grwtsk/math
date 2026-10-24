# exists_closed_maximal_trail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63af7ef2-31d6-00d3-4d15-911552c9b1c8",
  "kind": "theorem",
  "lexical_name": "exists_closed_maximal_trail",
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
  "slug": "exists-closed-maximal-trail--41a0805486026f52bf53e58f",
  "source": {
    "blob": "543d37710bf64b49198ea721df1480136c4d8aa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 64,
    "path": "GRWTSK/Combinatorics/DirectedEulerMaximalTrail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41a0805486026f52bf53e58f9e698ab34441d15502a6e56a94fa37a7aa523642",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedEulerMaximalTrail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63af7ef2-31d6-00d3-4d15-911552c9b1c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_closed_maximal_trail [DecidableEq V]
    (available : Finset E) (a : V)
    (hbalance : ∀ x : V,
      (available.val.map tail).count x = (available.val.map head).count x) :
    ∃ p : Walk tail head a a,
      p.edges.Nodup ∧
      (∀ e ∈ p.edges, e ∈ available) ∧
      ∀ e ∈ available, tail e = a → e ∈ p.edges := by
  classical
  obtain ⟨b, p, hnodup, hallowed, hstop⟩ :=
    exists_maximal_trail (tail := tail) (head := head) available a
  have hle : (p.edges : Multiset E) ≤ available.val :=
    (Multiset.le_iff_subset (Multiset.coe_nodup.mpr hnodup)).mpr
      (fun e he => hallowed e he)
  let remaining : Multiset E := available.val - (p.edges : Multiset E)
  have hpartition : available.val = (p.edges : Multiset E) + remaining := by
    dsimp only [remaining]
    rw [add_comm]
    exact (Multiset.sub_add_cancel hle).symm
  have hterminal : (remaining.map tail).count b = 0 := by
    apply Multiset.count_eq_zero.mpr
    intro hb
    obtain ⟨e, he, ht⟩ := Multiset.mem_map.mp hb
    have heparts := (Multiset.mem_sub_of_nodup available.nodup).mp he
    exact heparts.2 (hstop e heparts.1 ht)
  have hab : a = b := terminal_eq_start_of_no_residual_outgoing
    p available.val remaining hpartition hbalance hterminal
  subst b
  exact ⟨p, hnodup, hallowed, hstop⟩

/-- A balanced finite edge supply with an outgoing edge at `a` contains a
nonempty closed edge-simple trail at `a`. This is genuine existence, with no
assumed trail, loop, maximality field, or connectivity premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedEulerMaximalTrail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedEulerMaximalTrail.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `543d37710bf64b49198ea721df1480136c4d8aa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
