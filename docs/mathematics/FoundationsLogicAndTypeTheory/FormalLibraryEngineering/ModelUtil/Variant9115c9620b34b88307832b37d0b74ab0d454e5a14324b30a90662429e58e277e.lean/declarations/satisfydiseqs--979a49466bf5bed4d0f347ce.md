# satisfyDiseqs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b2304a2dc03730c540f900e79d55439922b314bc0d77d47b2bf456721278436",
  "kind": "def",
  "lexical_name": "satisfyDiseqs",
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
  "slug": "satisfydiseqs--979a49466bf5bed4d0f347ce",
  "source": {
    "blob": "36612c14e648d6e0f29562c63ebdd957bf2eaca2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModelUtil/Variant9115c9620b34b88307832b37d0b74ab0d454e5a14324b30a90662429e58e277e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:979a49466bf5bed4d0f347ce0445284a557b6ae12821eb08ec56912f17cf75fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModelUtil/Variant9115c9620b34b88307832b37d0b74ab0d454e5a14324b30a90662429e58e277e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b2304a2dc03730c540f900e79d55439922b314bc0d77d47b2bf456721278436`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def satisfyDiseqs (goal : Goal) (a : Std.HashMap Expr Rat) (e : Expr) (v : Int) : Bool := Id.run do
  let some parents := goal.parents.find? { expr := e } | return true
  for parent in parents.elems do
    let_expr Eq _ lhs rhs := parent | continue
    let some root := goal.getRoot? parent | continue
    if root.isConstOf ``False then
      let some lhsRoot := goal.getRoot? lhs | continue
      let some rhsRoot := goal.getRoot? rhs | continue
      if lhsRoot == e && !checkDiseq rhsRoot then return false
      if rhsRoot == e && !checkDiseq lhsRoot then return false
  return true
where
  checkDiseq (other : Expr) : Bool :=
    if let some v' := a[other]? then
      v' != v
    else
      true

/--
Returns an integer value `i` for assigning to `e` s.t. adding `e := i` to `a` will not falsify any disequality
and `i` is not in `alreadyUsed`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModelUtil/Variant9115c9620b34b88307832b37d0b74ab0d454e5a14324b30a90662429e58e277e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModelUtil/Variant9115c9620b34b88307832b37d0b74ab0d454e5a14324b30a90662429e58e277e.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36612c14e648d6e0f29562c63ebdd957bf2eaca2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
