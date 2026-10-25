# bisectRootIdx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f463127f6b0cd3a194e47f8a585e383a765cb22aaf013f712334a75c22f927c4",
  "kind": "def",
  "lexical_name": "bisectRootIdx",
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
  "slug": "bisectrootidx--d2c5b26dfdb71eb55228fcdd",
  "source": {
    "blob": "ac271c4981d195cb573c0434b2ed1ef0d8bb6d3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 351,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2c5b26dfdb71eb55228fcddfdb69cc8b844c49cbacacfadcd9df0564f1df6ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f463127f6b0cd3a194e47f8a585e383a765cb22aaf013f712334a75c22f927c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def bisectRootIdx (e : Expr) (ρ : IntervalEnv) (idx : Nat)
    (maxDepth : ℕ) : BisectResult :=
  go (ρ idx) maxDepth
where
  go (J : IntervalRat) (depth : ℕ) : BisectResult :=
    let ρ' := updateIntervalEnv' ρ idx J
    -- Check if we can exclude this interval
    if excludesZero (evalInterval e ρ') then
      BisectResult.noRoot
    -- Check for sign change
    else if signChange_idx e ρ' idx then
      BisectResult.found J (maxDepth - depth)
    -- Reached max depth without determination
    else if depth = 0 then
      BisectResult.uncertain J maxDepth
    -- Bisect and search recursively
    else
      let (J₁, J₂) := J.bisect
      let r₁ := go J₁ (depth - 1)
      -- If first half found a root, return it
      match r₁ with
      | BisectResult.found I d => BisectResult.found I d
      | _ =>
        let r₂ := go J₂ (depth - 1)
        -- If second half found a root, return it
        match r₂ with
        | BisectResult.found I d => BisectResult.found I d
        -- If both are noRoot, the whole interval is noRoot
        | BisectResult.noRoot =>
          match r₁ with
          | BisectResult.noRoot => BisectResult.noRoot
          | BisectResult.uncertain I d => BisectResult.uncertain I d
          | BisectResult.found I d => BisectResult.found I d  -- unreachable
        -- Otherwise uncertain
        | BisectResult.uncertain I d =>
          match r₁ with
          | BisectResult.noRoot => BisectResult.uncertain I d
          | BisectResult.uncertain I₁ d₁ =>
            -- Return the one with smaller interval or less depth
            if I₁.width ≤ I.width then BisectResult.uncertain I₁ d₁
            else BisectResult.uncertain I d
          | BisectResult.found I d => BisectResult.found I d  -- unreachable

/-- Helper: when go returns found, signChange_idx was true for that interval -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac271c4981d195cb573c0434b2ed1ef0d8bb6d3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
