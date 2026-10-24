# radical_eq_jacobson_iff_radical_quotient_eq_jacobson_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e182bb40-2c61-7cd7-3cdc-c3b883dc43a7",
  "kind": "theorem",
  "lexical_name": "radical_eq_jacobson_iff_radical_quotient_eq_jacobson_bot",
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
  "slug": "radical-eq-jacobson-iff-radical-quotient-eq-jacobson-bot--1c8331ba10b2fcf2b2be7dec",
  "source": {
    "blob": "804c919e41f6f36a4864dcab95dfeba61fb19258",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 323,
    "path": "GRWTSK/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c8331ba10b2fcf2b2be7decbcc486d16e23dfc567cf8fed3e561d0cd7b57c31",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e182bb40-2c61-7cd7-3cdc-c3b883dc43a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem radical_eq_jacobson_iff_radical_quotient_eq_jacobson_bot :
    I.radical = I.jacobson ↔ radical (⊥ : Ideal (R ⧸ I)) = jacobson ⊥ := by
  have hf : Function.Surjective (Ideal.Quotient.mk I) := Submodule.Quotient.mk_surjective I
  constructor
  · intro h
    have := congr_arg (map (Ideal.Quotient.mk I)) h
    rw [map_radical_of_surjective hf (le_of_eq mk_ker),
      map_jacobson_of_surjective hf (le_of_eq mk_ker)] at this
    simpa using this
  · intro h
    have := congr_arg (comap (Ideal.Quotient.mk I)) h
    rw [comap_radical, comap_jacobson_of_surjective hf,
      ← RingHom.ker_eq_comap_bot (Ideal.Quotient.mk I)] at this
    simpa using this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `804c919e41f6f36a4864dcab95dfeba61fb19258` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
