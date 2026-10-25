# ToIntThms.mkResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80eedb8fe381548ffdc722477632928dccd8591424fdad2c2076afcc97c0ede3",
  "kind": "def",
  "lexical_name": "ToIntThms.mkResult",
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
  "slug": "tointthms-mkresult--dd01f36ef8720a2fc4f7c48f",
  "source": {
    "blob": "572eea9716e2eb5b559cd26661b8263908691dd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 373,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd01f36ef8720a2fc4f7c48fc8659c63efcd6403804e861fe76e7ca642e4d7aa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80eedb8fe381548ffdc722477632928dccd8591424fdad2c2076afcc97c0ede3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def ToIntThms.mkResult (toIntThms : ToIntThms) (mkBinOp : Expr → Expr → Expr) (a b : Expr) (a' b' : Expr) (h₁ h₂ : Expr) : ToIntM (Expr × Expr) := do
  let f := toIntThms.c?.get!
  let mk (f : Expr) (a' b' : Expr) : ToIntM (Expr × Expr) := do
    -- If the appropriate `wrap` cancellation theorem is missing, we have to expand the nested wrap.
    let (a', h₁) ← expandIfWrap a a' h₁
    let (b', h₂) ← expandIfWrap b b' h₂
    let h := mkApp6 f a b a' b' h₁ h₂
    let r ← mkWrap (mkBinOp a' b')
    return (r, h)
  match isWrap a', isWrap b' with
  | none,     none     => mk f a' b'
  | some a'', none     => if let some f := toIntThms.c_wl? then mk f a'' b' else mk f a' b'
  | none,     some b'' => if let some f := toIntThms.c_wr? then mk f a' b'' else mk f a' b'
  | some a'', some b'' => if let some f := toIntThms.c_ww? then mk f a'' b'' else mk f a' b'

/-- Returns `some (n, neZeroInst)` if `inst` is of the form `Fin.instOfNat n neZeroInst _` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `572eea9716e2eb5b559cd26661b8263908691dd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
