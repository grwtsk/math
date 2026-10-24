# MulChar.IsQuadratic.gaussSum_frob_iter

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
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a26cbc8-e35f-a3ef-eea9-378ebb4a77d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59717458-65f6-6d1b-c6d0-c9ca126dddff",
  "kind": "theorem",
  "lexical_name": "MulChar.IsQuadratic.gaussSum_frob_iter",
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
  "slug": "mulchar-isquadratic-gausssum-frob-iter--a51dee41de316cc0e08c5c6a",
  "source": {
    "blob": "d6a3d8af606da8f5e36b55822c8a76af90220b08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 201,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a51dee41de316cc0e08c5c6a71e8632a3ffefea6c8c58435f85f8d8690d4c8f0",
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

Occurrence: `result:59717458-65f6-6d1b-c6d0-c9ca126dddff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MulChar.IsQuadratic.gaussSum_frob_iter (n : ℕ) (hp : IsUnit (p : R)) {χ : MulChar R R'}
    (hχ : IsQuadratic χ) (ψ : AddChar R R') :
    gaussSum χ ψ ^ p ^ n = χ ((p : R) ^ n) * gaussSum χ ψ := by
  induction n with
  | zero => rw [pow_zero, pow_one, pow_zero, MulChar.map_one, one_mul]
  | succ n ih =>
    rw [pow_succ, pow_mul, ih, mul_pow, hχ.gaussSum_frob _ hp, ← mul_assoc, pow_succ, map_mul,
      ← pow_apply' χ fp.1.ne_zero ((p : R) ^ n), hχ.pow_char p]

end gaussSum_frob

/-!
### Values of quadratic characters
-/

section GaussSumValues

variable {R : Type u} [CommRing R] [Fintype R] {R' : Type v} [CommRing R'] [IsDomain R']

/-- If the square of the Gauss sum of a quadratic character is `χ(-1) * #R`,
then we get, for all `n : ℕ`, the relation `(χ(-1) * #R) ^ (p^n/2) = χ(p^n)`,
where `p` is the (odd) characteristic of the target ring `R'`.
This version can be used when `R` is not a field, e.g., `ℤ/8ℤ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6a3d8af606da8f5e36b55822c8a76af90220b08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
