# proveOnModCases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b7b8ff8af4d25f86ef5f07f2d10bc372333ab6e5504dc46fd20f748c29d3b2a",
  "kind": "def",
  "lexical_name": "proveOnModCases",
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
  "slug": "proveonmodcases--5a7ba51d0e976c0f7feda85c",
  "source": {
    "blob": "687d2353177dfb3bfa237dd6a96b73e16536c4f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModCases/Variant3a57af5457862ab770aa059769844bf886d751d79f4b982d59a912493406ebee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a7ba51d0e976c0f7feda85cf367155094dd4a0ec6a40844844558aea4480546",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModCases/Variant3a57af5457862ab770aa059769844bf886d751d79f4b982d59a912493406ebee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b7b8ff8af4d25f86ef5f07f2d10bc372333ab6e5504dc46fd20f748c29d3b2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta partial def proveOnModCases {u : Level} (n : Q(ℕ)) (a : Q(ℕ)) (b : Q(ℕ)) (p : Q(Sort u)) :
    MetaM (Q(OnModCases $n $a $b $p) × List MVarId) := do
  if n.natLit! ≤ b.natLit! then
    have : $b =Q $n := ⟨⟩
    pure (q(onModCases_stop $p $n $a), [])
  else
    let ty := q($a ≡ $b [MOD $n] → $p)
    let g ← mkFreshExprMVarQ ty
    let ((pr : Q(OnModCases $n $a (Nat.add $b 1) $p)), acc) ←
      proveOnModCases n a (mkRawNatLit (b.natLit! + 1)) p
    pure (q(onModCases_succ $b $g $pr), g.mvarId! :: acc)

/--
Nat case of `mod_cases h : e % n`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModCases/Variant3a57af5457862ab770aa059769844bf886d751d79f4b982d59a912493406ebee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModCases/Variant3a57af5457862ab770aa059769844bf886d751d79f4b982d59a912493406ebee.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `687d2353177dfb3bfa237dd6a96b73e16536c4f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
