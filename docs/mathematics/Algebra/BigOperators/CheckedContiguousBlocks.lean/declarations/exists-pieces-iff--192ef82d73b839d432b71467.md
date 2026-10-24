# exists_pieces_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97e4db0c-77fb-c769-77fb-505bdb74d3d2",
  "kind": "theorem",
  "lexical_name": "exists_pieces_iff",
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
  "slug": "exists-pieces-iff--192ef82d73b839d432b71467",
  "source": {
    "blob": "c80255057572b900ca12d55a3b42d8162c217e1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 177,
    "path": "GRWTSK/Algebra/BigOperators/CheckedContiguousBlocks.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:192ef82d73b839d432b71467dabad6207b4474a932f761c2d2e9a1d792972e64",
  "verification": {
    "reference": "docs/verification/Algebra/BigOperators/CheckedContiguousBlocks.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97e4db0c-77fb-c769-77fb-505bdb74d3d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_pieces_iff (test : ℕ → Bool) (term : ℕ → ℤ)
    (start : ℕ) (widths : List ℕ) (k : ℤ) :
    (∃ claims, Pieces test term start widths claims ∧ claims.sum = k) ↔
      allRange test start widths.sum = true ∧ sumRange term start widths.sum = k := by
  constructor
  · rintro ⟨claims,hp,hk⟩
    have hv := (verify_iff_pieces _ _ _ _ _).mpr hp
    have hs := verify_sound hv
    exact ⟨hs.2.1,hs.2.2.trans hk⟩
  · rintro ⟨hall,hsum⟩
    refine ⟨totals term start widths, ?_, ?_⟩
    · apply (verify_iff_pieces _ _ _ _ _).mp
      simpa only [verify_totals] using hall
    · exact (totals_sum term start widths).trans hsum

end GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BigOperators/CheckedContiguousBlocks.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BigOperators/CheckedContiguousBlocks.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c80255057572b900ca12d55a3b42d8162c217e1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
