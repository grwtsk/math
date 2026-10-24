# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c1bb86ce4e04f57e24895341d041da69fcab9079d320242623561473699dfa0",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--67c09fcee19280ff716e846a",
  "source": {
    "blob": "360efe47411863bb20b92ac28521e0a33f1bdf7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 189,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant341d74527dbcf1548ab2085a8265f5d958b0a1794bf7ec7afecaf30d543e9a5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67c09fcee19280ff716e846a739fabef972e01c7cc574e5de9a09a5b4a9d3047",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant341d74527dbcf1548ab2085a8265f5d958b0a1794bf7ec7afecaf30d543e9a5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c1bb86ce4e04f57e24895341d041da69fcab9079d320242623561473699dfa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {n : ℝ} :
    (n + 1 / 2) ^ 2 * (n + 1 + 1 / 3) = 1 / 3 + n * (19 / 12) + n ^ 2 * (7 / 3) + n ^ 3 := by
  -- `conv_lhs` prevents `ring_nf` picking a bad normalization for both sides.
  conv_lhs => ring_nf

-- We can't use `guard_target =ₛ` here, as while it does detect stray `OfNat`s, it also complains
-- about differing instance paths.
/--
trace: n : ℝ
_hn : 0 ≤ n
⊢ 1 / 3 + n * (19 / 12) + n ^ 2 * (7 / 3) + n ^ 3 ≤ 1 / 3 + n * (5 / 3) + n ^ 2 * (7 / 3) + n ^ 3
-/
#guard_msgs (trace) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant341d74527dbcf1548ab2085a8265f5d958b0a1794bf7ec7afecaf30d543e9a5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant341d74527dbcf1548ab2085a8265f5d958b0a1794bf7ec7afecaf30d543e9a5b.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `360efe47411863bb20b92ac28521e0a33f1bdf7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
