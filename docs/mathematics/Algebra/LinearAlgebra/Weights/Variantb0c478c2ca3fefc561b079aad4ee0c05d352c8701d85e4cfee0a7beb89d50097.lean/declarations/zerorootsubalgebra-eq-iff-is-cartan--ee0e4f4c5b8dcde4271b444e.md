# zeroRootSubalgebra_eq_iff_is_cartan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c37bbba9-872e-039e-b5a1-a1c906e198ec",
  "kind": "theorem",
  "lexical_name": "zeroRootSubalgebra_eq_iff_is_cartan",
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
  "slug": "zerorootsubalgebra-eq-iff-is-cartan--ee0e4f4c5b8dcde4271b444e",
  "source": {
    "blob": "1a2e4f35d737bfe03ac24ea2611d637d14d70e91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 489,
    "path": "GRWTSK/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee0e4f4c5b8dcde4271b444ec7067d9e76c62e38f713d2539546d7da13e91e06",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c37bbba9-872e-039e-b5a1-a1c906e198ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeroRootSubalgebra_eq_iff_is_cartan [IsNoetherian R L] :
    zeroRootSubalgebra R L H = H ↔ H.IsCartanSubalgebra :=
  ⟨is_cartan_of_zeroRootSubalgebra_eq R L H, by intros; simp⟩
#align lie_algebra.zero_root_subalgebra_eq_iff_is_cartan LieAlgebra.zeroRootSubalgebra_eq_iff_is_cartan

end LieAlgebra

namespace LieModule

open LieAlgebra

variable {H}

/-- A priori, weight spaces are Lie submodules over the Lie subalgebra `H` used to define them.
However they are naturally Lie submodules over the (in general larger) Lie subalgebra
`zeroRootSubalgebra R L H`. Even though it is often the case that
`zeroRootSubalgebra R L H = H`, it is likely to be useful to have the flexibility not to have
to invoke this equality (as well as to work more generally). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a2e4f35d737bfe03ac24ea2611d637d14d70e91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
