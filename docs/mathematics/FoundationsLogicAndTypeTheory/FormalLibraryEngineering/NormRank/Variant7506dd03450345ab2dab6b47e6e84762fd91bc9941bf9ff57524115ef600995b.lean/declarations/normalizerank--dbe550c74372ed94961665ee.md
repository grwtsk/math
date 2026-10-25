# normalizeRank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b7d9d1f9578727e7f623862fbb728e8a99954bd43ca494cb08b28e537f0eca95",
  "kind": "def",
  "lexical_name": "normalizeRank",
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
  "slug": "normalizerank--dbe550c74372ed94961665ee",
  "source": {
    "blob": "92e5b900d29a7335489db745cdd9c8df741c161c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormRank/Variant7506dd03450345ab2dab6b47e6e84762fd91bc9941bf9ff57524115ef600995b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbe550c74372ed94961665ee80e365172f23933a14e166384c6df1ddd7936688",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormRank/Variant7506dd03450345ab2dab6b47e6e84762fd91bc9941bf9ff57524115ef600995b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b7d9d1f9578727e7f623862fbb728e8a99954bd43ca494cb08b28e537f0eca95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalizeRank (e A : Expr) (m n : Nat) (R : Expr) (entries : Array (Array Expr)) :
    MetaM Simp.Result := do
  let u ← getDecLevel R
  have α : Q(Type u) := R
  let res ← mkBareissDecomposition A m n α entries
  let pf ← mkAppM ``Echelon.Decomposition.rank_eq #[res.cert]
  let k := mkNatLit res.data.pivot.size
  return { expr := k, proof? := some (← mkExpectedTypeHint pf (← mkEq e k)) }

/-- Core of the `norm_rank` simproc. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormRank/Variant7506dd03450345ab2dab6b47e6e84762fd91bc9941bf9ff57524115ef600995b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormRank/Variant7506dd03450345ab2dab6b47e6e84762fd91bc9941bf9ff57524115ef600995b.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92e5b900d29a7335489db745cdd9c8df741c161c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
