# range'_eq_range'TR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c508a8c-1a8f-8b84-f87c-58c05500189e",
  "kind": "theorem",
  "lexical_name": "range'_eq_range'TR",
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
  "slug": "range-eq-range-tr--11d8e8014ffce7c7d7990b73",
  "source": {
    "blob": "aa5e35378b6eab59b08beb521645cfe03fd1cd30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2625,
    "line": 2598,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd3b7b17ebd20cc09d7db5e34dcd303490838683e5a66bfb56b57818f5f04150c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11d8e8014ffce7c7d7990b73b2b0d3207e02e48e8edc99108fad2e7d2aaf175e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd3b7b17ebd20cc09d7db5e34dcd303490838683e5a66bfb56b57818f5f04150c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c508a8c-1a8f-8b84-f87c-58c05500189e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2598–2625.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[csimp] theorem range'_eq_range'TR : @range' = @range'TR := by
  apply funext; intro s; apply funext; intro n; apply funext; intro step
  let rec go (s) : ∀ n m,
    range'TR.go step n (s + step * n) (range' (s + step * n) m step) = range' s (n + m) step
  | 0, m => by simp [range'TR.go]
  | n+1, m => by
    simp [range'TR.go]
    rw [Nat.mul_succ, ← Nat.add_assoc, Nat.add_sub_cancel, Nat.add_right_comm n]
    exact go s n (m + 1)
  exact (go s n 0).symm

/-! ## Other list operations -/

/-! ### intersperse -/

/--
Alternates the elements of `l` with `sep`.

`O(|l|)`.

This is a tail-recursive version of `List.intersperse`, used at runtime.

Examples:
* `List.intersperseTR "then" [] = []`
* `List.intersperseTR "then" ["walk"] = ["walk"]`
* `List.intersperseTR "then" ["walk", "run"] = ["walk", "then", "run"]`
* `List.intersperseTR "then" ["walk", "run", "rest"] = ["walk", "then", "run", "then", "rest"]`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd3b7b17ebd20cc09d7db5e34dcd303490838683e5a66bfb56b57818f5f04150c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd3b7b17ebd20cc09d7db5e34dcd303490838683e5a66bfb56b57818f5f04150c.lean#L2598).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa5e35378b6eab59b08beb521645cfe03fd1cd30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
