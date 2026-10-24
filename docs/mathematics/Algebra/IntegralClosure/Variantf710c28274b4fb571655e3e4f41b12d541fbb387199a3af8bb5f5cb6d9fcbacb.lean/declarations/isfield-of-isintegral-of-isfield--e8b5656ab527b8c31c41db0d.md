# isField_of_isIntegral_of_isField'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f1cf2da-7f5e-4058-7362-5df1ac01c0a8",
  "kind": "theorem",
  "lexical_name": "isField_of_isIntegral_of_isField'",
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
  "slug": "isfield-of-isintegral-of-isfield--e8b5656ab527b8c31c41db0d",
  "source": {
    "blob": "5a187f8eb8be9b458ae2944e1e518c2e6cc9c1c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1188,
    "line": 1172,
    "path": "GRWTSK/Algebra/IntegralClosure/Variantf710c28274b4fb571655e3e4f41b12d541fbb387199a3af8bb5f5cb6d9fcbacb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8b5656ab527b8c31c41db0d78c3608a95dcff460ca0704db5f2a31c0759b2a5",
  "verification": {
    "reference": "docs/verification/Algebra/IntegralClosure/Variantf710c28274b4fb571655e3e4f41b12d541fbb387199a3af8bb5f5cb6d9fcbacb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f1cf2da-7f5e-4058-7362-5df1ac01c0a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1172–1188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isField_of_isIntegral_of_isField' {R S : Type*} [CommRing R] [CommRing S] [IsDomain S]
    [Algebra R S] (H : Algebra.IsIntegral R S) (hR : IsField R) : IsField S := by
  letI := hR.toField
  refine' ⟨⟨0, 1, zero_ne_one⟩, mul_comm, fun {x} hx => _⟩
  let A := Algebra.adjoin R ({x} : Set S)
  haveI : IsNoetherian R A :=
    isNoetherian_of_fg_of_noetherian (Subalgebra.toSubmodule A)
      (FG_adjoin_singleton_of_integral x (H x))
  haveI : Module.Finite R A := Module.IsNoetherian.finite R A
  obtain ⟨y, hy⟩ :=
    LinearMap.surjective_of_injective
      (@LinearMap.mulLeft_injective R A _ _ _ _ ⟨x, subset_adjoin (Set.mem_singleton x)⟩ fun h =>
        hx (Subtype.ext_iff.mp h))
      1
  exact ⟨y, Subtype.ext_iff.mp hy⟩
#align is_field_of_is_integral_of_is_field' isField_of_isIntegral_of_isField'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IntegralClosure/Variantf710c28274b4fb571655e3e4f41b12d541fbb387199a3af8bb5f5cb6d9fcbacb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegralClosure/Variantf710c28274b4fb571655e3e4f41b12d541fbb387199a3af8bb5f5cb6d9fcbacb.lean#L1172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a187f8eb8be9b458ae2944e1e518c2e6cc9c1c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
