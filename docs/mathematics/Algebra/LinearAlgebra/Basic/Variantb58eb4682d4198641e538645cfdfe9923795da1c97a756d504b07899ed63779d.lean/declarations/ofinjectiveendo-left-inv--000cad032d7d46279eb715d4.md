# ofInjectiveEndo_left_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a03533c-1586-9b68-9bb6-77414c2be0d6",
  "kind": "theorem",
  "lexical_name": "ofInjectiveEndo_left_inv",
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
  "slug": "ofinjectiveendo-left-inv--000cad032d7d46279eb715d4",
  "source": {
    "blob": "5a41bcbbfa6fb2f156528c94a236f4d70643bc97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 435,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantb58eb4682d4198641e538645cfdfe9923795da1c97a756d504b07899ed63779d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:000cad032d7d46279eb715d4b90c7e6377ac9d2759ecb8e34b52cafdaf519ede",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantb58eb4682d4198641e538645cfdfe9923795da1c97a756d504b07899ed63779d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a03533c-1586-9b68-9bb6-77414c2be0d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofInjectiveEndo_left_inv (f : V →ₗ[K] V) (h_inj : Injective f) :
    ((ofInjectiveEndo f h_inj).symm : V →ₗ[K] V) * f = 1 :=
  LinearMap.ext <| (ofInjectiveEndo f h_inj).symm_apply_apply

variable {V' : Type*} [AddCommGroup V'] [Module K V'] [FiniteDimensional K V']
omit [FiniteDimensional K V]

/-- An injective linear map between finite-dimensional modules of equal rank
is a linear equivalence.

Unlike `LinearEquiv.ofFinrankEq` (which creates an *abstract* linear equivalence from `V` to `V'`),
this lemma improves a *given* injective linear map to a linear equivalence.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantb58eb4682d4198641e538645cfdfe9923795da1c97a756d504b07899ed63779d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantb58eb4682d4198641e538645cfdfe9923795da1c97a756d504b07899ed63779d.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a41bcbbfa6fb2f156528c94a236f4d70643bc97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
