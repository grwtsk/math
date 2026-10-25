# mk_sometimes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ea1ac63c3c55d8f70093e834252b8b139c18de086445e4e9857fd934c54a29e",
  "kind": "def",
  "lexical_name": "mk_sometimes",
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
  "slug": "mk-sometimes--96aa38bc319de8e7645e0d75",
  "source": {
    "blob": "910c9d6fe5919d6a17f055566a1166159904985f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96aa38bc319de8e7645e0d759662b5bc0af0600a3d39c8bae0c5a688936a04e9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ea1ac63c3c55d8f70093e834252b8b139c18de086445e4e9857fd934c54a29e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mk_sometimes (u : Level) (α nonemp p : Expr) :
    List Expr → Expr × Expr → MetaM (Expr × Expr)
| [], (val, spec) => pure (val, spec)
| (e :: ctx), (val, spec) => do
  let (val, spec) ← mk_sometimes u α nonemp p ctx (val, spec)
  let t ← inferType e
  let b ← isProp t
  if b then do
    let val' ← mkLambdaFVars #[e] val
    pure
      (mkApp4 (Expr.const ``Function.sometimes [Level.zero, u]) t α nonemp val',
      mkApp7 (Expr.const ``Function.sometimes_spec [u]) t α nonemp p val' e spec)
  else pure (val, spec)

/-- Results of searching for nonempty instances,
to eliminate dependencies on propositions (`choose!`).
`success` means we found at least one instance;
`failure ts` means we didn't find instances for any `t ∈ ts`.
(`failure []` means we didn't look for instances at all.)

Rationale:
`choose!` means we are expected to succeed at least once
in eliminating dependencies on propositions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantf70d0d4024e15ed973076fc31ea02ec3e6a3bdd2fd25260b7e794fe187d843bc.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `910c9d6fe5919d6a17f055566a1166159904985f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
