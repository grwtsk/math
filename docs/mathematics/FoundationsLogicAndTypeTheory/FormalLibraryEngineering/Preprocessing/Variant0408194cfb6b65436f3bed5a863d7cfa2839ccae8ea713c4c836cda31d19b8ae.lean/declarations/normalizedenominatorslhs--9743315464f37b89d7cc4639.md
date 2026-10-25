# normalizeDenominatorsLHS

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6120aa2c7a09db47c1327a1f0acca5e0462928eb3515a81d3f14fbe05734babd",
  "kind": "def",
  "lexical_name": "normalizeDenominatorsLHS",
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
  "slug": "normalizedenominatorslhs--9743315464f37b89d7cc4639",
  "source": {
    "blob": "65f7708366e946e8d3a9150f43096b597113bd93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 297,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9743315464f37b89d7cc4639837c15d76a32f0c2dbf5c163a1024dd495a4637b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6120aa2c7a09db47c1327a1f0acca5e0462928eb3515a81d3f14fbe05734babd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalizeDenominatorsLHS (h lhs : Expr) : MetaM Expr := do
  let mut (v, lhs') ← CancelDenoms.derive lhs
  if v = 1 then
    -- `lhs'` has a `1 *` out front, but `mkSingleCompZeroOf` has a special case
    -- where it does not produce `1 *`. We strip it off here:
    lhs' ← mkAppM ``without_one_mul #[lhs']
  let (_, h'') ← mkSingleCompZeroOf v h
  try
    h''.rewriteType lhs'
  catch e =>
    dbg_trace
      s!"Error in Linarith.normalizeDenominatorsLHS: {← e.toMessageData.toString}"
    throw e

/--
`cancelDenoms pf` assumes `pf` is a proof of `t R 0`. If `t` contains the division symbol `/`,
it tries to scale `t` to cancel out division by numerals.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65f7708366e946e8d3a9150f43096b597113bd93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
