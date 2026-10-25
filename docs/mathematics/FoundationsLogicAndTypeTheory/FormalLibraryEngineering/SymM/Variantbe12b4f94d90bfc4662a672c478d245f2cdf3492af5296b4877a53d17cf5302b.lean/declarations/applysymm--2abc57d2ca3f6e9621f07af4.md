# applySymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4651e550af4f517ed6c474e7bbb9ba1a8743b66d105ea6bda0a313ff84a8cd6",
  "kind": "def",
  "lexical_name": "applySymm",
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
  "slug": "applysymm--2abc57d2ca3f6e9621f07af4",
  "source": {
    "blob": "490b981820d191a68836e2b200a7a0a3999f8147",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 89,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symm/Variantbe12b4f94d90bfc4662a672c478d245f2cdf3492af5296b4877a53d17cf5302b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2abc57d2ca3f6e9621f07af4138abab865ecc3c70ec994da7961dfe02b4da966",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantbe12b4f94d90bfc4662a672c478d245f2cdf3492af5296b4877a53d17cf5302b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4651e550af4f517ed6c474e7bbb9ba1a8743b66d105ea6bda0a313ff84a8cd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def applySymm (g : MVarId) : MetaM MVarId := do
  go (← g.getTypeCleanup) g fun lem args body g => do
    let .true ← isDefEq (← g.getType) body | failure
    g.assign (mkAppN lem args)
    return args.back.mvarId!
where
  /--
  Internal implementation of `Lean.MVarId.applySymm` and the user-facing tactic.

  `tgt` should be of the form `a ~ b`, and is used to index the symm lemmas.

  `k lem args body goal` should transform `goal` into a new goal,
  given a candidate `symm` lemma `lem`, which will have type `∀ args, body`.
  Depending on whether we are working on a hypothesis or a goal,
  `k` will internally use either `replace` or `assign`.
  -/
  go (tgt : Expr) (g : MVarId) (k : Expr → Array Expr → Expr → MVarId → MetaM MVarId) :
    MetaM MVarId := do
  Expr.applySymm.go tgt fun lem args body => do
    let g' ← k lem args body g
    g'.setTag (← g.getTag)
    return g'

/-- Use a symmetry lemma (i.e. marked with `@[symm]`) to replace a hypothesis in a goal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantbe12b4f94d90bfc4662a672c478d245f2cdf3492af5296b4877a53d17cf5302b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symm/Variantbe12b4f94d90bfc4662a672c478d245f2cdf3492af5296b4877a53d17cf5302b.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `490b981820d191a68836e2b200a7a0a3999f8147` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
