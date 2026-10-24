# ArchimedeanBalance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4fae7287ae8694b0500574039b4cf2f3aba61bcebc918db3b38163bf6b0d80ee",
  "kind": "structure",
  "lexical_name": "ArchimedeanBalance",
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
  "slug": "archimedeanbalance--aa5c34c1cd34ef1eeb4acfa9",
  "source": {
    "blob": "6e6a000f200f47942d16461ada6d2b31e1558c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 17,
    "path": "GRWTSK/Algebra/GroupTheory/Balance/Variant8535510ae07bf82060471147383e9131e13c336d59e8072d13135a35f1b5a295.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa5c34c1cd34ef1eeb4acfa91df425c5282af09e04d9b8336a3f63b99b667779",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Balance/Variant8535510ae07bf82060471147383e9131e13c336d59e8072d13135a35f1b5a295.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4fae7287ae8694b0500574039b4cf2f3aba61bcebc918db3b38163bf6b0d80ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ArchimedeanBalance
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    (profile :
      SemiLocalSymbolProfile Prime Symbol)
    (quasiInner : QuasiInnerClass Symbol)
    (cut : Finset Prime) where
  residual : Symbol
  allocation : Prime → Symbol
  archimedean_factorization :
    profile.archimedeanRatio =
      residual *
        ∏ prime ∈ cut, allocation prime
  paired_quasiInner :
    ∀ prime ∈ cut,
      quasiInner.member
        (allocation prime *
          profile.finiteRatio prime)
  residualHardyCondition : Prop
  residualHardyConditionProof :
    residualHardyCondition
  digest : BalanceDigest

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Balance/Variant8535510ae07bf82060471147383e9131e13c336d59e8072d13135a35f1b5a295.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Balance/Variant8535510ae07bf82060471147383e9131e13c336d59e8072d13135a35f1b5a295.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e6a000f200f47942d16461ada6d2b31e1558c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
