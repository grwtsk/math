# ideal_isMaximal_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f161b32-8f86-f0c9-aa2d-f0aa41ad3fe3",
  "kind": "theorem",
  "lexical_name": "ideal_isMaximal_iff",
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
  "slug": "ideal-ismaximal-iff--4c37654b95e2d975477a121f",
  "source": {
    "blob": "3a82c1178597718c1111c380bcdf28d328897e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 365,
    "path": "GRWTSK/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c37654b95e2d975477a121f5bef691b7d7e47b0de0a9d1fc66eeb7ecb0fe081",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f161b32-8f86-f0c9-aa2d-f0aa41ad3fe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ideal_isMaximal_iff (I : Ideal C(X, 𝕜)) [hI : IsClosed (I : Set C(X, 𝕜))] :
    I.IsMaximal ↔ ∃ x : X, idealOfSet 𝕜 {x}ᶜ = I := by
  refine
    ⟨?_, fun h =>
      let ⟨x, hx⟩ := h
      hx ▸ idealOf_compl_singleton_isMaximal 𝕜 x⟩
  intro hI'
  obtain ⟨x, hx⟩ := setOfIdeal_eq_compl_singleton I
  exact
    ⟨x, by
      simpa only [idealOfSet_ofIdeal_eq_closure, I.closure_eq_of_isClosed hI] using
        congr_arg (idealOfSet 𝕜) hx.symm⟩

end RCLike

end ContinuousMap

namespace WeakDual

namespace CharacterSpace

open Function ContinuousMap

variable (X 𝕜 : Type*) [TopologicalSpace X]

section ContinuousMapEval

variable [CommRing 𝕜] [TopologicalSpace 𝕜] [IsTopologicalRing 𝕜]
variable [Nontrivial 𝕜] [NoZeroDivisors 𝕜]

/-- The natural continuous map from a locally compact topological space `X` to the
`WeakDual.characterSpace 𝕜 C(X, 𝕜)` which sends `x : X` to point evaluation at `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a82c1178597718c1111c380bcdf28d328897e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
