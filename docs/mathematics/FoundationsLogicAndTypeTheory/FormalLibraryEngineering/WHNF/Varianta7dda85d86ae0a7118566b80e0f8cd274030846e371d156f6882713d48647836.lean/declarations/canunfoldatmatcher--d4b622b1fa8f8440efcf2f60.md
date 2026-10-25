# canUnfoldAtMatcher

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d560249108efccaa1daf6ff8a9db895455ea30e31d1de7f526edbad71e1194f5",
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
  "slug": "canunfoldatmatcher--d4b622b1fa8f8440efcf2f60",
  "source": {
    "blob": "f31a765ed75b6fbe3ae881a93afdf3152f18a53f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 498,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4b622b1fa8f8440efcf2f60c225f70361f5c11c427cccea692419dcca046198",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d560249108efccaa1daf6ff8a9db895455ea30e31d1de7f526edbad71e1194f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–520.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f31a765ed75b6fbe3ae881a93afdf3152f18a53f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
