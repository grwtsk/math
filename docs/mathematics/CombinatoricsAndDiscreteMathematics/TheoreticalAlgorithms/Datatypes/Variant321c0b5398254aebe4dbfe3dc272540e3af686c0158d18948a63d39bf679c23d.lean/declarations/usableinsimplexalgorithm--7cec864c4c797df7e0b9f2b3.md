# UsableInSimplexAlgorithm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e938d71b9bb7b08f29b98dfb2be78a4e6d1d512e86f7a84990b3533e0a99a05",
  "kind": "class",
  "lexical_name": "UsableInSimplexAlgorithm",
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
  "slug": "usableinsimplexalgorithm--7cec864c4c797df7e0b9f2b3",
  "source": {
    "blob": "91a58cc564e64ab120e4b553b4c4e44adbf13722",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 28,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Datatypes/Variant321c0b5398254aebe4dbfe3dc272540e3af686c0158d18948a63d39bf679c23d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7cec864c4c797df7e0b9f2b3990d2fcbc96e6ba26ccdde5d4c370a8e6493915f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Datatypes/Variant321c0b5398254aebe4dbfe3dc272540e3af686c0158d18948a63d39bf679c23d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e938d71b9bb7b08f29b98dfb2be78a4e6d1d512e86f7a84990b3533e0a99a05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class UsableInSimplexAlgorithm (α : Nat → Nat → Type) where
  /-- Returns `mat[i, j]`. -/
  getElem {n m : Nat} (mat : α n m) (i j : Nat) : Rat
  /-- Sets `mat[i, j]`. -/
  setElem {n m : Nat} (mat : α n m) (i j : Nat) (v : Rat) : α n m
  /-- Returns the list of elements of `mat` in the form `(i, j, mat[i, j])`. -/
  getValues {n m : Nat} (mat : α n m) : List (Nat × Nat × Rat)
  /-- Creates a matrix from a list of elements in the form `(i, j, mat[i, j])`. -/
  ofValues {n m : Nat} (values : List (Nat × Nat × Rat)) : α n m
  /-- Swaps two rows. -/
  swapRows {n m : Nat} (mat : α n m) (i j : Nat) : α n m
  /-- Subtracts `i`-th row multiplied by `coef` from `j`-th row. -/
  subtractRow {n m : Nat} (mat : α n m) (i j : Nat) (coef : Rat) : α n m
  /-- Divides the `i`-th row by `coef`. -/
  divideRow {n m : Nat} (mat : α n m) (i : Nat) (coef : Rat) : α n m

export UsableInSimplexAlgorithm (setElem getValues ofValues swapRows subtractRow divideRow)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Datatypes/Variant321c0b5398254aebe4dbfe3dc272540e3af686c0158d18948a63d39bf679c23d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Datatypes/Variant321c0b5398254aebe4dbfe3dc272540e3af686c0158d18948a63d39bf679c23d.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91a58cc564e64ab120e4b553b4c4e44adbf13722` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
