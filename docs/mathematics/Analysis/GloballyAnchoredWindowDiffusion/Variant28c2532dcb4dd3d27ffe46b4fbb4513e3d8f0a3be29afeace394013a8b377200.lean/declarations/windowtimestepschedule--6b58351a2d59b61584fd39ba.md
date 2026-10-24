# WindowTimestepSchedule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38cce617334e66640f02b71c17aa1dfa039e2e7d10771b34c42f858969384895",
  "kind": "structure",
  "lexical_name": "WindowTimestepSchedule",
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
  "slug": "windowtimestepschedule--6b58351a2d59b61584fd39ba",
  "source": {
    "blob": "d637a1d37deb6062ae114c55c2a4f3f5b7045301",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 329,
    "path": "GRWTSK/Analysis/GloballyAnchoredWindowDiffusion/Variant28c2532dcb4dd3d27ffe46b4fbb4513e3d8f0a3be29afeace394013a8b377200.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b58351a2d59b61584fd39bab2396a3179371c22bc7ece0d8019d2b10ce63453",
  "verification": {
    "reference": "docs/verification/Analysis/GloballyAnchoredWindowDiffusion/Variant28c2532dcb4dd3d27ffe46b4fbb4513e3d8f0a3be29afeace394013a8b377200.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38cce617334e66640f02b71c17aa1dfa039e2e7d10771b34c42f858969384895`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure WindowTimestepSchedule
    {State : Type uState}
    {G : KnownMaximalState State}
    {W : GlobalWindowSystem G}
    (fusion : AnchoredWindowFusion G W)
    (steps : Nat) where
  initialState : G.Coord → ℝ
  state : Fin (steps + 1) → G.Coord → ℝ
  order : Fin steps → Equiv.Perm W.WindowId
  state_zero : state 0 = initialState
  state_succ : ∀ t : Fin steps,
    state t.succ =
      fusion.orderedTimestep (order t) (state (Fin.castSucc t))

namespace WindowTimestepSchedule

variable {State : Type uState}
variable {G : KnownMaximalState State}
variable {W : GlobalWindowSystem G}
variable {fusion : AnchoredWindowFusion G W}
variable {steps : Nat}

/-- Every window position at timestep `t` reads the exact same prior snapshot. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/GloballyAnchoredWindowDiffusion/Variant28c2532dcb4dd3d27ffe46b4fbb4513e3d8f0a3be29afeace394013a8b377200.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/GloballyAnchoredWindowDiffusion/Variant28c2532dcb4dd3d27ffe46b4fbb4513e3d8f0a3be29afeace394013a8b377200.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d637a1d37deb6062ae114c55c2a4f3f5b7045301` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
