# disc_eq_regionBetween

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:555b4b2f-9ad4-89a3-2132-731db82e9993",
  "kind": "theorem",
  "lexical_name": "disc_eq_regionBetween",
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
  "slug": "disc-eq-regionbetween--93f9b6e38f7dbbfb96d5abb6",
  "source": {
    "blob": "8d3519540ed4ef11b34f8a589128034402117da3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 77,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant0bf053592589e667a3748abe1f025839e22d05183058b2e555a5e841b49b1060.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93f9b6e38f7dbbfb96d5abb6df31235a8195978d10d5f5b25835bd69ad4c9010",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant0bf053592589e667a3748abe1f025839e22d05183058b2e555a5e841b49b1060.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:555b4b2f-9ad4-89a3-2132-731db82e9993`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disc_eq_regionBetween :
    disc r =
      regionBetween
        (fun x => -sqrt (r ^ 2 - x ^ 2)) (fun x => sqrt (r ^ 2 - x ^ 2)) (Ioc (-r) r) := by
  ext p
  simp only [disc, regionBetween, mem_setOf_eq, mem_Ioo, mem_Ioc, Pi.neg_apply]
  constructor <;> intro h
  · cases abs_lt_of_sq_lt_sq' (lt_of_add_lt_of_nonneg_left h (sq_nonneg p.2)) r.2 with
    | intro left right =>
      rw [add_comm, ← lt_sub_iff_add_lt] at h
      exact ⟨⟨left, right.le⟩, sq_lt.mp h⟩
  · rw [add_comm, ← lt_sub_iff_add_lt]
    exact sq_lt.mpr h.2
#align theorems_100.disc_eq_region_between Theorems100.disc_eq_regionBetween

/-- The disc is a `MeasurableSet`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant0bf053592589e667a3748abe1f025839e22d05183058b2e555a5e841b49b1060.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant0bf053592589e667a3748abe1f025839e22d05183058b2e555a5e841b49b1060.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d3519540ed4ef11b34f8a589128034402117da3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
