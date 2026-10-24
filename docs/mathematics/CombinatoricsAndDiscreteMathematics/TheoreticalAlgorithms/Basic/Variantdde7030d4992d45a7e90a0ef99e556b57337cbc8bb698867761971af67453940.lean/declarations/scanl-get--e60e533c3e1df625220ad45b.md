# scanl_get

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec93f989-a8fb-b218-04d8-0ce677a2236f",
  "kind": "theorem",
  "lexical_name": "scanl_get",
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
  "slug": "scanl-get--e60e533c3e1df625220ad45b",
  "source": {
    "blob": "8b904b7db3550aac26841cc7b5f9e566a98a0bbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 370,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdde7030d4992d45a7e90a0ef99e556b57337cbc8bb698867761971af67453940.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e60e533c3e1df625220ad45beb37cfdf6f2db973e62994a360ea5a1d019b9a8c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdde7030d4992d45a7e90a0ef99e556b57337cbc8bb698867761971af67453940.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec93f989-a8fb-b218-04d8-0ce677a2236f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scanl_get (i : Fin n) :
    (scanl f b v).get i.succ = f ((scanl f b v).get (Fin.castSucc i)) (v.get i) := by
  rcases n with - | n
  · exact i.elim0
  induction n generalizing b with
  | zero =>
    have i0 : i = 0 := Fin.eq_zero _
    simp [scanl_singleton, i0, get_zero]; simp [get_eq_get_toList]
  | succ n hn =>
    rw [← cons_head_tail v, scanl_cons, get_cons_succ]
    refine Fin.cases ?_ ?_ i
    · simp
    · intro i'
      simp only [hn, Fin.castSucc_succ, get_cons_succ]

end Scan

/-- Monadic analog of `Vector.ofFn`.
Given a monadic function on `Fin n`, return a `Vector α n` inside the monad. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdde7030d4992d45a7e90a0ef99e556b57337cbc8bb698867761971af67453940.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdde7030d4992d45a7e90a0ef99e556b57337cbc8bb698867761971af67453940.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b904b7db3550aac26841cc7b5f9e566a98a0bbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
