# withInhabitedInstances

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa515cb2937b2e9aa17eebf4b546406d03ca055c942b37c8a51abf5daf81fe4f",
  "kind": "def",
  "lexical_name": "withInhabitedInstances",
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
  "slug": "withinhabitedinstances--9bc5fdafa1da2afc5a28b696",
  "source": {
    "blob": "a994c53e9c587c591551771eb3cc7ad3ce79e30d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkInhabitant/Variant6e54b3a437d1feb01f3b18c0e5847e6df21607be5568c5b13b0a9f00788abc37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9bc5fdafa1da2afc5a28b69627b27dac0c9933afaf22f9e0ca29068415f597c7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkInhabitant/Variant6e54b3a437d1feb01f3b18c0e5847e6df21607be5568c5b13b0a9f00788abc37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa515cb2937b2e9aa17eebf4b546406d03ca055c942b37c8a51abf5daf81fe4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def withInhabitedInstances (xs : Array Expr) (k : Array Expr → MetaM α) : MetaM α := do
  let rec go (i : Nat) (insts : Array Expr) : MetaM α := do
    if h : i < xs.size then
      let x := xs[i]
      let xTy ← inferType x
      let u ← getLevel xTy
      let instTy := mkApp (.const ``Inhabited [u]) xTy
      let instVal := mkApp2 (.const ``Inhabited.mk [u]) xTy x
      withLetDecl `inst instTy instVal fun inst =>
        go (i + 1) (insts.push inst)
    else
      k insts
  go 0 #[]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkInhabitant/Variant6e54b3a437d1feb01f3b18c0e5847e6df21607be5568c5b13b0a9f00788abc37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkInhabitant/Variant6e54b3a437d1feb01f3b18c0e5847e6df21607be5568c5b13b0a9f00788abc37.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a994c53e9c587c591551771eb3cc7ad3ce79e30d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
