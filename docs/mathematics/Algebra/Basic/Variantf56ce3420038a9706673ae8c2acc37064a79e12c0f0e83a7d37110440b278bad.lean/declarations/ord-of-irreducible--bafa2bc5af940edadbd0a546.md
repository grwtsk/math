# ord_of_irreducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b79d08d5d6c88dbf95d1a4a3bc7f29673052eda",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f9af281-1fcb-b349-5b1b-a8342e756da4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:121e3f24-c6f4-b4da-8d0c-4475bb264538",
  "kind": "theorem",
  "lexical_name": "ord_of_irreducible",
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
  "slug": "ord-of-irreducible--bafa2bc5af940edadbd0a546",
  "source": {
    "blob": "6b79d08d5d6c88dbf95d1a4a3bc7f29673052eda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 216,
    "path": "GRWTSK/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bafa2bc5af940edadbd0a546c85f14236783e14d63b1d50fa09e8e33d5904c81",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:121e3f24-c6f4-b4da-8d0c-4475bb264538`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ord_of_irreducible {ϖ : R} (hϖ : Irreducible ϖ) : ord R ϖ = 1 := by
  rw [Ring.ord, Module.length_eq_one_iff]
  have : (Ideal.span {ϖ}).IsMaximal :=
    PrincipalIdealRing.isMaximal_of_irreducible hϖ
  rw [isSimpleModule_iff_isSimpleModule_of_algebraMap_surjective (S := R ⧸ Ideal.span {ϖ})
    Ideal.Quotient.mk_surjective]
  let := Ideal.Quotient.field (Ideal.span {ϖ})
  exact instIsSimpleModule _

end IsPrincipalIdealRing

variable (R)

open scoped Classical in
/--
Zero-preserving monoid homomorphism from a nontrivial commutative ring `R` to `ℤᵐ⁰`.

Note that we cannot just use `fun x ↦ ord R x` without further assumptions on `R`.
This is because if R is finite length, then ord R 0 will be some non-top value,
meaning in this case `0` will not be mapped to `⊤`.
-/
@[stacks 02MD]
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b79d08d5d6c88dbf95d1a4a3bc7f29673052eda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
