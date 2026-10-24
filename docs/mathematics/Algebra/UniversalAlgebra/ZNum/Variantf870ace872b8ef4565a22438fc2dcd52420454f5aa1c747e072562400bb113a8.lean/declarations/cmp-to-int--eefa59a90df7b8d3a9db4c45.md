# cmp_to_int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d12c1200df459993fcc3223c1efc2fc2cf71b31",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 319,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f870ace872b8ef4565a22438fc2dcd52420454f5aa1c747e072562400bb113a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:55901c34-3647-d2af-e7fd-e2973f7fca76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ef13d62-1c9d-a2e5-6acc-860c43a33a4e",
  "kind": "theorem",
  "lexical_name": "cmp_to_int",
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
  "slug": "cmp-to-int--eefa59a90df7b8d3a9db4c45",
  "source": {
    "blob": "6d12c1200df459993fcc3223c1efc2fc2cf71b31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 319,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ZNum/Variantf870ace872b8ef4565a22438fc2dcd52420454f5aa1c747e072562400bb113a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eefa59a90df7b8d3a9db4c4569c0ceeb2ec59a2d37d20b846e906092d3ab0e19",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ZNum/Variantf870ace872b8ef4565a22438fc2dcd52420454f5aa1c747e072562400bb113a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ef13d62-1c9d-a2e5-6acc-860c43a33a4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cmp_to_int : ∀ m n, (Ordering.casesOn (cmp m n) ((m : ℤ) < n) (m = n) ((n : ℤ) < m) : Prop)
  | 0, 0 => rfl
  | pos a, pos b => by
    have := PosNum.cmp_to_nat a b; revert this; dsimp [cmp]
    cases PosNum.cmp a b <;> dsimp <;> [simp; exact congr_arg pos; simp [GT.gt]]
  | neg a, neg b => by
    have := PosNum.cmp_to_nat b a; revert this; dsimp [cmp]
    cases PosNum.cmp b a <;> dsimp <;> [simp; simp +contextual; simp [GT.gt]]
  | pos _, 0 => PosNum.cast_pos _
  | pos _, neg _ => lt_trans (neg_lt_zero.2 <| PosNum.cast_pos _) (PosNum.cast_pos _)
  | 0, neg _ => neg_lt_zero.2 <| PosNum.cast_pos _
  | neg _, 0 => neg_lt_zero.2 <| PosNum.cast_pos _
  | neg _, pos _ => lt_trans (neg_lt_zero.2 <| PosNum.cast_pos _) (PosNum.cast_pos _)
  | 0, pos _ => PosNum.cast_pos _

@[norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ZNum/Variantf870ace872b8ef4565a22438fc2dcd52420454f5aa1c747e072562400bb113a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ZNum/Variantf870ace872b8ef4565a22438fc2dcd52420454f5aa1c747e072562400bb113a8.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d12c1200df459993fcc3223c1efc2fc2cf71b31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
