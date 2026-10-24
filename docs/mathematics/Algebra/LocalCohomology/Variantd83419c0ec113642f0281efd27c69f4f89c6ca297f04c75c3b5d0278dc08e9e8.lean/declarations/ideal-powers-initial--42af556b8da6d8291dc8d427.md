# ideal_powers_initial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9323abe9886f96a863f1d8e204198cfab2319a0b795cec0d65965388ea7b9ff4",
  "kind": "instance",
  "lexical_name": "ideal_powers_initial",
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
  "slug": "ideal-powers-initial--42af556b8da6d8291dc8d427",
  "source": {
    "blob": "8cebfd9b542eb9e8203bfbcb806ae9f1adc818d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 212,
    "path": "GRWTSK/Algebra/LocalCohomology/Variantd83419c0ec113642f0281efd27c69f4f89c6ca297f04c75c3b5d0278dc08e9e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42af556b8da6d8291dc8d427cc84e67cfdb3fdf2573a58ef33fe20dce64967bb",
  "verification": {
    "reference": "docs/verification/Algebra/LocalCohomology/Variantd83419c0ec113642f0281efd27c69f4f89c6ca297f04c75c3b5d0278dc08e9e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9323abe9886f96a863f1d8e204198cfab2319a0b795cec0d65965388ea7b9ff4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ideal_powers_initial [hR : IsNoetherian R R] :
    Functor.Initial (idealPowersToSelfLERadical J) where
  out J' := by
    apply (config := { allowSynthFailures := true }) zigzag_isConnected
    · obtain ⟨k, hk⟩ := Ideal.exists_pow_le_of_le_radical_of_fg J'.2 (isNoetherian_def.mp hR _)
      exact ⟨CostructuredArrow.mk (⟨⟨hk⟩⟩ : (idealPowersToSelfLERadical J).obj (op k) ⟶ J')⟩
    · intro j1 j2
      apply Relation.ReflTransGen.single
      -- The inclusions `J^n1 ≤ J'` and `J^n2 ≤ J'` always form a triangle, based on
      -- which exponent is larger.
      rcases le_total (unop j1.left) (unop j2.left) with h | h
      · right; exact ⟨CostructuredArrow.homMk (homOfLE h).op rfl⟩
      · left; exact ⟨CostructuredArrow.homMk (homOfLE h).op rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalCohomology/Variantd83419c0ec113642f0281efd27c69f4f89c6ca297f04c75c3b5d0278dc08e9e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalCohomology/Variantd83419c0ec113642f0281efd27c69f4f89c6ca297f04c75c3b5d0278dc08e9e8.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cebfd9b542eb9e8203bfbcb806ae9f1adc818d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
