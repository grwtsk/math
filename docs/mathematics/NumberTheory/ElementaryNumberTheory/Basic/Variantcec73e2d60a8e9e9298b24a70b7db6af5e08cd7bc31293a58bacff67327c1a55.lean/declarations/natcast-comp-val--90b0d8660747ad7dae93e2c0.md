# natCast_comp_val

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f547a9b-6432-8c89-8acc-31a5425d9c0b",
  "kind": "theorem",
  "lexical_name": "natCast_comp_val",
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
  "slug": "natcast-comp-val--90b0d8660747ad7dae93e2c0",
  "source": {
    "blob": "c466e569a7d820ea4628e3262dfca74a72dd43b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 255,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantcec73e2d60a8e9e9298b24a70b7db6af5e08cd7bc31293a58bacff67327c1a55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90b0d8660747ad7dae93e2c0f6b6534e1a931089d12d21377a41b76b3a642543",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variantcec73e2d60a8e9e9298b24a70b7db6af5e08cd7bc31293a58bacff67327c1a55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f547a9b-6432-8c89-8acc-31a5425d9c0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natCast_comp_val [NeZero n] : ((↑) : ℕ → R) ∘ (val : ZMod n → ℕ) = cast := by
  cases n
  · cases NeZero.ne 0 rfl
  rfl

set_option backward.isDefEq.respectTransparency false in
/-- The coercions are respectively `Int.cast`, `ZMod.cast`, and `ZMod.cast`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variantcec73e2d60a8e9e9298b24a70b7db6af5e08cd7bc31293a58bacff67327c1a55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantcec73e2d60a8e9e9298b24a70b7db6af5e08cd7bc31293a58bacff67327c1a55.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c466e569a7d820ea4628e3262dfca74a72dd43b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
