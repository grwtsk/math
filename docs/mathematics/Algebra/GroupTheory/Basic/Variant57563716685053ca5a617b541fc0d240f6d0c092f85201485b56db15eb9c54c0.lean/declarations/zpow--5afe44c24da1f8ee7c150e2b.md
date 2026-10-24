# ZPow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a10ea404068b5ac42a2e1284460cc52a0085efe4b3c75b299bca30bc7c848811",
  "kind": "def",
  "lexical_name": "ZPow",
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
  "slug": "zpow--5afe44c24da1f8ee7c150e2b",
  "source": {
    "blob": "a17db1d4b6a3aca3f63fea6749908a596525bca9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 548,
    "line": 542,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant57563716685053ca5a617b541fc0d240f6d0c092f85201485b56db15eb9c54c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5afe44c24da1f8ee7c150e2bd6ab4b1cf85f69b9fad437fe1092adc2839c4126",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant57563716685053ca5a617b541fc0d240f6d0c092f85201485b56db15eb9c54c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a10ea404068b5ac42a2e1284460cc52a0085efe4b3c75b299bca30bc7c848811`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 542–548.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def ZPow [One α] [Mul α] [Inv α] : Pow (Set α) ℤ :=
  ⟨fun s n => zpowRec npowRec n s⟩

scoped[Pointwise] attribute [instance] Set.NSMul Set.NPow Set.ZSMul Set.ZPow

/-- `Set α` is a `Semigroup` under pointwise operations if `α` is. -/
@[to_additive "`Set α` is an `AddSemigroup` under pointwise operations if `α` is."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant57563716685053ca5a617b541fc0d240f6d0c092f85201485b56db15eb9c54c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant57563716685053ca5a617b541fc0d240f6d0c092f85201485b56db15eb9c54c0.lean#L542).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a17db1d4b6a3aca3f63fea6749908a596525bca9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
