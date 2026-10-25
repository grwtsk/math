# mkFixOfMonFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67641a60872f20e2f0e37fbd229a4ba96c486ec06cd569eaf9fcf17afd897d61",
  "kind": "def",
  "lexical_name": "mkFixOfMonFun",
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
  "slug": "mkfixofmonfun--2f425ebd64c0f3c333014153",
  "source": {
    "blob": "4c20c8fb86e2943b9073bdbde4ad85bfade336a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant29c5a8cf645ff2cfba3bfe1398e1a428772929009c6caae2fa61a586087ac7ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f425ebd64c0f3c3330141532748e5f79a2ac13e3ecc8ba655c4cff1ece3d496",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant29c5a8cf645ff2cfba3bfe1398e1a428772929009c6caae2fa61a586087ac7ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67641a60872f20e2f0e37fbd229a4ba96c486ec06cd569eaf9fcf17afd897d61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkFixOfMonFun (packedType : Expr) (packedInst : Expr) (hmono : Expr) : MetaM Expr := do
  if (←inferType packedInst).isAppOf ``CCPO then
    mkAppOptM ``fix #[packedType, packedInst, none, hmono]
  else if (←inferType packedInst).isAppOf ``CompleteLattice then
    mkAppOptM ``lfp_monotone #[packedType, packedInst, none, hmono]
  else
    throwError "mkFixOfMonFun: unexpected type of {packedInst}"

/--
Given `packedInst : CCPO α `, returns an underlying instance of the type
`PartialOrder α`. Can handle `CompleteLattice` as well.
Takes an optional argument with the type `α`. If the optional argument is `none`,
it is treated implicitly.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant29c5a8cf645ff2cfba3bfe1398e1a428772929009c6caae2fa61a586087ac7ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant29c5a8cf645ff2cfba3bfe1398e1a428772929009c6caae2fa61a586087ac7ba.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c20c8fb86e2943b9073bdbde4ad85bfade336a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
