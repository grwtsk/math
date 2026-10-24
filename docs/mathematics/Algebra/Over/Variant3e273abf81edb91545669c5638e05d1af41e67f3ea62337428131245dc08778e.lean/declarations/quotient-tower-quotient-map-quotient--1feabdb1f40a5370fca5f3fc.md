# Quotient.tower_quotient_map_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eafe1217b42075eef769b43759ba219c0acf0af46d33f4aba5d7c4e278232942",
  "kind": "instance",
  "lexical_name": "Quotient.tower_quotient_map_quotient",
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
  "slug": "quotient-tower-quotient-map-quotient--1feabdb1f40a5370fca5f3fc",
  "source": {
    "blob": "edf049c390e74cf12bc487f1784a9d47ccf3853a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 79,
    "path": "GRWTSK/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1feabdb1f40a5370fca5f3fca5c692e69fd18e16240096f4ddd2982cc8c52496",
  "verification": {
    "reference": "docs/verification/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eafe1217b42075eef769b43759ba219c0acf0af46d33f4aba5d7c4e278232942`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Quotient.tower_quotient_map_quotient :
    IsScalarTower R (R ⧸ p) (S ⧸ map (algebraMap R S) p) :=
  IsScalarTower.of_algebraMap_eq fun x => by
    rw [Quotient.algebraMap_eq, Quotient.algebraMap_quotient_map_quotient,
      Quotient.mk_algebraMap]

end CommRing

section ideal_liesOver

section Semiring

variable (A : Type*) [CommSemiring A] {B C : Type*} [Semiring B] [Semiring C] [Algebra A B]
  [Algebra A C] (P : Ideal B) {Q : Ideal C} (p : Ideal A)
  {G : Type*} [Group G] [MulSemiringAction G B] (g : G)

/-- The ideal obtained by pulling back the ideal `P` from `B` to `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Over/Variant3e273abf81edb91545669c5638e05d1af41e67f3ea62337428131245dc08778e.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edf049c390e74cf12bc487f1784a9d47ccf3853a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
