# comap_ker_eq_sup_of_ker_eq_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eae07d68-8a28-92cc-a01a-bf740ca8b140",
  "kind": "lemma",
  "lexical_name": "comap_ker_eq_sup_of_ker_eq_map",
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
  "slug": "comap-ker-eq-sup-of-ker-eq-map--a07393cbc39378edce9eabdf",
  "source": {
    "blob": "f798541bf5e0ba241e549814de0c11e01e77e56b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 71,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variantb4e8bf0b82f3afa2f2d1ab37131f4c2f065555876b18d14216f81a854acb65c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a07393cbc39378edce9eabdfa0baa4f8608593a77a41b24bf65934357fba3f88",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variantb4e8bf0b82f3afa2f2d1ab37131f4c2f065555876b18d14216f81a854acb65c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eae07d68-8a28-92cc-a01a-bf740ca8b140`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma comap_ker_eq_sup_of_ker_eq_map (surjRS : Function.Surjective (algebraMap R S))
    (eqmap : RingHom.ker (algebraMap S S') = (RingHom.ker (algebraMap R R')).map (algebraMap R S)) :
    (RingHom.ker (algebraMap R' S')).comap (algebraMap R R') =
      RingHom.ker (algebraMap R R') ⊔ RingHom.ker (algebraMap R S) := by
  rw [RingHom.comap_ker, ← IsScalarTower.algebraMap_eq, IsScalarTower.algebraMap_eq _ S,
      ← RingHom.comap_ker]
  simp [eqmap, Ideal.comap_map_of_surjective' _ surjRS]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variantb4e8bf0b82f3afa2f2d1ab37131f4c2f065555876b18d14216f81a854acb65c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variantb4e8bf0b82f3afa2f2d1ab37131f4c2f065555876b18d14216f81a854acb65c4.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f798541bf5e0ba241e549814de0c11e01e77e56b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
