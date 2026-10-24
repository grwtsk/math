# walk_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ccf4af2-6868-0aae-6020-d7a0267d2e9a",
  "kind": "theorem",
  "lexical_name": "walk_sound",
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
  "slug": "walk-sound--68754b48a7571bbb7cd2fd03",
  "source": {
    "blob": "293d2264461e3ae00dca296533143ad4e2cafb4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 116,
    "path": "GRWTSK/Analysis/ErrorBounds/IntegerSquareWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68754b48a7571bbb7cd2fd03048b8d9af6a39a487676fce430d25ad4840aff5a",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/IntegerSquareWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ccf4af2-6868-0aae-6020-d7a0267d2e9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem walk_sound {bits n : ℕ} {x out : State} {rows : List State}
    (h : walk bits n x rows = some out) :
    run (fun _ z => step bits z) 0 n x = out := by
  induction n generalizing x rows with
  | zero =>
      cases rows with
      | nil => simpa only [walk, run, Option.some.injEq] using h
      | cons y ys => simp [walk] at h
  | succ n ih =>
      cases rows with
      | nil => simp [walk] at h
      | cons y ys =>
          by_cases hc : checkStep bits x y = true
          · have ht : walk bits n y ys = some out := by simpa [walk, hc] using h
            have hy := (checkStep_iff bits x y).mp hc
            calc
              _ = run (fun _ z => step bits z) 0 n y := by rw [run, ← hy, run_cursor]
              _ = out := ih ht
          · simp [walk, hc] at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/IntegerSquareWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/IntegerSquareWitness.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `293d2264461e3ae00dca296533143ad4e2cafb4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
