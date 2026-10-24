# conductorThreeVaughanRightSecondMoment_le_lcmEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30bda2dfd0cd32d832ef0f8052b1c0fa2dbd1188",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e8bf132ede53fb3a895798fb14e500c48b7924ee4740c28c86d0933687b59840.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eeb7a4c2-b2e2-42dd-b8b0-16989bf2306e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5bedc6d-4dd1-07c7-2f41-fe3934a515fc",
  "kind": "theorem",
  "lexical_name": "conductorThreeVaughanRightSecondMoment_le_lcmEnvelope",
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
  "slug": "conductorthreevaughanrightsecondmoment-le-lcmenvelope--2bf1679fd41e5426851b8525",
  "source": {
    "blob": "30bda2dfd0cd32d832ef0f8052b1c0fa2dbd1188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 182,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightSecondMoment/Variante8bf132ede53fb3a895798fb14e500c48b7924ee4740c28c86d0933687b59840.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bf1679fd41e5426851b8525e6f8b5ece999c5f748a2f72d84def5bf15aa345f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightSecondMoment/Variante8bf132ede53fb3a895798fb14e500c48b7924ee4740c28c86d0933687b59840.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5bedc6d-4dd1-07c7-2f41-fe3934a515fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreeVaughanRightSecondMoment_le_lcmEnvelope
    (V X : ℕ) :
    conductorThreeVaughanRightSecondMoment V X ≤
      truncatedDivisorLcmEnvelope V X := by
  rw [← sum_truncatedDivisorCountReal_sq_eq_lcmEnvelope]
  apply Finset.sum_le_sum
  intro k hk
  rw [truncatedDivisorCountReal_eq]
  have hcoefficient :=
    abs_vaughanDivisorCoefficient_le_truncatedDivisorCount V k
  have hcharacter := abs_conductorThreeIntegerValue_cast_le_one k
  rw [abs_mul]
  gcongr
  exact (mul_le_mul hcharacter hcoefficient (abs_nonneg _) (by norm_num)).trans_eq
    (one_mul _)

/-! ## Harmonic envelope bound -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightSecondMoment/Variante8bf132ede53fb3a895798fb14e500c48b7924ee4740c28c86d0933687b59840.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightSecondMoment/Variante8bf132ede53fb3a895798fb14e500c48b7924ee4740c28c86d0933687b59840.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30bda2dfd0cd32d832ef0f8052b1c0fa2dbd1188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
