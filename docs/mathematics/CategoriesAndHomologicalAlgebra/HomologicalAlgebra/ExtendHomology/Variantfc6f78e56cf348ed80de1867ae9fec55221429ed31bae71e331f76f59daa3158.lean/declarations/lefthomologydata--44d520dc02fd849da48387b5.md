# leftHomologyData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8b3b6ecb112ca38ff8279be9676d02a44b8c92fc7c6a945d16e134bb5ddd2b8",
  "kind": "def",
  "lexical_name": "leftHomologyData",
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
  "slug": "lefthomologydata--44d520dc02fd849da48387b5",
  "source": {
    "blob": "6d28939108e240243c1843b6570c9ed6de78e111",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 144,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44d520dc02fd849da48387b5507baaf2711ab8b322b7baeeb38b91c48c9c2034",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8b3b6ecb112ca38ff8279be9676d02a44b8c92fc7c6a945d16e134bb5ddd2b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def leftHomologyData (h : (K.sc' i j k).LeftHomologyData) :
    ((K.extend e).sc' i' j' k').LeftHomologyData where
  K := h.K
  H := h.H
  i := h.i ≫ (extendXIso K e hj').inv
  π := h.π
  wi := by
    dsimp
    rw [assoc, ← comp_d_eq_zero_iff K e hj' hk hk']
    exact h.wi
  hi := isLimitKernelFork K e hj' hk hk' _ h.hi
  wπ := by
    dsimp
    rw [← lift_d_comp_eq_zero_iff K e hj' hi hi' hk hk' _ h.hi]
    exact h.wπ
  hπ := isColimitCokernelCofork K e hj' hi hi' hk hk' _ h.hi _ h.hπ

namespace rightHomologyData

variable (cocone : CokernelCofork (K.d i j)) (hcocone : IsColimit cocone)

/-- The cokernel cofork of `(K.extend e).d i' j'` that is deduced from a cokernel
cofork of `K.d i j`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d28939108e240243c1843b6570c9ed6de78e111` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
