# Quotient.algebraQuotientOfLEComap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2494e0c8428eecbd961b35362e901f4976f202590f978ba2cd85c06cdaee804b",
  "kind": "abbrev",
  "lexical_name": "Quotient.algebraQuotientOfLEComap",
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
  "slug": "quotient-algebraquotientoflecomap--05317b4c06d06bd9686e0fb7",
  "source": {
    "blob": "f629b058eaee4a3ae1a63b2725a63a0a0ab6d0fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 658,
    "line": 647,
    "path": "GRWTSK/Algebra/Operations/Variante18903bb420e80c43302a9c23b676795804d8fd0628da38eb58eb182bdec04a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05317b4c06d06bd9686e0fb766afb6745ea042de1ac64d0c67726b93e8e5e114",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variante18903bb420e80c43302a9c23b676795804d8fd0628da38eb58eb182bdec04a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2494e0c8428eecbd961b35362e901f4976f202590f978ba2cd85c06cdaee804b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 647–658.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev Quotient.algebraQuotientOfLEComap {R} [CommRing R] [Algebra R A] {p : Ideal R}
    {P : Ideal A} [P.IsTwoSided] (h : p ≤ comap (algebraMap R A) P) :
    Algebra (R ⧸ p) (A ⧸ P) where
  algebraMap := quotientMap P (algebraMap R A) h
  smul := Quotient.lift₂ (⟦· • ·⟧) fun r₁ a₁ r₂ a₂ hr ha ↦ Quotient.sound <| by
    have := h (p.quotientRel_def.mp hr)
    rw [mem_comap, map_sub] at this
    simpa only [Algebra.smul_def] using P.quotientRel_def.mpr
      (P.mul_sub_mul_mem this <| P.quotientRel_def.mp ha)
  smul_def' := by rintro ⟨_⟩ ⟨_⟩; exact congr_arg (⟦·⟧) (Algebra.smul_def _ _)
  commutes' := by rintro ⟨_⟩ ⟨_⟩; exact congr_arg (⟦·⟧) (Algebra.commutes _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variante18903bb420e80c43302a9c23b676795804d8fd0628da38eb58eb182bdec04a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variante18903bb420e80c43302a9c23b676795804d8fd0628da38eb58eb182bdec04a2.lean#L647).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f629b058eaee4a3ae1a63b2725a63a0a0ab6d0fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
