# merge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de553d61d523c673863c1489b877bc2372c12f5b6de6dd06b3e728f8509d12e0",
  "kind": "def",
  "lexical_name": "merge",
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
  "slug": "merge--fe85ac38fb0a1c282bd8557b",
  "source": {
    "blob": "50f4e5057262f09ba18aabcde85a7aed34ce0a29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 16,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant552140f63d6a304c68ee4e7e5c1054df5629bb2ca6e2de8bd732663a3adf9fca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe85ac38fb0a1c282bd8557bdb22f6373f4e4bc2a09320021a08475b6a9142df",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant552140f63d6a304c68ee4e7e5c1054df5629bb2ca6e2de8bd732663a3adf9fca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de553d61d523c673863c1489b877bc2372c12f5b6de6dd06b3e728f8509d12e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def merge (lt : α → α → Bool) (xs ys : Array α) : Array α :=
  go (Array.mkEmpty (xs.size + ys.size)) 0 0
where
  /-- Auxiliary definition for `merge`. -/
  go (acc : Array α) (i j : Nat) : Array α :=
    if hi : i ≥ xs.size then
      acc ++ ys[j:]
    else if hj : j ≥ ys.size then
      acc ++ xs[i:]
    else
      let x := xs[i]
      let y := ys[j]
      if lt x y then go (acc.push x) (i + 1) j else go (acc.push y) i (j + 1)
  termination_by xs.size + ys.size - (i + j)

-- We name `ord` so it can be provided as a named argument.
set_option linter.unusedVariables.funArgs false in
/--
`O(|xs| + |ys|)`. Merge arrays `xs` and `ys`, which must be sorted according to `compare` and must
not contain duplicates. Equal elements are merged using `merge`. If `merge` respects the order
(i.e. for all `x`, `y`, `y'`, `z`, if `x < y < z` and `x < y' < z` then `x < merge y y' < z`)
then the resulting array is again sorted.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant552140f63d6a304c68ee4e7e5c1054df5629bb2ca6e2de8bd732663a3adf9fca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant552140f63d6a304c68ee4e7e5c1054df5629bb2ca6e2de8bd732663a3adf9fca.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f4e5057262f09ba18aabcde85a7aed34ce0a29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
