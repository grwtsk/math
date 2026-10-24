# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c5820342a68dbdc99e52ca88d9748d6b068bfc753eb42f00c58c63bc1616c73",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--1ecf7c5fe332425cd50b0ad8",
  "source": {
    "blob": "60c03580b51d8bfe83313f16c6d9534dc701bcc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 398,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant6be84f13879a5f242f0380b709373880f89c99d44becbec3c022da30858c3d7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ecf7c5fe332425cd50b0ad8ceb44419112646d243fe5fa6ce0a29257cf45eee",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant6be84f13879a5f242f0380b709373880f89c99d44becbec3c022da30858c3d7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c5820342a68dbdc99e52ca88d9748d6b068bfc753eb42f00c58c63bc1616c73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Mono (H1InfRes A S).f := by
  rw [ModuleCat.mono_iff_injective, injective_iff_map_eq_zero]
  intro x hx
  induction x using H1_induction_on with | @h x =>
  simp_all only [HInfRes_X₂, HInfRes_X₁, HInfRes_f, H1π_comp_map_apply (QuotientGroup.mk' S)]
  rcases (H1π_eq_zero_iff _).1 hx with ⟨y, hy⟩
  refine (H1π_eq_zero_iff _).2 ⟨⟨y, fun s => ?_⟩, funext fun g => QuotientGroup.induction_on g
    fun g => Subtype.ext <| by simpa [-SetLike.coe_eq_coe] using! congr_fun hy g⟩
  simpa [coe_mapCocycles₁ (x := x), sub_eq_zero, (QuotientGroup.eq_one_iff s.1).2 s.2] using!
    congr_fun hy s.1

/-- Given a `G`-representation `A` and a normal subgroup `S ≤ G`, the short complex
`H¹(G ⧸ S, A^S) ⟶ H¹(G, A) ⟶ H¹(S, A)` is exact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant6be84f13879a5f242f0380b709373880f89c99d44becbec3c022da30858c3d7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant6be84f13879a5f242f0380b709373880f89c99d44becbec3c022da30858c3d7a.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60c03580b51d8bfe83313f16c6d9534dc701bcc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
