# _root_.GRWTSK.Algebra.LinearAlgebra.RestrictScalars.Variantebb5bd828f016d28fae642cd40a4f0b6249e4e1591f2113392ccc714455ae797.Module.End.isUnit_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49d0ca02-5057-5804-42ad-6cb5bcd12968",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.RestrictScalars.Variantebb5bd828f016d28fae642cd40a4f0b6249e4e1591f2113392ccc714455ae797.Module.End.isUnit_iff",
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
  "slug": "root-grwtsk-algebra-linearalgebra-restrictscalars-variantebb5bd828f016d2--d81d8d87d88b54a4a158f466",
  "source": {
    "blob": "1b1a32462501b2a2ccd75ec9f533be8a26fdfe41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 70,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantf47a672950cb1db49fc5489132f43f55e4398403a9eea2013dca229e6b2a9408.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d81d8d87d88b54a4a158f466141ebf0e04b9651e49280758c39ab25e766240de",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantf47a672950cb1db49fc5489132f43f55e4398403a9eea2013dca229e6b2a9408.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49d0ca02-5057-5804-42ad-6cb5bcd12968`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.RestrictScalars.Variantebb5bd828f016d28fae642cd40a4f0b6249e4e1591f2113392ccc714455ae797.Module.End.isUnit_iff [Module R M] (f : Module.End R M) :
    IsUnit f ↔ Function.Bijective f :=
  ⟨fun h ↦
    Function.bijective_iff_has_inverse.mpr <|
      ⟨h.unit.inv,
        ⟨Module.End.isUnit_inv_apply_apply_of_isUnit h,
        Module.End.isUnit_apply_inv_apply_of_isUnit h⟩⟩,
    fun H ↦
    let e : M ≃ₗ[R] M := { f, Equiv.ofBijective f H with }
    ⟨⟨_, e.symm, LinearMap.ext e.right_inv, LinearMap.ext e.left_inv⟩, rfl⟩⟩

@[deprecated (since := "2025-04-28")]
alias _root_.Module.End_isUnit_iff := _root_.GRWTSK.Algebra.LinearAlgebra.RestrictScalars.Variantebb5bd828f016d28fae642cd40a4f0b6249e4e1591f2113392ccc714455ae797.Module.End.isUnit_iff

section Automorphisms

variable [Module R M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantf47a672950cb1db49fc5489132f43f55e4398403a9eea2013dca229e6b2a9408.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantf47a672950cb1db49fc5489132f43f55e4398403a9eea2013dca229e6b2a9408.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b1a32462501b2a2ccd75ec9f533be8a26fdfe41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
