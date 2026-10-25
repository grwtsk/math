# canUnfoldAtMatcher

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54f93a5de3bf7e4c4fada0d3015e8b7d5ed3ae4c90712f0cc5945779d2278922",
  "kind": "def",
  "lexical_name": "canUnfoldAtMatcher",
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
  "slug": "canunfoldatmatcher--47ec705a69d5403c7dad80e9",
  "source": {
    "blob": "768e0c93dea2a79dd5ab505c68bbcac736238c91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 506,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47ec705a69d5403c7dad80e9adbf876f111b9f3772d88151bff4aadb0e17f6c5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54f93a5de3bf7e4c4fada0d3015e8b7d5ed3ae4c90712f0cc5945779d2278922`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 506–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canUnfoldAtMatcher (cfg : Config) (info : ConstantInfo) : CoreM Bool := do
  if (← canUnfoldDefault cfg info) then
    return true
  /- Beyond what the normal transparency allows, we additionally unfold
     certain definitions to expose constructors in match discriminants. -/
  if hasMatchPatternAttribute (← getEnv) info.name then
    return true
  return info.name == ``OfNat.ofNat -- needed to reduce numeric literals in match discriminants
   || info.name == ``NatCast.natCast -- needed for `↑m` in match discriminants (pervasive in Int proofs)
   || info.name == ``Zero.zero || info.name == ``One.one -- needed for `0`/`1` in match discriminants
   || info.name == ``decEq
   || info.name == ``Nat.decEq
   || info.name == ``Char.ofNat   || info.name == ``Char.ofNatAux
   || info.name == ``String.decEq || info.name == ``List.hasDecEq
   || info.name == ``Fin.ofNat -- needed for Fin literal reduction in match discriminants
   || info.name == ``UInt8.ofNat  || info.name == ``UInt8.decEq
   || info.name == ``UInt16.ofNat || info.name == ``UInt16.decEq
   || info.name == ``UInt32.ofNat || info.name == ``UInt32.decEq
   || info.name == ``UInt64.ofNat || info.name == ``UInt64.decEq
   /- `Fin.ofNat` reduces to `⟨a % n, _⟩`, so we also need to unfold `%` (i.e., `HMod.hMod`
      and `Mod.mod`) to expose the `Fin.mk` constructor in match discriminants. -/
   || info.name == ``HMod.hMod || info.name == ``Mod.mod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean#L506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `768e0c93dea2a79dd5ab505c68bbcac736238c91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
