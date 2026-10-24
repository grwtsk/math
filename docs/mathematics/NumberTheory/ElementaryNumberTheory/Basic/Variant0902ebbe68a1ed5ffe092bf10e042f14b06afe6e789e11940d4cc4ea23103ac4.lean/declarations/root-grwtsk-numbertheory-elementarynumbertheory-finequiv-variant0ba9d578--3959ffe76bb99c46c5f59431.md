# _root_.GRWTSK.NumberTheory.ElementaryNumberTheory.FinEquiv.Variant0ba9d578ac3bc2d6d8fc7c0c29964c3042ff8984b5665c758a58fa5cef67d983.Prod.snd_zmod_cast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c444a9f3-698d-b97a-5be6-d1fad42a44a5",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.NumberTheory.ElementaryNumberTheory.FinEquiv.Variant0ba9d578ac3bc2d6d8fc7c0c29964c3042ff8984b5665c758a58fa5cef67d983.Prod.snd_zmod_cast",
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
  "slug": "root-grwtsk-numbertheory-elementarynumbertheory-finequiv-variant0ba9d578--3959ffe76bb99c46c5f59431",
  "source": {
    "blob": "ce55d9d4545548f1af235ca01c960aab74f90e91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 189,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant0902ebbe68a1ed5ffe092bf10e042f14b06afe6e789e11940d4cc4ea23103ac4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3959ffe76bb99c46c5f594317e9bc8f74fa989260b914624eb138e84a638e9be",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant0902ebbe68a1ed5ffe092bf10e042f14b06afe6e789e11940d4cc4ea23103ac4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c444a9f3-698d-b97a-5be6-d1fad42a44a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.NumberTheory.ElementaryNumberTheory.FinEquiv.Variant0ba9d578ac3bc2d6d8fc7c0c29964c3042ff8984b5665c758a58fa5cef67d983.Prod.snd_zmod_cast (a : ZMod n) : (cast a : R × S).snd = cast a := by
  cases n
  · rfl
  · simp [ZMod.cast]

end

/-- So-named because the coercion is `Nat.cast` into `ZMod`. For `Nat.cast` into an arbitrary ring,
see `ZMod.natCast_val`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant0902ebbe68a1ed5ffe092bf10e042f14b06afe6e789e11940d4cc4ea23103ac4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant0902ebbe68a1ed5ffe092bf10e042f14b06afe6e789e11940d4cc4ea23103ac4.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce55d9d4545548f1af235ca01c960aab74f90e91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
