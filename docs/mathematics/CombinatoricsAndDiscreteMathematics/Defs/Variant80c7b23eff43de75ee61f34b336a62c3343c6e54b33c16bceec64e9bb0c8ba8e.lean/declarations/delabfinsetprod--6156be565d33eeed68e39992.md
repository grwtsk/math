# delabFinsetProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9494cb4fef34a3dfabd689ca5e09b380eddb7761e78598f9c01c9056b087278",
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
  "slug": "delabfinsetprod--6156be565d33eeed68e39992",
  "source": {
    "blob": "cc164de4e5e3f5c742c7721dea37ce3adfd0d9dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 287,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant80c7b23eff43de75ee61f34b336a62c3343c6e54b33c16bceec64e9bb0c8ba8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6156be565d33eeed68e399928e2b7428e4f935b1bb75b2ac12a1d028756a4936",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variant80c7b23eff43de75ee61f34b336a62c3343c6e54b33c16bceec64e9bb0c8ba8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9494cb4fef34a3dfabd689ca5e09b380eddb7761e78598f9c01c9056b087278`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–317.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variant80c7b23eff43de75ee61f34b336a62c3343c6e54b33c16bceec64e9bb0c8ba8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant80c7b23eff43de75ee61f34b336a62c3343c6e54b33c16bceec64e9bb0c8ba8e.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc164de4e5e3f5c742c7721dea37ce3adfd0d9dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
