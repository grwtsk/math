# InvariantBasisNumber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb7a08e6ec38812cad5e5b873a7cbb21f6a2ee1c0a6505fff1c9469d7c75f3f2",
  "kind": "class",
  "lexical_name": "InvariantBasisNumber",
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
  "slug": "invariantbasisnumber--a3ecc1f6b51f90ffed486729",
  "source": {
    "blob": "3464e0e1accf49b2e8f2c12c14dc7b0ee8a88a7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 213,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3ecc1f6b51f90ffed4867292868ab6818d2c879a45e34002321cf02fbbdf813",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb7a08e6ec38812cad5e5b873a7cbb21f6a2ee1c0a6505fff1c9469d7c75f3f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class InvariantBasisNumber : Prop where
  /-- Any linear equiv between `Rⁿ` and `Rᵐ` guarantees `m = n`. -/
  eq_of_fin_equiv : ∀ {n m : ℕ}, ((Fin n → R) ≃ₗ[R] Fin m → R) → n = m

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3464e0e1accf49b2e8f2c12c14dc7b0ee8a88a7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
