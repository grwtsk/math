# Prod.continuous_inv_fun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcd731b39e401c04dd74cdfb6242d11ae2852a0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0aa7420e-9fe4-3d79-4f16-773cc55449c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a1ac764-b154-ef28-cd38-b14168bec7eb",
  "kind": "theorem",
  "lexical_name": "Prod.continuous_inv_fun",
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
  "slug": "prod-continuous-inv-fun--515806ff24346aef271ceca0",
  "source": {
    "blob": "bcd731b39e401c04dd74cdfb6242d11ae2852a0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 183,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:515806ff24346aef271ceca0052ac2ce3860433ec0819ffca3884d784a7f4d3b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a1ac764-b154-ef28-cd38-b14168bec7eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Prod.continuous_inv_fun :
    ContinuousOn (Prod.invFun' e₁ e₂) ((e₁.baseSet ∩ e₂.baseSet) ×ˢ univ) := by
  rw [(Prod.isInducing_diag F₁ E₁ F₂ E₂).continuousOn_iff]
  have H₁ : Continuous fun p : B × F₁ × F₂ ↦ ((p.1, p.2.1), (p.1, p.2.2)) := by fun_prop
  refine (e₁.continuousOn_symm.prodMap e₂.continuousOn_symm).comp H₁.continuousOn ?_
  exact fun x h ↦ ⟨⟨h.1.1, mem_univ _⟩, ⟨h.1.2, mem_univ _⟩⟩

variable (e₁ e₂)

/-- Given trivializations `e₁`, `e₂` for bundle types `E₁`, `E₂` over a base `B`, the induced
trivialization for the fiberwise product of `E₁` and `E₂`, whose base set is
`e₁.baseSet ∩ e₂.baseSet`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcd731b39e401c04dd74cdfb6242d11ae2852a0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
