# lineal_eq_sSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bd55d1d-8fc8-c520-942b-bdebde2e06d0",
  "kind": "theorem",
  "lexical_name": "lineal_eq_sSup",
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
  "slug": "lineal-eq-ssup--a6e859071eaf4ce1e90f193f",
  "source": {
    "blob": "f87a14a559c762ea68fc75b1c72223d69030ca30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 386,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pointed/Variantf576965a1bbacb7c2b267c75e68f0e29afb10ae29b1446c689c7f7c74ec0d7ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6e859071eaf4ce1e90f193f58b490cf1763dcaa61ac659c6a5727b3d3219993",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pointed/Variantf576965a1bbacb7c2b267c75e68f0e29afb10ae29b1446c689c7f7c74ec0d7ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bd55d1d-8fc8-c520-942b-bdebde2e06d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lineal_eq_sSup (C : PointedCone R E) : C.lineal = sSup {S : Submodule R E | S ≤ C} := by
  simp_rw [gc_ofSubmodule_lineal.le_iff_le, Set.Iic_def, csSup_Iic]

end Lineal

section Salient

variable [Semiring R] [PartialOrder R] [IsOrderedRing R] [AddCommGroup E] [Module R E]

/-- A pointed cone is salient iff the intersection of the cone with its negative
is the set `{0}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pointed/Variantf576965a1bbacb7c2b267c75e68f0e29afb10ae29b1446c689c7f7c74ec0d7ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pointed/Variantf576965a1bbacb7c2b267c75e68f0e29afb10ae29b1446c689c7f7c74ec0d7ae.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f87a14a559c762ea68fc75b1c72223d69030ca30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
