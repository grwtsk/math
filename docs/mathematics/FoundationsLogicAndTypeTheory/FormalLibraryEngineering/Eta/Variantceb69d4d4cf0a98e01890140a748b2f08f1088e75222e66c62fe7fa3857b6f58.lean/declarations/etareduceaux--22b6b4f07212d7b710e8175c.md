# etaReduceAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:364750f20b77b838ca45978a5e20265a95e541693feefc97a93058ba12919e80",
  "kind": "def",
  "lexical_name": "etaReduceAux",
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
  "slug": "etareduceaux--22b6b4f07212d7b710e8175c",
  "source": {
    "blob": "a6db74ad2856ddcbcb82e3f4b18101442de60f20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eta/Variantceb69d4d4cf0a98e01890140a748b2f08f1088e75222e66c62fe7fa3857b6f58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22b6b4f07212d7b710e8175c972f90a0449dd8aa53bdf6940db04eaed351ef64",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eta/Variantceb69d4d4cf0a98e01890140a748b2f08f1088e75222e66c62fe7fa3857b6f58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:364750f20b77b838ca45978a5e20265a95e541693feefc97a93058ba12919e80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def etaReduceAux (body : Expr) (n : Nat) (i : Nat) (default : Expr) : Expr :=
  go body n i
where
  go (body : Expr) (m : Nat) (i : Nat) : Expr := Id.run do
    match m with
    | 0 =>
      if hasLooseBVarsInRange body n then default
      else body.lowerLooseBVars n n
    | m+1 =>
      let .app f (.bvar j) := body | default
      if j == i then go f m (i+1) else default

/--
If `e` is of the form `(fun x₁ ... xₙ => f x₁ ... xₙ)` and `f` does not contain `x₁`, ..., `xₙ`,
then returns `f`. Otherwise, returns `e`.

Returns the original expression when not reducible to enable pointer equality checks.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eta/Variantceb69d4d4cf0a98e01890140a748b2f08f1088e75222e66c62fe7fa3857b6f58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eta/Variantceb69d4d4cf0a98e01890140a748b2f08f1088e75222e66c62fe7fa3857b6f58.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6db74ad2856ddcbcb82e3f4b18101442de60f20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
