# parseRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3be9388ebf2fa82293439d3e4911c1db59d8fcc4e9f0f434dcadb6151a9ec00c",
  "kind": "def",
  "lexical_name": "parseRat",
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
  "slug": "parserat--d46cce1930ed7f7c7bcdc9ee",
  "source": {
    "blob": "9aadc742e79f5bcd809f36ce3f944a0bf7412fc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d46cce1930ed7f7c7bcdc9ee295b16f7abbbbdca247876cc077c6834501f7053",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3be9388ebf2fa82293439d3e4911c1db59d8fcc4e9f0f434dcadb6151a9ec00c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def parseRat (e : Lean.Expr) : MetaM ℚ := do
  -- Pattern matching fallback (shouldn't be called due to implemented_by)
  let e ← reduce e (skipTypes := true) (skipProofs := true)
  if let some n := e.rawNatLit? then
    return n
  match_expr e with
  | OfNat.ofNat _ n _ =>
    if let some k := n.rawNatLit? then
      return k
    throwError "Cannot parse numeric: {e}"
  | Zero.zero _ _ =>
    return 0
  | One.one _ _ =>
    return 1
  | Neg.neg _ _ x =>
    let q ← parseRat x
    return -q
  | HDiv.hDiv _ _ _ _ a b =>
    let qa ← parseRat a
    let qb ← parseRat b
    if qb == 0 then throwError "Division by zero in interval bound"
    return qa / qb
  | _ => throwError "Cannot parse as rational: {e}"

/-- Parse an integer from a reduced Lean expression -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9aadc742e79f5bcd809f36ce3f944a0bf7412fc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
