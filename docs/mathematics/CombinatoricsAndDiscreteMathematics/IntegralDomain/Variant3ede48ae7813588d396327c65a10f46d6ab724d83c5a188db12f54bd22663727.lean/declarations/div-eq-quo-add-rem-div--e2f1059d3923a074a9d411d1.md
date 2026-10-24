# div_eq_quo_add_rem_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a250a4e0-a62f-bced-ff3f-a9396b60a56b",
  "kind": "theorem",
  "lexical_name": "div_eq_quo_add_rem_div",
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
  "slug": "div-eq-quo-add-rem-div--e2f1059d3923a074a9d411d1",
  "source": {
    "blob": "09d1e8368230d25e20c3ee040463e27f381ad896",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 175,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant3ede48ae7813588d396327c65a10f46d6ab724d83c5a188db12f54bd22663727.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2f1059d3923a074a9d411d12d73a99d1eb4d39e7b42c0c87e3d226d18e074d8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant3ede48ae7813588d396327c65a10f46d6ab724d83c5a188db12f54bd22663727.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a250a4e0-a62f-bced-ff3f-a9396b60a56b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem div_eq_quo_add_rem_div (f : R[X]) {g : R[X]} (hg : g.Monic) :
    ∃ q r : R[X], r.degree < g.degree ∧
      (algebraMap R[X] K f) / (algebraMap R[X] K g) =
        algebraMap R[X] K q + (algebraMap R[X] K r) / (algebraMap R[X] K g) := by
  refine ⟨f /ₘ g, f %ₘ g, ?_, ?_⟩
  · exact degree_modByMonic_lt _ hg
  · have hg' : algebraMap R[X] K g ≠ 0 :=
      (map_ne_zero_iff _ (IsFractionRing.injective R[X] K)).mpr (Monic.ne_zero hg)
    field_simp
    rw [add_comm, ← map_mul, ← map_add, modByMonic_add_div]

end Polynomial

end EuclideanDivision

variable [Fintype G]

/-- In an integral domain, a sum indexed by a nontrivial homomorphism from a finite group is zero.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant3ede48ae7813588d396327c65a10f46d6ab724d83c5a188db12f54bd22663727.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant3ede48ae7813588d396327c65a10f46d6ab724d83c5a188db12f54bd22663727.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09d1e8368230d25e20c3ee040463e27f381ad896` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
