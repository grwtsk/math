# MulChar.IsQuadratic.gaussSum_frob

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:584412ab-4735-dbd1-e539-5365f879ba6a",
  "kind": "theorem",
  "lexical_name": "MulChar.IsQuadratic.gaussSum_frob",
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
  "slug": "mulchar-isquadratic-gausssum-frob--a47340a3fc9b3fe96b7399f2",
  "source": {
    "blob": "f6bbab1eefc328d0b5abf3ae1937fd8d3cc693e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 262,
    "path": "GRWTSK/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a47340a3fc9b3fe96b7399f2f5d9210ce8d18a809418086623f756e5e57254b9",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:584412ab-4735-dbd1-e539-5365f879ba6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MulChar.IsQuadratic.gaussSum_frob (hp : IsUnit (p : R)) {χ : MulChar R R'}
    (hχ : IsQuadratic χ) (ψ : AddChar R R') :
    gaussSum χ ψ ^ p = χ p * gaussSum χ ψ := by
  rw [_root_.GRWTSK.NumberTheory.GaussSum.Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.gaussSum_frob, pow_mulShift, hχ.pow_char p, ← gaussSum_mulShift χ ψ hp.unit,
    ← mul_assoc, hp.unit_spec, ← pow_two, ← pow_apply' _ two_ne_zero, hχ.sq_eq_one, ← hp.unit_spec,
    one_apply_coe, one_mul]

/-- For a quadratic character `χ` and when the characteristic `p` of the target ring
is a unit in the source ring and `n` is a natural number, the `p^n`th power of the Gauss
sum of `χ` and `ψ` is `χ (p^n)` times the original Gauss sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6bbab1eefc328d0b5abf3ae1937fd8d3cc693e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
