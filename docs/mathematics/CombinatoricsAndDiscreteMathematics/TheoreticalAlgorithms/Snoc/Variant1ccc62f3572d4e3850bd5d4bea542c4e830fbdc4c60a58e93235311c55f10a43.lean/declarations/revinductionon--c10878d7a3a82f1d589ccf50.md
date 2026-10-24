# revInductionOn₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f24f9845ce193d85983eced02654cdf5ae474b8476f1952c0a7504490a2b504",
  "kind": "def",
  "lexical_name": "revInductionOn₂",
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
  "slug": "revinductionon--c10878d7a3a82f1d589ccf50",
  "source": {
    "blob": "400e6191966a695f57804f9440c3a7586c74c1a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 92,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c10878d7a3a82f1d589ccf5037cf073d6c94fb138ae899437d1600dfa5b17fb7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f24f9845ce193d85983eced02654cdf5ae474b8476f1952c0a7504490a2b504`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def revInductionOn₂ {C : ∀ {n : ℕ}, Vector α n → Vector β n → Sort*} {n : ℕ}
    (v : Vector α n) (w : Vector β n)
    (nil : C nil nil)
    (snoc : ∀ {n : ℕ} (xs : Vector α n) (ys : Vector β n) (x : α) (y : β),
      C xs ys → C (xs.snoc x) (ys.snoc y)) :
    C v w :=
  cast (by simp) <| inductionOn₂
    (C := fun v w => C v.reverse w.reverse)
    v.reverse
    w.reverse
    nil
    (@fun n x y xs ys (r : C xs.reverse ys.reverse) =>
      cast (by simp) <| snoc xs.reverse ys.reverse x y r)

/-- Define `C v` by *reverse* case analysis, i.e. by handling the cases `nil` and `xs.snoc x`
    separately -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant1ccc62f3572d4e3850bd5d4bea542c4e830fbdc4c60a58e93235311c55f10a43.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `400e6191966a695f57804f9440c3a7586c74c1a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
