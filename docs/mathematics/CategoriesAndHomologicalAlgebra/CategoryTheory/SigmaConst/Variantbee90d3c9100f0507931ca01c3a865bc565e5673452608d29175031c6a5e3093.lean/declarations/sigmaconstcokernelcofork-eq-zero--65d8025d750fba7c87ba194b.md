# ι_sigmaConstCokernelCofork_π_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:646d4ff8-8240-17d6-78a8-2bd88b945b5e",
  "kind": "lemma",
  "lexical_name": "ι_sigmaConstCokernelCofork_π_eq_zero",
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
  "slug": "sigmaconstcokernelcofork-eq-zero--65d8025d750fba7c87ba194b",
  "source": {
    "blob": "046804b58a9946f31eb9271a0c734ceed78169bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 95,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SigmaConst/Variantbee90d3c9100f0507931ca01c3a865bc565e5673452608d29175031c6a5e3093.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65d8025d750fba7c87ba194b2d6c1d8675a2b4b7127b6e3baac49517123512a9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SigmaConst/Variantbee90d3c9100f0507931ca01c3a865bc565e5673452608d29175031c6a5e3093.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:646d4ff8-8240-17d6-78a8-2bd88b945b5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ι_sigmaConstCokernelCofork_π_eq_zero (a : α) :
    dsimp% Sigma.ι (fun _ ↦ R) (f a) ≫ (sigmaConstCokernelCofork R f).π = 0 := by
  dsimp [sigmaConstCokernelCofork]
  rw [Sigma.ι_comp_desc]
  exact dite_eq_right (by simp)

set_option backward.defeqAttrib.useBackward true in
/-- The cokernel of the map `∐ fun (_ : α) ↦ R ⟶ ∐ fun (_ : β) ↦ R` induced
by a map `f : α → β` identifies to the coproduct of copies of `R`
indexed by the complement of the range of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SigmaConst/Variantbee90d3c9100f0507931ca01c3a865bc565e5673452608d29175031c6a5e3093.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SigmaConst/Variantbee90d3c9100f0507931ca01c3a865bc565e5673452608d29175031c6a5e3093.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `046804b58a9946f31eb9271a0c734ceed78169bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
