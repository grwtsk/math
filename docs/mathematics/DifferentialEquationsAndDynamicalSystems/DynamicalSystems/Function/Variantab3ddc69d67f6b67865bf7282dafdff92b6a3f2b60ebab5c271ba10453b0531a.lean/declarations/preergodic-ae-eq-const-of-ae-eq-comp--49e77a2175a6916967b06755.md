# PreErgodic.ae_eq_const_of_ae_eq_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07188204-57d4-a8fa-fe5a-40e24e376136",
  "kind": "theorem",
  "lexical_name": "PreErgodic.ae_eq_const_of_ae_eq_comp",
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
  "slug": "preergodic-ae-eq-const-of-ae-eq-comp--49e77a2175a6916967b06755",
  "source": {
    "blob": "4e2c4c50b65930911bbc29d92e50c6688d4c28fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 58,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variantab3ddc69d67f6b67865bf7282dafdff92b6a3f2b60ebab5c271ba10453b0531a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49e77a2175a6916967b067559d5793a55512f838098bc810073fe26a8640a48c",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variantab3ddc69d67f6b67865bf7282dafdff92b6a3f2b60ebab5c271ba10453b0531a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07188204-57d4-a8fa-fe5a-40e24e376136`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PreErgodic.ae_eq_const_of_ae_eq_comp (h : PreErgodic f μ) (hgm : Measurable g)
    (hg_eq : g ∘ f = g) : ∃ c, g =ᵐ[μ] const α c :=
  exists_eventuallyEq_const_of_forall_separating MeasurableSet fun U hU ↦
    h.ae_mem_or_ae_notMem (s := g ⁻¹' U) (hgm hU) <| by rw [← preimage_comp, hg_eq]

/-- Let `f : α → α` be a quasi-ergodic map.
Let `g : α → X` be a null-measurable function from `α` to a nonempty measurable space
with a countable family of measurable sets separating the points of `X`.
If `g` is a.e.-invariant under `f`, then `g` is a.e. constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variantab3ddc69d67f6b67865bf7282dafdff92b6a3f2b60ebab5c271ba10453b0531a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variantab3ddc69d67f6b67865bf7282dafdff92b6a3f2b60ebab5c271ba10453b0531a.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e2c4c50b65930911bbc29d92e50c6688d4c28fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
