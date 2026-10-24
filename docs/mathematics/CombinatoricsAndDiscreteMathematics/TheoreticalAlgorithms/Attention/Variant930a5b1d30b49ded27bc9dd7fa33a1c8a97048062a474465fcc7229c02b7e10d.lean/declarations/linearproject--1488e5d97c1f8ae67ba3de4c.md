# linearProject

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef1bc0721daaa261a50cdfbe83afd1248b06e96465b28b84e7d85ac9173dffc7",
  "kind": "def",
  "lexical_name": "linearProject",
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
  "slug": "linearproject--1488e5d97c1f8ae67ba3de4c",
  "source": {
    "blob": "dee35a77b5b7cc4f8ef7470805b3c5a5bb7e3cb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 172,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1488e5d97c1f8ae67ba3de4cd37a05a2c1fc4e0d0dae70eed39ecd60d35b880d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef1bc0721daaa261a50cdfbe83afd1248b06e96465b28b84e7d85ac9173dffc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def linearProject (X : List IntervalVector) (W : List (List ℚ))
    (prec : Int) : List IntervalVector :=
  X.map (fun x =>
    -- For each input vector, compute W × x
    W.map (fun w_row =>
      -- Dot product of weight row with input
      let products := List.zipWith (fun wi xi =>
        let w_interval := IntervalDyadic.ofIntervalRat (IntervalRat.singleton wi) prec
        IntervalDyadic.mulRounded w_interval xi prec
      ) w_row x
      products.foldl IntervalDyadic.add (IntervalDyadic.singleton (Core.Dyadic.ofInt 0))
    )
  )

/-- Single attention head computation -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dee35a77b5b7cc4f8ef7470805b3c5a5bb7e3cb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
