# cancelDenoms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:124c3d877ed56e083c7fc49c2a196f0937f1a6ccce131fbc0f2820ddb4b1a072",
  "kind": "def",
  "lexical_name": "cancelDenoms",
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
  "slug": "canceldenoms--6866a0a14ec4f919d1f5751f",
  "source": {
    "blob": "77a99f8cd2e0f89015b974cd4386134a32d6f92e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 248,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6866a0a14ec4f919d1f5751fccc5a5cee7e8f142e5f78939d24beabb51376fda",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:124c3d877ed56e083c7fc49c2a196f0937f1a6ccce131fbc0f2820ddb4b1a072`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cancelDenoms : Preprocessor where
  description := "cancel denominators"
  transform := fun pf => (do
      let (_, lhs) ← parseCompAndExpr (← inferType pf)
      guard <| lhs.containsConst <| fun n =>
        n = ``HDiv.hDiv || n = ``Div.div || n = ``Inv.inv || n == ``OfScientific.ofScientific
      pure [← normalizeDenominatorsLHS pf lhs])
    <|> return [pf]
end cancelDenoms

section nlinarith
/--
`findSquares s e` collects all terms of the form `a ^ 2` and `a * a` that appear in `e`
and adds them to the set `s`.
A pair `(i, true)` is added to `s` when `atoms[i]^2` appears in `e`,
and `(i, false)` is added to `s` when `atoms[i]*atoms[i]` appears in `e`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77a99f8cd2e0f89015b974cd4386134a32d6f92e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
