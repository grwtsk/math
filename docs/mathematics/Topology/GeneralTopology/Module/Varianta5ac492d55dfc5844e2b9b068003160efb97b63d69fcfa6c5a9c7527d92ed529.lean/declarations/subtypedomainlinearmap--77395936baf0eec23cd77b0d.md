# subtypeDomainLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0513c8a63a829d791487aeb73c61ca32a1e11935bde34010bb58deacc0433ec",
  "kind": "def",
  "lexical_name": "subtypeDomainLinearMap",
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
  "slug": "subtypedomainlinearmap--77395936baf0eec23cd77b0d",
  "source": {
    "blob": "57d3a1c3b8195dccb556c15fdf39d3ab865acdd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 115,
    "path": "GRWTSK/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77395936baf0eec23cd77b0dc7f2fd79f038d02712540b0cdf498dd1e108c96a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0513c8a63a829d791487aeb73c61ca32a1e11935bde34010bb58deacc0433ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subtypeDomainLinearMap [Semiring γ] [∀ i, AddCommMonoid (β i)] [∀ i, Module γ (β i)]
    (p : ι → Prop) [DecidablePred p] : (Π₀ i, β i) →ₗ[γ] Π₀ i : Subtype p, β i where
  toFun := subtypeDomain p
  map_add' := subtypeDomain_add
  map_smul' := subtypeDomain_smul

end FilterAndSubtypeDomain

section DecidableEq
variable [DecidableEq ι]

section

variable [Monoid γ] [∀ i, AddMonoid (β i)] [∀ i, DistribMulAction γ (β i)]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57d3a1c3b8195dccb556c15fdf39d3ab865acdd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
