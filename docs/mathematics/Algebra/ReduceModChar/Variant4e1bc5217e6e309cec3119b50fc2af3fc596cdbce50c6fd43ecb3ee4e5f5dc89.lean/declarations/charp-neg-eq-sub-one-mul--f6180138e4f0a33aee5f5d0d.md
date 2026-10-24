# CharP.neg_eq_sub_one_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2a668ab-a89e-2adc-6c69-598cca7d3673",
  "kind": "lemma",
  "lexical_name": "CharP.neg_eq_sub_one_mul",
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
  "slug": "charp-neg-eq-sub-one-mul--f6180138e4f0a33aee5f5d0d",
  "source": {
    "blob": "069ecae606bea5cefcd387aff9a1be100f1f8393",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 118,
    "path": "GRWTSK/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6180138e4f0a33aee5f5d0d5f15a6453ab1a92413f949ea3e150153312e31e1",
  "verification": {
    "reference": "docs/verification/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2a668ab-a89e-2adc-6c69-598cca7d3673`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CharP.neg_eq_sub_one_mul {α : Type _} [Ring α] (n : ℕ) (inst : CharP α n) (b : α)
    (a : ℕ) (a' : α) (p : IsNat (n - 1 : α) a) (pa : a = a') :
    -b = a' * b := by
  rw [← pa, ← p.out, ← neg_one_mul]
  simp

/-- Given an expression `(-e) : t` such that `t` is a ring of characteristic `n`,
simplify this to `(n - 1) * e`.

This should be called only when `normIntNumeral` fails, because `normIntNumeral` would otherwise
be more useful by evaluating `-e` mod `n` to an actual numeral.
-/
@[nolint unusedHavesSuffices] -- the `=Q` is necessary for type checking
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `069ecae606bea5cefcd387aff9a1be100f1f8393` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
