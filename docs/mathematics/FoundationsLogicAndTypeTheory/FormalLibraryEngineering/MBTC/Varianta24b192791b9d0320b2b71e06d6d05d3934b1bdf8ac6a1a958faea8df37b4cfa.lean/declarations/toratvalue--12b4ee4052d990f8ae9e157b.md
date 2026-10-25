# toRatValue?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1bae5f558763e8a50bcf1da2ad8c2d9074d22e28af534d9a08ebd26701125497",
  "kind": "def",
  "lexical_name": "toRatValue?",
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
  "slug": "toratvalue--12b4ee4052d990f8ae9e157b",
  "source": {
    "blob": "a93c96a8a45b6950eb6061e50505a3209481804b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianta24b192791b9d0320b2b71e06d6d05d3934b1bdf8ac6a1a958faea8df37b4cfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12b4ee4052d990f8ae9e157b12f12bb3d1479405c036ec179505f9cd3df81920",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianta24b192791b9d0320b2b71e06d6d05d3934b1bdf8ac6a1a958faea8df37b4cfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1bae5f558763e8a50bcf1da2ad8c2d9074d22e28af534d9a08ebd26701125497`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def toRatValue? (a : Expr) : Option Rat :=
  if a.isAppOfArity ``Zero.zero 2 then
    some 0
  else if a.isAppOfArity ``One.one 2 then
    some 1
  else if a.isAppOfArity ``OfNat.ofNat 3 then
    toRatValue? (a.getArg! 1)
  else if a.isAppOfArity ``Neg.neg 3 then
    (- ·) <$> toRatValue? a.appArg!
  else if a.isAppOfArity ``HDiv.hDiv 6 then
    (· / ·) <$> toRatValue? a.appFn!.appArg! <*> toRatValue? a.appArg!
  else if let .lit (.natVal n) := a then
    some (mkRat n 1)
  else
    none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianta24b192791b9d0320b2b71e06d6d05d3934b1bdf8ac6a1a958faea8df37b4cfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianta24b192791b9d0320b2b71e06d6d05d3934b1bdf8ac6a1a958faea8df37b4cfa.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a93c96a8a45b6950eb6061e50505a3209481804b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
