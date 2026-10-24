# lieQuotientLieRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dcd2c3d4aa4f4afc84575b122a78420dbfd904b1989b60255c313c7d740aaf39",
  "kind": "instance",
  "lexical_name": "lieQuotientLieRing",
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
  "slug": "liequotientliering--7725dc8d3f90414f6fd99ee5",
  "source": {
    "blob": "27185c213795743c5f35f48cb14d1734de3d51d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 140,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variantf0d03ebc1ca151e97405d058780a70c1db8119aa8f5c2824f5f654ed5992ef35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7725dc8d3f90414f6fd99ee538e3aeb4e3a7e42560021cdd09e513597d5331ec",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variantf0d03ebc1ca151e97405d058780a70c1db8119aa8f5c2824f5f654ed5992ef35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dcd2c3d4aa4f4afc84575b122a78420dbfd904b1989b60255c313c7d740aaf39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance lieQuotientLieRing : LieRing (L ⧸ I) where
  add_lie x' y' z' := by
    induction x', y', z' using Quotient.inductionOn₃' with | _ x y z
    repeat'
      first
      | rw [is_quotient_mk]
      | rw [← mk_bracket]
      | rw [← Submodule.Quotient.mk_add (R := R) (M := L)]
    apply congr_arg; apply add_lie
  lie_add x' y' z' := by
    induction x', y', z' using Quotient.inductionOn₃' with | _ x y z
    repeat'
      first
      | rw [is_quotient_mk]
      | rw [← mk_bracket]
      | rw [← Submodule.Quotient.mk_add (R := R) (M := L)]
    apply congr_arg; apply lie_add
  lie_self x' := by
    induction x' using Quotient.inductionOn' with | _ x
    rw [is_quotient_mk, ← mk_bracket]
    apply congr_arg; apply lie_self
  leibniz_lie x' y' z' := by
    induction x', y', z' using Quotient.inductionOn₃' with | _ x y z
    repeat'
      first
      | rw [is_quotient_mk]
      | rw [← mk_bracket]
      | rw [← Submodule.Quotient.mk_add (R := R) (M := L)]
    apply congr_arg; apply leibniz_lie

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variantf0d03ebc1ca151e97405d058780a70c1db8119aa8f5c2824f5f654ed5992ef35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variantf0d03ebc1ca151e97405d058780a70c1db8119aa8f5c2824f5f654ed5992ef35.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27185c213795743c5f35f48cb14d1734de3d51d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
