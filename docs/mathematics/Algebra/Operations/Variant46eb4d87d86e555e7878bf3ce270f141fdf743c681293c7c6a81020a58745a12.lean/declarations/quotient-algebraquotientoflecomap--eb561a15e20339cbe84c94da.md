# Quotient.algebraQuotientOfLEComap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:799eabb50d91b63e497705dd2664e0e0cf5111f7c3764954bf3025bf679190b5",
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
  "slug": "quotient-algebraquotientoflecomap--eb561a15e20339cbe84c94da",
  "source": {
    "blob": "c103efaa582c7a17045232e2bd5f056e0a0b5f42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 666,
    "line": 655,
    "path": "GRWTSK/Algebra/Operations/Variant46eb4d87d86e555e7878bf3ce270f141fdf743c681293c7c6a81020a58745a12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb561a15e20339cbe84c94da1e6b774267ab104c81b730fccb8b2d55bfcf6724",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant46eb4d87d86e555e7878bf3ce270f141fdf743c681293c7c6a81020a58745a12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:799eabb50d91b63e497705dd2664e0e0cf5111f7c3764954bf3025bf679190b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 655–666.

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

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant46eb4d87d86e555e7878bf3ce270f141fdf743c681293c7c6a81020a58745a12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant46eb4d87d86e555e7878bf3ce270f141fdf743c681293c7c6a81020a58745a12.lean#L655).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c103efaa582c7a17045232e2bd5f056e0a0b5f42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
