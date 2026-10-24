# MulChar.IsQuadratic.gaussSum_frob

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6a3d8af606da8f5e36b55822c8a76af90220b08",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c54ab47f-2894-c894-898a-d254c85d8357",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65561202-319d-bf96-9549-37bbb239aece",
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
  "slug": "mulchar-isquadratic-gausssum-frob--39d28996ceaabcde24cfe6ae",
  "source": {
    "blob": "d6a3d8af606da8f5e36b55822c8a76af90220b08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 191,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39d28996ceaabcde24cfe6aef92bac085ad110f471000b637e2256af9c6ef83f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65561202-319d-bf96-9549-37bbb239aece`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MulChar.IsQuadratic.gaussSum_frob (hp : IsUnit (p : R)) {χ : MulChar R R'}
    (hχ : IsQuadratic χ) (ψ : AddChar R R') :
    gaussSum χ ψ ^ p = χ p * gaussSum χ ψ := by
  rw [_root_.gaussSum_frob, pow_mulShift, hχ.pow_char p, ← gaussSum_mulShift χ ψ hp.unit,
    ← mul_assoc, hp.unit_spec, ← pow_two, ← pow_apply' _ two_ne_zero, hχ.sq_eq_one, ← hp.unit_spec,
    one_apply_coe, one_mul]

/-- For a quadratic character `χ` and when the characteristic `p` of the target ring
is a unit in the source ring and `n` is a natural number, the `p^n`th power of the Gauss
sum of`χ` and `ψ` is `χ (p^n)` times the original Gauss sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6a3d8af606da8f5e36b55822c8a76af90220b08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
