# mapOfCompatibleSMul_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab4e39c0-2346-2e53-1ce4-23247e23a76b",
  "kind": "theorem",
  "lexical_name": "mapOfCompatibleSMul_surjective",
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
  "slug": "mapofcompatiblesmul-surjective--1fcfad5ce667ed003a5fd578",
  "source": {
    "blob": "7a5faa086fb4732d5896296784cf7c776c1b048b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 341,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fcfad5ce667ed003a5fd578f090fdff53ee65d7ef50502f2552563fb425d7c7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab4e39c0-2346-2e53-1ce4-23247e23a76b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapOfCompatibleSMul_surjective : Function.Surjective (mapOfCompatibleSMul R A S M N) :=
  fun x ↦ x.inductionOn (fun m n ↦ ⟨_, mapOfCompatibleSMul_tmul ..⟩)
    fun _ _ ⟨x, hx⟩ ⟨y, hy⟩ ↦ ⟨x + y, by simpa using congr($hx + $hy)⟩

attribute [local instance] SMulCommClass.symm

/-- If the R- and A-actions on M and N satisfy `CompatibleSMul` both ways,
then `M ⊗[A] N` is canonically isomorphic to `M ⊗[R] N` as `S`-modules,
where `S` is any other ring acting on `M` and whose action commutes with the `A` and `R`-actions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a5faa086fb4732d5896296784cf7c776c1b048b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
