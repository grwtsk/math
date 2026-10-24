# IsAdic.isHausdorff_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:208179e2-1eeb-bdc1-cebf-cf8e3999039a",
  "kind": "lemma",
  "lexical_name": "IsAdic.isHausdorff_iff",
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
  "slug": "isadic-ishausdorff-iff--b612da3ec8b72604a6e31ff2",
  "source": {
    "blob": "2fbaf4094b3b53b9fed832c3a215999826a9f8fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 39,
    "path": "GRWTSK/Algebra/RingTheory/Topology/Variant5317ccc595d1faf0d50bfb190784ef4fedba8660882496840e798a168b688d97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b612da3ec8b72604a6e31ff2c31b7251cddb2f1d3733ccbf399e4b6a691d6ca8",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Topology/Variant5317ccc595d1faf0d50bfb190784ef4fedba8660882496840e798a168b688d97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:208179e2-1eeb-bdc1-cebf-cf8e3999039a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma IsAdic.isHausdorff_iff : IsHausdorff I R ↔ T2Space R := by
  rw [I.ringFilterBasis.t2Space_iff_sInter_subset hI.symm, isHausdorff_iff]
  simp +instances [SModEq.zero, Ideal.ringFilterBasis, RingSubgroupsBasis.toRingFilterBasis]

end TopologicalSpace

section UniformSpace

open scoped Uniformity

variable {R : Type*} [CommRing R] [UniformSpace R] [IsUniformAddGroup R]
  {I : Ideal R} (hI : IsAdic I)

include hI in
/-- `IsPrecomplete I R` is equivalent to being complete in the adic topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Topology/Variant5317ccc595d1faf0d50bfb190784ef4fedba8660882496840e798a168b688d97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Topology/Variant5317ccc595d1faf0d50bfb190784ef4fedba8660882496840e798a168b688d97.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fbaf4094b3b53b9fed832c3a215999826a9f8fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
