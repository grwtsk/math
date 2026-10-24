# isAbsoluteValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d9d733ae9f2896a4bfc1a2c773d44d682a059808c26c23e10aaaa606cf643933",
  "kind": "instance",
  "lexical_name": "isAbsoluteValue",
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
  "slug": "isabsolutevalue--f61b6dbf7bc7f4f8e34f2464",
  "source": {
    "blob": "ba8e87ace530fe7820b45a776152d53aa47ceb11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 240,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant8850939c43ad5fe9b58d3e19235eca49e0805d1b26772611a5806aa3959c6535.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f61b6dbf7bc7f4f8e34f24640b2560f5233db5a1ad6caf2f8a71234a5b2d48f1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant8850939c43ad5fe9b58d3e19235eca49e0805d1b26772611a5806aa3959c6535.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d9d733ae9f2896a4bfc1a2c773d44d682a059808c26c23e10aaaa606cf643933`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isAbsoluteValue : IsAbsoluteValue fun z : ℤ_[p] => ‖z‖ where
  abv_nonneg' := norm_nonneg
  abv_eq_zero' := by simp [norm_eq_zero]
  abv_add' := fun ⟨_, _⟩ ⟨_, _⟩ => norm_add_le _ _
  abv_mul' _ _ := by simp only [norm_def, padicNormE.mul, PadicInt.coe_mul]
#align padic_int.is_absolute_value PadicInt.isAbsoluteValue

variable {p}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant8850939c43ad5fe9b58d3e19235eca49e0805d1b26772611a5806aa3959c6535.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant8850939c43ad5fe9b58d3e19235eca49e0805d1b26772611a5806aa3959c6535.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba8e87ace530fe7820b45a776152d53aa47ceb11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
