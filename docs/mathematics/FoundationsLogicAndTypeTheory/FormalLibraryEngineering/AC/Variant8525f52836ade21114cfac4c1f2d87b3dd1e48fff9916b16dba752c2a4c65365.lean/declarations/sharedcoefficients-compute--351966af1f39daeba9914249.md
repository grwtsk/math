# SharedCoefficients.compute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4382d3be632a443fb346fd11ebb2b3d2d7bac304880d99dc6efb659358a5bc83",
  "kind": "def",
  "lexical_name": "SharedCoefficients.compute",
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
  "slug": "sharedcoefficients-compute--351966af1f39daeba9914249",
  "source": {
    "blob": "a870cf98f43dfa2e50523d59cfe3ec39c5c19b82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 196,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:351966af1f39daeba99142493aa737083d3881f5b59749359f305691fe7f5f10",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4382d3be632a443fb346fd11ebb2b3d2d7bac304880d99dc6efb659358a5bc83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SharedCoefficients.compute (x y : CoefficientsMap) : VarStateM SharedCoefficients := do
  let swappedXy := x.size > y.size
  let (x, y) := if swappedXy then (y, x) else (x, y)
  -- This is O(|x|) = O(min(|x|, |y|)) as we sort by size above.
  let common : CoefficientsMap := x.fold (init := {}) fun common idx xCnt =>
    match y[idx]? with
    | some yCnt => common.insert idx <| min xCnt yCnt
    | _ => common

  let x : CoefficientsMap := common.fold (init := x) fun x idx commonCnt =>
    x.modify idx (fun cnt => cnt - commonCnt)

  let y : CoefficientsMap := common.fold (init := y) fun y idx commonCnt =>
    y.modify idx (fun cnt => cnt - commonCnt)

  let (x, y) := if swappedXy then (y, x) else (x, y)
  return { x, y, common }

/-- Compute the canonical expression for a given set of coefficients.
Returns `none` if all coefficients are zero.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a870cf98f43dfa2e50523d59cfe3ec39c5c19b82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
