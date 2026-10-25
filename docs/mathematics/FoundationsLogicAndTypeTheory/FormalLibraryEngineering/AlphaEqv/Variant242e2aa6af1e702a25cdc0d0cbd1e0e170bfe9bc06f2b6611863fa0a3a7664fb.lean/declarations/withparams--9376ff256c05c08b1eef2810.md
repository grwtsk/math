# withParams

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e67a90a2730538045a27505155c21e806dec326d2f8fc2fe5d3e8a4bb86e8f96",
  "kind": "def",
  "lexical_name": "withParams",
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
  "slug": "withparams--9376ff256c05c08b1eef2810",
  "source": {
    "blob": "b6c0807de48236df67043146f1edda8541dda912",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaEqv/Variant242e2aa6af1e702a25cdc0d0cbd1e0e170bfe9bc06f2b6611863fa0a3a7664fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9376ff256c05c08b1eef2810754ba0154c109148ccd20999ab2fcbe2c6dcf418",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaEqv/Variant242e2aa6af1e702a25cdc0d0cbd1e0e170bfe9bc06f2b6611863fa0a3a7664fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e67a90a2730538045a27505155c21e806dec326d2f8fc2fe5d3e8a4bb86e8f96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def withParams (params₁ params₂ : Array (Param pu)) (x : EqvM Bool) : EqvM Bool := do
  if h : params₂.size = params₁.size then
    let rec @[specialize] go (i : Nat) : EqvM Bool := do
      if h : i < params₁.size then
        let p₁ := params₁[i]
        have : i < params₂.size := by simp_all +arith
        let p₂ := params₂[i]
        unless (← eqvType p₁.type p₂.type) do return false
        withFVar p₁.fvarId p₂.fvarId do
          go (i+1)
      else
        x
      termination_by params₁.size - i
    go 0
  else
    return false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaEqv/Variant242e2aa6af1e702a25cdc0d0cbd1e0e170bfe9bc06f2b6611863fa0a3a7664fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaEqv/Variant242e2aa6af1e702a25cdc0d0cbd1e0e170bfe9bc06f2b6611863fa0a3a7664fb.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6c0807de48236df67043146f1edda8541dda912` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
