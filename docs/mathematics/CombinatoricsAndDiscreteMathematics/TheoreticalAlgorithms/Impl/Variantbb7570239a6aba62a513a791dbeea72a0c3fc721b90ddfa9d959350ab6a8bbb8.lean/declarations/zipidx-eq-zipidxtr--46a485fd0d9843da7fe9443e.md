# zipIdx_eq_zipIdxTR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25ab244f-a9b1-d88f-b78e-4539dfb69013",
  "kind": "theorem",
  "lexical_name": "zipIdx_eq_zipIdxTR",
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
  "slug": "zipidx-eq-zipidxtr--46a485fd0d9843da7fe9443e",
  "source": {
    "blob": "45a614232e9f6e8dd3bb837139440fd61fdcdb60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 594,
    "line": 564,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46a485fd0d9843da7fe9443e3e4af9f71b10af14ac483f87fbd66880c55f4b83",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25ab244f-a9b1-d88f-b78e-4539dfb69013`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 564–594.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[csimp] theorem zipIdx_eq_zipIdxTR : @zipIdx = @zipIdxTR := by
  funext α l n; simp only [zipIdxTR]
  let f := fun (a : α) (n, acc) => (n-1, (a, n-1) :: acc)
  let rec go : ∀ l i, l.foldr f (i + l.length, []) = (i, zipIdx l i)
    | [], n => rfl
    | a::as, n => by
      rw [← show _ + as.length = n + (a::as).length from Nat.succ_add .., foldr, go as]
      simp [zipIdx, f]
  rw [← Array.foldr_toList]
  simp +zetaDelta [go]

/-! ### enumFrom -/



/-! ## Other list operations -/

/-! ### intercalate -/

set_option linter.listVariables false in
/--
Alternates the lists in `xs` with the separator `sep`.

This is a tail-recursive version of `List.intercalate` used at runtime.

Examples:
* `List.intercalateTR sep [] = []`
* `List.intercalateTR sep [a] = a`
* `List.intercalateTR sep [a, b] = a ++ sep ++ b`
* `List.intercalateTR sep [a, b, c] = a ++ sep ++ b ++ sep ++ c`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean#L564).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45a614232e9f6e8dd3bb837139440fd61fdcdb60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
