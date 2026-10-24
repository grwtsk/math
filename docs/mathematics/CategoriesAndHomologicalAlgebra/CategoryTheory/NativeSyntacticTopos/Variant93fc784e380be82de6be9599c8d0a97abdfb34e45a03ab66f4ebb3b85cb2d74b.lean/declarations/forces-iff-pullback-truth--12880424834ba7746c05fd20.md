# forces_iff_pullback_truth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1520047-2a2c-6b33-49c2-6ed5e44bf554",
  "kind": "theorem",
  "lexical_name": "forces_iff_pullback_truth",
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
  "slug": "forces-iff-pullback-truth--12880424834ba7746c05fd20",
  "source": {
    "blob": "423dbf547c1240656d1117f5eb6f10595e8d6748",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3290,
    "line": 3245,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variant93fc784e380be82de6be9599c8d0a97abdfb34e45a03ab66f4ebb3b85cb2d74b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12880424834ba7746c05fd20f9d999bfdd090cba399b0747315078fde4425815",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variant93fc784e380be82de6be9599c8d0a97abdfb34e45a03ab66f4ebb3b85cb2d74b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1520047-2a2c-6b33-49c2-6ed5e44bf554`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3245–3290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forces_iff_pullback_truth
    {S : Site.{u, v}}
    {Γ : InternalContext S}
    (A : LocalSubpresheaf S.J Γ.val)
    (boundary : InternalBoundary)
    {X : S.C.Obj}
    (x : Γ.val.obj X) :
    ForcesSection
      (ofLocalSubpresheaf A boundary)
      X
      x
      ↔
    A.mem x := by
  constructor
  · intro hforce
    change
      (characteristicMap A).app X x =
        topJClosedSieve S.J X at hforce
    have hsieve :
        characteristicSieve A.toSubpresheaf x =
          Sieve.top S.C X := by
      exact congrArg JClosedSieve.sieve hforce
    have hid :
        (characteristicSieve A.toSubpresheaf x).arrows X
          (S.C.id X) := by
      rw [hsieve]
      trivial
    change A.mem (Presheaf.res Γ.val (S.C.id X) x) at hid
    have hres :
        Presheaf.res Γ.val (S.C.id X) x = x := by
      exact congrArg (fun h => h x) (Γ.val.map_id X)
    simpa [hres] using hid
  · intro hx
    change
      (characteristicMap A).app X x =
        topJClosedSieve S.J X
    apply JClosedSieve.ext
    apply Sieve.ext
    intro Y f
    constructor
    · intro _h
      trivial
    · intro _h
      change A.mem (Presheaf.res Γ.val f x)
      exact A.res_mem f hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variant93fc784e380be82de6be9599c8d0a97abdfb34e45a03ab66f4ebb3b85cb2d74b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variant93fc784e380be82de6be9599c8d0a97abdfb34e45a03ab66f4ebb3b85cb2d74b.lean#L3245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `423dbf547c1240656d1117f5eb6f10595e8d6748` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
