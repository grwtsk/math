# cardinalMk_closure_le_max

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:400c1ed5-5567-5ced-7b99-a8bade2947f0",
  "kind": "lemma",
  "lexical_name": "cardinalMk_closure_le_max",
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
  "slug": "cardinalmk-closure-le-max--d868f56479cb41058538e888",
  "source": {
    "blob": "77f2c2bee24b4ba4810f62bd988f9601ab5d8b2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Variant2a53ea2849a58b3377525b678cba564a0a082a2e81c013b0ca3db36a70d306fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d868f56479cb41058538e8884b3aabbfb42da16f901e57f65f8e3b924f558bc6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Variant2a53ea2849a58b3377525b678cba564a0a082a2e81c013b0ca3db36a70d306fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:400c1ed5-5567-5ced-7b99-a8bade2947f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cardinalMk_closure_le_max : #(closure s) ≤ max #s ℵ₀ :=
  (Cardinal.mk_le_of_surjective <| surjective_ofWType s).trans <| by
    convert WType.cardinalMk_le_max_aleph0_of_finite' using 1
    · rw [lift_uzero, mk_sum, lift_uzero]
      have : lift.{u,0} #(Fin 6) < ℵ₀ := lift_lt_aleph0.mpr (lt_aleph0_of_finite _)
      obtain h|h := lt_or_le #s ℵ₀
      · rw [max_eq_right h.le, max_eq_right]
        exact (add_lt_aleph0 this h).le
      · rw [max_eq_left h, add_eq_right h (this.le.trans h), max_eq_left h]
    rintro (n|_)
    · fin_cases n <;> (dsimp only [id_eq]; infer_instance)
    infer_instance

@[deprecated (since := "2024-11-10")] alias cardinal_mk_closure_le_max := cardinalMk_closure_le_max

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Variant2a53ea2849a58b3377525b678cba564a0a082a2e81c013b0ca3db36a70d306fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Variant2a53ea2849a58b3377525b678cba564a0a082a2e81c013b0ca3db36a70d306fe.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77f2c2bee24b4ba4810f62bd988f9601ab5d8b2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
