# replaceUnsafeM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0be7c873b850ceda8d583cd76cb87e6ff0893ace8d5185f693d2e2cb6d616b9f",
  "kind": "def",
  "lexical_name": "replaceUnsafeM",
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
  "slug": "replaceunsafem--b90b25077470c888ffe9d3bd",
  "source": {
    "blob": "8cc5a28fb61baf2ab3e7d6303bee52a7e9a0bfe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReplaceLevel/Variant970e963ce820110b18cc529e9e5874f57912cd93f8f1ee99e05ca875644244c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b90b25077470c888ffe9d3bd5a160f5ca2cda677e7cea05c81590b16451eddda",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReplaceLevel/Variant970e963ce820110b18cc529e9e5874f57912cd93f8f1ee99e05ca875644244c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0be7c873b850ceda8d583cd76cb87e6ff0893ace8d5185f693d2e2cb6d616b9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def replaceUnsafeM (f? : Level → Option Level) (size : USize) (e : Expr) : ReplaceM Expr := do
  let rec visit (e : Expr) := do
    let c ← get
    let h := ptrAddrUnsafe e
    let i := h % size
    if ptrAddrUnsafe (c.keys.uget i lcProof) == h then
      pure <| c.results.uget i lcProof
    else match e with
        | Expr.forallE _ d b _   => cache i e <| e.updateForallE! (← visit d) (← visit b)
        | Expr.lam _ d b _       => cache i e <| e.updateLambdaE! (← visit d) (← visit b)
        | Expr.mdata _ b         => cache i e <| e.updateMData! (← visit b)
        | Expr.letE _ t v b _    => cache i e <| e.updateLetE! (← visit t) (← visit v) (← visit b)
        | Expr.app f a           => cache i e <| e.updateApp! (← visit f) (← visit a)
        | Expr.proj _ _ b        => cache i e <| e.updateProj! (← visit b)
        | Expr.sort u            => cache i e <| e.updateSort! (u.replace f?)
        | Expr.const _ us        => cache i e <| e.updateConst! (us.map (Level.replace f?))
        | e                      => pure e
  visit e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReplaceLevel/Variant970e963ce820110b18cc529e9e5874f57912cd93f8f1ee99e05ca875644244c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReplaceLevel/Variant970e963ce820110b18cc529e9e5874f57912cd93f8f1ee99e05ca875644244c6.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cc5a28fb61baf2ab3e7d6303bee52a7e9a0bfe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
