# proveOnModCases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d93dc757ab2078f6969576455cc7e98778f422466855658cb2da3648c6097a9c",
  "kind": "def",
  "lexical_name": "proveOnModCases",
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
  "slug": "proveonmodcases--a36ea7cac03e141d58ed8e55",
  "source": {
    "blob": "69f1ca36ccee579889b50952f2e53d4f1cffa053",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModCases/Varianta1636db5b891e10ad676dcc7393004959c15a6e65163753be2a8673c06fec8df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a36ea7cac03e141d58ed8e557758c14506e3d66cde93e07dbea02c2604d994b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModCases/Varianta1636db5b891e10ad676dcc7393004959c15a6e65163753be2a8673c06fec8df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d93dc757ab2078f6969576455cc7e98778f422466855658cb2da3648c6097a9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def proveOnModCases {u : Level} (n : Q(ℕ)) (a : Q(ℤ)) (b : Q(ℕ)) (p : Q(Sort u)) :
    MetaM (Q(OnModCases $n $a $b $p) × List MVarId) := do
  if n.natLit! ≤ b.natLit! then
    haveI' : $b =Q $n := ⟨⟩
    pure (q(onModCases_stop $p $n $a), [])
  else
    let ty := q($a ≡ OfNat.ofNat $b [ZMOD OfNat.ofNat $n] → $p)
    let g ← mkFreshExprMVarQ ty
    have b1 : Q(ℕ) := mkRawNatLit (b.natLit! + 1)
    haveI' : $b1 =Q ($b).succ := ⟨⟩
    let (pr, acc) ← proveOnModCases n a b1 p
    pure (q(onModCases_succ $b $g $pr), g.mvarId! :: acc)

/--
Int case of `mod_cases h : e % n`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModCases/Varianta1636db5b891e10ad676dcc7393004959c15a6e65163753be2a8673c06fec8df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModCases/Varianta1636db5b891e10ad676dcc7393004959c15a6e65163753be2a8673c06fec8df.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69f1ca36ccee579889b50952f2e53d4f1cffa053` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
