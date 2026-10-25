# mkCongrArg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bfb856646f0d6d32ffd1ce5c16605d9327d5f708a44a7d06755ae624379a9f9a",
  "kind": "def",
  "lexical_name": "mkCongrArg",
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
  "slug": "mkcongrarg--04ff6c5f5499f3f3f16cc4b0",
  "source": {
    "blob": "badc98ea274a8f09f3678220a28462f71e927671",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 239,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant7d8b45360bc016cdae3c9872d71ee499b96a94e88409ea9115d9202d1ab734e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04ff6c5f5499f3f3f16cc4b01e411ad47a440257a415756b8a6993a2a7ecfaf8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant7d8b45360bc016cdae3c9872d71ee499b96a94e88409ea9115d9202d1ab734e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bfb856646f0d6d32ffd1ce5c16605d9327d5f708a44a7d06755ae624379a9f9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkCongrArg (f h : Expr) : MetaM Expr := do
  if let some a := isRefl? h then
    mkEqRefl (mkApp f a)
  else if let some (α, f₁, h₁) ← congrArg? h then
    -- Fuse nested `congrArg` for smaller proof terms, e.g. when using simp
    -- hot path, construct terms directly
    let f' := .lam `x α (f.beta #[f₁.beta #[.bvar 0]]) .default
    mkCongrArg f' h₁
  else
    let hType ← infer h
    let fType ← infer f
    match fType.arrow?, hType.eq? with
    | some (α, β), some (_, a, b) =>
      let u ← getLevel α
      let v ← getLevel β
      return mkApp6 (mkConst ``congrArg [u, v]) α β a b f h
    | none, _ => throwAppBuilderException ``congrArg ("non-dependent function expected" ++ hasTypeMsg f fType)
    | _, none => throwAppBuilderException ``congrArg ("equality proof expected" ++ hasTypeMsg h hType)

/-- Given `h : f = g` and `a : α`, returns a proof of `f a = g a`.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant7d8b45360bc016cdae3c9872d71ee499b96a94e88409ea9115d9202d1ab734e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant7d8b45360bc016cdae3c9872d71ee499b96a94e88409ea9115d9202d1ab734e2.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `badc98ea274a8f09f3678220a28462f71e927671` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
