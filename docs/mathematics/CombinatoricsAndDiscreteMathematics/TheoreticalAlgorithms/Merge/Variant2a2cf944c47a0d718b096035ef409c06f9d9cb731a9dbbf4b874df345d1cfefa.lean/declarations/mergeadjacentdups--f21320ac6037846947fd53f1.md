# mergeAdjacentDups

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a58093ba5ba17247aa1727b01cfd804d91a056846c04fcefc8d17fbad38f6c80",
  "kind": "def",
  "lexical_name": "mergeAdjacentDups",
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
  "slug": "mergeadjacentdups--f21320ac6037846947fd53f1",
  "source": {
    "blob": "d1b557c88371aa7dd5de30e25fe29320235cca97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 95,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant2a2cf944c47a0d718b096035ef409c06f9d9cb731a9dbbf4b874df345d1cfefa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f21320ac6037846947fd53f1f37d91cc34c34d75e3755d10e7546bbe3ec9bcf0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant2a2cf944c47a0d718b096035ef409c06f9d9cb731a9dbbf4b874df345d1cfefa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a58093ba5ba17247aa1727b01cfd804d91a056846c04fcefc8d17fbad38f6c80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mergeAdjacentDups [eq : BEq α] (f : α → α → α) (xs : Array α) : Array α :=
  if h : 0 < xs.size then go (mkEmpty xs.size) 1 xs[0] else xs
where
  /-- Auxiliary definition for `mergeAdjacentDups`. -/
  go (acc : Array α) (i : Nat) (hd : α) :=
    if h : i < xs.size then
      let x := xs[i]
      if x == hd then go acc (i + 1) (f hd x) else go (acc.push hd) (i + 1) x
    else
      acc.push hd
  termination_by xs.size - i

/--
`O(|xs|)`. Deduplicate a sorted array. The array must be sorted with to an order which agrees with
`==`, i.e. whenever `x == y` then `compare x y == .eq`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant2a2cf944c47a0d718b096035ef409c06f9d9cb731a9dbbf4b874df345d1cfefa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant2a2cf944c47a0d718b096035ef409c06f9d9cb731a9dbbf4b874df345d1cfefa.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1b557c88371aa7dd5de30e25fe29320235cca97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
