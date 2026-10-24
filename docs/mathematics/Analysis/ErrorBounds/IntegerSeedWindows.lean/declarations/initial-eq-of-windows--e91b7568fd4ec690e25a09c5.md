# initial_eq_of_windows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:428c115d-7ef7-328d-e5ad-f3520fbf7bc5",
  "kind": "theorem",
  "lexical_name": "initial_eq_of_windows",
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
  "slug": "initial-eq-of-windows--e91b7568fd4ec690e25a09c5",
  "source": {
    "blob": "489b28dbe5a872d48c111fe3000c3d2566e292ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 64,
    "path": "GRWTSK/Analysis/ErrorBounds/IntegerSeedWindows.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e91b7568fd4ec690e25a09c59601da1117f12d90f9fa6c2e78aeda930c09c57c",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/IntegerSeedWindows.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:428c115d-7ef7-328d-e5ad-f3520fbf7bc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem initial_eq_of_windows {bits squarings terms : ℕ} {w : Coordinates} {x : State}
    (hr : FloorWindow bits
      (RationalExpStateFold.taylor (divNat w (2^squarings)) terms).1 x.re)
    (hi : FloorWindow bits
      (RationalExpStateFold.taylor (divNat w (2^squarings)) terms).2 x.im)
    (he : CeilWindow bits (RationalExpTrace.seedTail (magnitude w) squarings terms +
      magnitude (sub (RationalExpStateFold.taylor (divNat w (2^squarings)) terms)
        (decode bits x).mid)) x.error) :
    IntegerExpStateFold.initial bits w squarings terms = x := by
  have hv := rounded_eq_of_windows hr hi
  change State.mk _ _ _ = State.mk x.re x.im x.error
  congr 1
  · exact floor_eq_of_window hr
  · exact floor_eq_of_window hi
  · rw [hv]
    exact ceil_eq_of_window he

/-- Endpoint conventions are not interchangeable, even at exact integers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/IntegerSeedWindows.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/IntegerSeedWindows.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `489b28dbe5a872d48c111fe3000c3d2566e292ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
