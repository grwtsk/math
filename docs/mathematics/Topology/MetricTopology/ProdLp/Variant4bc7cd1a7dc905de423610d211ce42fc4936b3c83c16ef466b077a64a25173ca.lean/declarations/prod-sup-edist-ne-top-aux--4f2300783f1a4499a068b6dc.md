# prod_sup_edist_ne_top_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1d1b065-7afb-9015-0ea8-416af77a6900",
  "kind": "theorem",
  "lexical_name": "prod_sup_edist_ne_top_aux",
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
  "slug": "prod-sup-edist-ne-top-aux--4f2300783f1a4499a068b6dc",
  "source": {
    "blob": "88631d0fb14b4c0c8b9160981fd79f9827d91b0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 372,
    "path": "GRWTSK/Topology/MetricTopology/ProdLp/Variant4bc7cd1a7dc905de423610d211ce42fc4936b3c83c16ef466b077a64a25173ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f2300783f1a4499a068b6dcf56877d3b5c13a2d43da3d6d10b0fb9ecaaabc0e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ProdLp/Variant4bc7cd1a7dc905de423610d211ce42fc4936b3c83c16ef466b077a64a25173ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1d1b065-7afb-9015-0ea8-416af77a6900`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_sup_edist_ne_top_aux [PseudoMetricSpace α] [PseudoMetricSpace β]
    (f g : WithLp ∞ (α × β)) :
    edist f.fst g.fst ⊔ edist f.snd g.snd ≠ ⊤ :=
  ne_of_lt <| by simp [edist, PseudoMetricSpace.edist_dist]

variable (α β)

/-- Endowing the space `WithLp p (α × β)` with the `L^p` pseudometric structure. This definition is
not satisfactory, as it does not register the fact that the topology, the uniform structure, and the
bornology coincide with the product ones. Therefore, we do not register it as an instance. Using
this as a temporary pseudoemetric space instance, we will show that the uniform structure is equal
(but not defeq) to the product one, and then register an instance in which we replace the uniform
structure and the bornology by the product ones using this pseudometric space,
`PseudoMetricSpace.replaceUniformity`, and `PseudoMetricSpace.replaceBornology`.

See note [reducible non-instances] -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ProdLp/Variant4bc7cd1a7dc905de423610d211ce42fc4936b3c83c16ef466b077a64a25173ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ProdLp/Variant4bc7cd1a7dc905de423610d211ce42fc4936b3c83c16ef466b077a64a25173ca.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88631d0fb14b4c0c8b9160981fd79f9827d91b0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
