# CliffordAlgebra.not_forall_algebraMap_injective.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e08ce90e-1238-3f7a-702d-95da861d7c3a",
  "kind": "theorem",
  "lexical_name": "CliffordAlgebra.not_forall_algebraMap_injective.",
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
  "slug": "cliffordalgebra-not-forall-algebramap-injective--9b43ec4eec50f377138fabd6",
  "source": {
    "blob": "4869e97aa7dc4c2c7c9a9d2f169e1166cfd281e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 285,
    "path": "GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b43ec4eec50f377138fabd6adbe326e69eea041e40365a23b07034092194ebd",
  "verification": {
    "reference": "docs/verification/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e08ce90e-1238-3f7a-702d-95da861d7c3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CliffordAlgebra.not_forall_algebraMap_injective.{v} :
    -- TODO: make `R` universe polymorphic
    ¬∀ (R : Type) (M : Type v) [CommRing R] [AddCommGroup M] [Module R M] (Q : QuadraticForm R M),
      Function.Injective (algebraMap R <| CliffordAlgebra Q) :=
  fun h => algebraMap_not_injective fun x y hxy => by
    let uU := ULift.moduleEquiv (R := K) (M := L)
    let uQ := Q.comp uU.toLinearMap
    let f : Q →qᵢ uQ := { uU.symm with map_app' := fun _ => rfl }
    refine h K (ULift L) (Q.comp uU.toLinearMap) ?_
    let uC := CliffordAlgebra.map f
    have := uC.congr_arg hxy
    rwa [AlgHom.commutes, AlgHom.commutes] at this

open Q60596 in
/-- The general bonus statement: not every quadratic form is the diagonal of a bilinear form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4869e97aa7dc4c2c7c9a9d2f169e1166cfd281e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
