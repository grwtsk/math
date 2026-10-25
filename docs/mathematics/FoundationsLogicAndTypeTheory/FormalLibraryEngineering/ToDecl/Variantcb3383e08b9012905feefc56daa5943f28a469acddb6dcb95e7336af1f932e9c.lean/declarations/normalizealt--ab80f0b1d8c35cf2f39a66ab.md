# normalizeAlt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e48b6448027b7b19b1308a254ee3c85723419e341bae96c7b377b8360755390a",
  "kind": "def",
  "lexical_name": "normalizeAlt",
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
  "slug": "normalizealt--ab80f0b1d8c35cf2f39a66ab",
  "source": {
    "blob": "ca68757c58e03d31c29d547b6cd4323f82caf302",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantcb3383e08b9012905feefc56daa5943f28a469acddb6dcb95e7336af1f932e9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab80f0b1d8c35cf2f39a66ab3e3d6add3184be9b7551169268fe1c21cb03ee20",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantcb3383e08b9012905feefc56daa5943f28a469acddb6dcb95e7336af1f932e9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e48b6448027b7b19b1308a254ee3c85723419e341bae96c7b377b8360755390a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def normalizeAlt (e : Expr) (numParams : Nat) : MetaM Expr :=
  Meta.lambdaTelescope e fun xs body => do
    if xs.size == numParams then
      return e
    else if xs.size > numParams then
      let body ← Meta.mkLambdaFVars xs[numParams...*] body
      let body ← Meta.withLetDecl (← mkFreshUserName `_k) (← Meta.inferType body) body fun x => Meta.mkLetFVars #[x] x
      Meta.mkLambdaFVars xs[*...numParams] body
    else
      Meta.forallBoundedTelescope (← Meta.inferType e) (numParams - xs.size) fun ys _ =>
        Meta.mkLambdaFVars (xs ++ ys) (mkAppN e ys)

/--
Inline auxiliary `matcher` applications and matcher-like declarations (e.g. `match_on_same_ctor.het`)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantcb3383e08b9012905feefc56daa5943f28a469acddb6dcb95e7336af1f932e9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantcb3383e08b9012905feefc56daa5943f28a469acddb6dcb95e7336af1f932e9c.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca68757c58e03d31c29d547b6cd4323f82caf302` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
