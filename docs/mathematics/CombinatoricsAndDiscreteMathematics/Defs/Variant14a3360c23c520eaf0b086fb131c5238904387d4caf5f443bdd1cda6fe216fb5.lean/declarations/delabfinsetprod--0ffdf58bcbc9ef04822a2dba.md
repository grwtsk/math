# delabFinsetProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2af6f98d7a182639d90f28c1efad4f57c5ef96dc6773332f8041c91a41b3810",
  "kind": "def",
  "lexical_name": "delabFinsetProd",
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
  "slug": "delabfinsetprod--0ffdf58bcbc9ef04822a2dba",
  "source": {
    "blob": "a76b3f0fb0897b29a1e1b93f83b4dd42394bae9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 279,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant14a3360c23c520eaf0b086fb131c5238904387d4caf5f443bdd1cda6fe216fb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ffdf58bcbc9ef04822a2dba4795704cbed0e5ee0db7c7d967c1cc29fb2bdaf9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variant14a3360c23c520eaf0b086fb131c5238904387d4caf5f443bdd1cda6fe216fb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2af6f98d7a182639d90f28c1efad4f57c5ef96dc6773332f8041c91a41b3810`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[app_delab Finset.prod] def delabFinsetProd : Delab :=
  whenPPOption getPPNotation <| withOverApp 5 <| do
  let #[_, _, _, _, f] := (← getExpr).getAppArgs | failure
  guard f.isLambda
  let ppDomain ← getPPOption getPPFunBinderTypes
  let (i, body) ← withAppArg <| withBindingBodyUnusedName fun i => do
    return (⟨i⟩, ← delab)
  let res ← withNaryArg 3 <| delabFinsetArg i
  match res with
  | .finset ss => `(∏ $i:ident ∈ $ss, $body)
  | .univ =>
    let binder ←
      if ppDomain then
        let ty ← withNaryArg 0 delab
        `(bigOpBinder| $i:ident : $ty)
      else
        `(bigOpBinder| $i:ident)
    `(∏ $binder:bigOpBinder, $body)
  | .filter ss p =>
    `(∏ $i:ident ∈ $ss with $p, $body)
  | .filterUniv p =>
    let binder ←
    if ppDomain then
      let ty ← withNaryArg 0 delab
      `(bigOpBinder| $i:ident : $ty)
    else
      `(bigOpBinder| $i:ident)
    `(∏ $binder:bigOpBinder with $p, $body)

/-- Delaborator for `Finset.sum`. The `pp.funBinderTypes` option controls whether
to show the domain type when the sum is over `Finset.univ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variant14a3360c23c520eaf0b086fb131c5238904387d4caf5f443bdd1cda6fe216fb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant14a3360c23c520eaf0b086fb131c5238904387d4caf5f443bdd1cda6fe216fb5.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a76b3f0fb0897b29a1e1b93f83b4dd42394bae9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
