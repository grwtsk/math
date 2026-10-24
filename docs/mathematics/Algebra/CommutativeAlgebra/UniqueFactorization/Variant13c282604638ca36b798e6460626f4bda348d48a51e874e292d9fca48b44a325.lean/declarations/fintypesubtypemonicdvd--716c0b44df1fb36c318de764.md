# fintypeSubtypeMonicDvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:244d92e6c14d6608c58419dfb8dc80636f948675189fecb37e89110eecae50f2",
  "kind": "def",
  "lexical_name": "fintypeSubtypeMonicDvd",
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
  "slug": "fintypesubtypemonicdvd--716c0b44df1fb36c318de764",
  "source": {
    "blob": "b19d550097f568d522124d676f3ca68c76132560",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 103,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/UniqueFactorization/Variant13c282604638ca36b798e6460626f4bda348d48a51e874e292d9fca48b44a325.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:716c0b44df1fb36c318de76487493f82a6559152b2f453283f366e0198e065c1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/UniqueFactorization/Variant13c282604638ca36b798e6460626f4bda348d48a51e874e292d9fca48b44a325.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:244d92e6c14d6608c58419dfb8dc80636f948675189fecb37e89110eecae50f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def fintypeSubtypeMonicDvd (f : D[X]) (hf : f ≠ 0) :
    Fintype { g : D[X] // g.Monic ∧ g ∣ f } := by
  set G := { g : D[X] // g.Monic ∧ g ∣ f }
  let y : Associates D[X] := Associates.mk f
  have hy : y ≠ 0 := Associates.mk_ne_zero.mpr hf
  let H := { x : Associates D[X] // x ∣ y }
  let hfin : Fintype H := UniqueFactorizationMonoid.fintypeSubtypeDvd y hy
  let i : G → H := fun x ↦ ⟨Associates.mk x.1, Associates.mk_dvd_mk.2 x.2.2⟩
  refine Fintype.ofInjective i fun x y heq ↦ ?_
  rw [Subtype.mk.injEq] at heq ⊢
  exact eq_of_monic_of_associated x.2.1 y.2.1 (Associates.mk_eq_mk_iff_associated.mp heq)

end Polynomial

namespace MvPolynomial
variable (d : ℕ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/UniqueFactorization/Variant13c282604638ca36b798e6460626f4bda348d48a51e874e292d9fca48b44a325.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/UniqueFactorization/Variant13c282604638ca36b798e6460626f4bda348d48a51e874e292d9fca48b44a325.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b19d550097f568d522124d676f3ca68c76132560` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
