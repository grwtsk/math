# freyThreePortMaximalMinorIdeal_eq_top_of_bezout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2af9968-a67e-899d-a922-d001f26da3da",
  "kind": "theorem",
  "lexical_name": "freyThreePortMaximalMinorIdeal_eq_top_of_bezout",
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
  "slug": "freythreeportmaximalminorideal-eq-top-of-bezout--0dd155fbeb8051ad86aa1ddf",
  "source": {
    "blob": "d53ae46a7f0e4224eac7c639e98ef00e414295e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 44,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dd155fbeb8051ad86aa1ddf1d118b1ff990c4bf13f62dc685b5366e10f95d9f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2af9968-a67e-899d-a922-d001f26da3da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem freyThreePortMaximalMinorIdeal_eq_top_of_bezout
    {a b r s : ℤ} (hbezout : r * a + s * b = 1) :
    freyThreePortMaximalMinorIdeal a b = ⊤ := by
  let I := freyThreePortMaximalMinorIdeal a b
  have ha : a ∈ I := by
    apply Ideal.subset_span
    refine ⟨(0 : Fin 3), ?_⟩
    rw [freyThreePortMaximalMinors_eq]
    rfl
  have hnb : -b ∈ I := by
    apply Ideal.subset_span
    refine ⟨(1 : Fin 3), ?_⟩
    rw [freyThreePortMaximalMinors_eq]
    rfl
  rw [Ideal.eq_top_iff_one]
  have hra : r * a ∈ I := I.mul_mem_left r ha
  have hsb : s * b ∈ I := by
    have h := I.mul_mem_left (-s) hnb
    convert h using 1 <;> ring
  rw [← hbezout]
  exact I.add_mem hra hsb

/-- The single compatibility obstruction for a three-port value vector. Its
kernel is exactly the image of evaluation when a Bézout identity is supplied. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d53ae46a7f0e4224eac7c639e98ef00e414295e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
