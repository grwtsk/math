# proveOnModCases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b863a956aaa6df5aaa76c23110ebc66b81fa5d764669afed54d202df1908669",
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
  "slug": "proveonmodcases--2d6b52ea82484acce1ab4395",
  "source": {
    "blob": "69f1ca36ccee579889b50952f2e53d4f1cffa053",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 140,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModCases/Varianta1636db5b891e10ad676dcc7393004959c15a6e65163753be2a8673c06fec8df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d6b52ea82484acce1ab439598ba84c07226a899eeab07b80d5e81b8b29d6cde",
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

Occurrence: `declaration:2b863a956aaa6df5aaa76c23110ebc66b81fa5d764669afed54d202df1908669`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def proveOnModCases {u : Level} (n : Q(ℕ)) (a : Q(ℕ)) (b : Q(ℕ)) (p : Q(Sort u)) :
    MetaM (Q(OnModCases $n $a $b $p) × List MVarId) := do
  if n.natLit! ≤ b.natLit! then
    have : $b =Q $n := ⟨⟩
    pure (q(onModCases_stop $p $n $a), [])
  else
    let ty := q($a ≡ $b [MOD $n] → $p)
    let g ← mkFreshExprMVarQ ty
    let ((pr : Q(OnModCases $n $a (Nat.add $b 1) $p)), acc) ←
      proveOnModCases n a (mkRawNatLit (b.natLit! + 1)) p
    pure (q(onModCases_succ $b $g $pr), g.mvarId! :: acc)

/--
Nat case of `mod_cases h : e % n`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModCases/Varianta1636db5b891e10ad676dcc7393004959c15a6e65163753be2a8673c06fec8df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModCases/Varianta1636db5b891e10ad676dcc7393004959c15a6e65163753be2a8673c06fec8df.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69f1ca36ccee579889b50952f2e53d4f1cffa053` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
