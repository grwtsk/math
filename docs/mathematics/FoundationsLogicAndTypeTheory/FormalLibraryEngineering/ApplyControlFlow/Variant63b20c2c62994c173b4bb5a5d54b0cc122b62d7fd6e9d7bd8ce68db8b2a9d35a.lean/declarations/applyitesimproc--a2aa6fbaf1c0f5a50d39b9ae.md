# applyIteSimproc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:793643ccdf4882e34114f24bff4978b8a887eeaa2d95581ef44a18542ea0c50c",
  "kind": "def",
  "lexical_name": "applyIteSimproc",
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
  "slug": "applyitesimproc--a2aa6fbaf1c0f5a50d39b9ae",
  "source": {
    "blob": "2658bc11d5cc67d33a6de88c728ec14221f01f96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant63b20c2c62994c173b4bb5a5d54b0cc122b62d7fd6e9d7bd8ce68db8b2a9d35a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2aa6fbaf1c0f5a50d39b9ae0ecc14f26e321230e6849ccefc0c71b2b9f67906",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant63b20c2c62994c173b4bb5a5d54b0cc122b62d7fd6e9d7bd8ce68db8b2a9d35a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:793643ccdf4882e34114f24bff4978b8a887eeaa2d95581ef44a18542ea0c50c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def applyIteSimproc : Simp.Simproc := fun e => e.withApp fun fn args => do
  if h : args.size ≠ 0 then
    let_expr ite α c instDec t e := args.back | return .continue
    let params := args.pop
    let fnApp := mkAppN fn params
    let newT := mkApp fnApp t
    let newE := mkApp fnApp e
    let newIf ← mkAppOptM ``ite #[none, c, instDec, newT, newE]
    let proof ← mkAppOptM ``apply_ite #[α, none, fnApp, c, instDec, t, e]
    return .visit { expr := newIf, proof? := some proof }
  else
    return .continue

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant63b20c2c62994c173b4bb5a5d54b0cc122b62d7fd6e9d7bd8ce68db8b2a9d35a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant63b20c2c62994c173b4bb5a5d54b0cc122b62d7fd6e9d7bd8ce68db8b2a9d35a.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2658bc11d5cc67d33a6de88c728ec14221f01f96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
