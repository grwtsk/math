# mkMMem_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c839961b-0e9b-ed22-50c8-9d7d1faa758e",
  "kind": "theorem",
  "lexical_name": "mkMMem_surjective",
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
  "slug": "mkmmem-surjective--c927fa64988878592a0f92c5",
  "source": {
    "blob": "d5170835842e16cc348096105a300009dd044fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 324,
    "path": "GRWTSK/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c927fa64988878592a0f92c5b6c19d7ef65437d7a29dc89a766d8a051c636d74",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c839961b-0e9b-ed22-50c8-9d7d1faa758e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mkMMem_surjective [IsDedekindDomain S] [Algebra.IsAlgebraic R S] :
    Function.Surjective (ClassGroup.mkMMem bS adm) := by
  intro I'
  obtain ⟨⟨I, hI⟩, rfl⟩ := ClassGroup.mk0_surjective I'
  obtain ⟨J, mk0_eq_mk0, J_dvd⟩ := exists_mk0_eq_mk0 bS adm ⟨I, hI⟩
  exact ⟨⟨J, J_dvd⟩, mk0_eq_mk0.symm⟩

open scoped Classical in
/-- The **class number theorem**: the class group of an integral closure `S` of `R` in an
algebraic extension `L` is finite if there is an admissible absolute value.

See also `ClassGroup.fintypeOfAdmissibleOfFinite` where `L` is a finite
extension of `K = Frac(R)`, supplying most of the required assumptions automatically.
-/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5170835842e16cc348096105a300009dd044fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
