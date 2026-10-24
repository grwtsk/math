# Ideal.torsionMapQuot_inj'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9dd61eb-10dc-0103-6570-d5f4842ed77d",
  "kind": "theorem",
  "lexical_name": "Ideal.torsionMapQuot_inj'",
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
  "slug": "ideal-torsionmapquot-inj--ceed1aae20861e669b3b14e7",
  "source": {
    "blob": "ca3fd952b6c61a488e929ae1b3243db386c8ad8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 172,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantfe9ea4ef3014f3f228884e60d1e54c62e52c8a148e51887dbf1bed7eadc7f371.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ceed1aae20861e669b3b14e770728cb4cc77674a40ee22d6c8f126854b744d50",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantfe9ea4ef3014f3f228884e60d1e54c62e52c8a148e51887dbf1bed7eadc7f371.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9dd61eb-10dc-0103-6570-d5f4842ed77d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.torsionMapQuot_inj' {P : Ideal (𝓞 K)} [hP : P.IsPrime]
    (hP₁ : Algebra.IsUnramifiedAt ℤ P) (hP₂ : 2 < absNorm (under ℤ P)) {x y : torsion K} :
    P.torsionMapQuot x = P.torsionMapQuot y ↔ x = y :=
  (torsionMapQuot_injective' hP₁ hP₂).eq_iff

/--
If the norm of the (nonzero) prime ideal `P` is coprime with the order of the torsion of `K`, then
the norm of `P` is congruent to `1` modulo `torsionOrder K`.

See `NumberField.torsionOrder_dvd_absNorm_sub_one'` for a version where this coprimality is replaced
by `P` being unramified over `ℤ`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantfe9ea4ef3014f3f228884e60d1e54c62e52c8a148e51887dbf1bed7eadc7f371.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantfe9ea4ef3014f3f228884e60d1e54c62e52c8a148e51887dbf1bed7eadc7f371.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca3fd952b6c61a488e929ae1b3243db386c8ad8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
