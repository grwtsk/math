# exists_claims_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f020fb1-352c-0a3b-661d-3e50d241f23e",
  "kind": "theorem",
  "lexical_name": "exists_claims_iff",
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
  "slug": "exists-claims-iff--d02d406c83d0e16b62212a75",
  "source": {
    "blob": "ea22d25c3257ff2fa390d0ccb8a896acb552891d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 112,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/JetContourBlocks.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d02d406c83d0e16b62212a758f1247697b79e1aad20e3db0e98e1353bbb38caf",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/JetContourBlocks.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f020fb1-352c-0a3b-661d-3e50d241f23e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_claims_iff {n cap : ℕ} {widths : List ℕ}
    (hp : partition n cap widths = true) (v : List Coordinates) (p : List Plan)
    (y : List Coordinates) (k : ℤ) :
    (∃ claims, evaluate n cap widths claims v p y = some k) ↔
      JetPoleContour.evaluate n v p y = some k := by
  constructor
  · rintro ⟨claims,h⟩; exact evaluate_refines h
  · intro h
    obtain ⟨hh,hall,hs⟩ := (old_evaluate_iff _ _ _ _ _).mp h
    have hw := ((partition_iff _ _ _).mp hp).2.2.2.1
    refine ⟨totals (term y) 0 widths, (evaluate_iff _ _ _ _ _ _ _ _).mpr ?_⟩
    refine ⟨hh,hp,?_,?_⟩
    · simpa only [verify_totals,hw] using hall
    · simpa only [totals_sum,hw] using hs

/-- Same rectangle and mesh; only the finite reduction can be factored into blocks. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/JetContourBlocks.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/JetContourBlocks.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea22d25c3257ff2fa390d0ccb8a896acb552891d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
