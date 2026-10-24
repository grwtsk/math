# continuous_finprod_cond

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c8cc067-07d6-a06c-ef3f-ba3231877612",
  "kind": "theorem",
  "lexical_name": "continuous_finprod_cond",
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
  "slug": "continuous-finprod-cond--0139fdaf3cb27ef487bdcbd3",
  "source": {
    "blob": "7e97bd3384a24c3b0ffdafc711bd1ca099d124af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1036,
    "line": 1029,
    "path": "GRWTSK/Topology/GeneralTopology/Monoid/Varianta469478f410b3f72e3a98ef92475f885054db1464983b4a21fd422c9891f2b1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0139fdaf3cb27ef487bdcbd30c6e12b1899e1dc2452f240b7a1c2b5300b72476",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monoid/Varianta469478f410b3f72e3a98ef92475f885054db1464983b4a21fd422c9891f2b1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c8cc067-07d6-a06c-ef3f-ba3231877612`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1029–1036.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_finprod_cond {f : ι → X → M} {p : ι → Prop} (hc : ∀ i, p i → Continuous (f i))
    (hf : LocallyFinite fun i => mulSupport (f i)) :
    Continuous fun x => ∏ᶠ (i) (_ : p i), f i x := by
  simp only [← finprod_subtype_eq_finprod_cond]
  exact continuous_finprod (fun i => hc i i.2) (hf.comp_injective Subtype.coe_injective)

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monoid/Varianta469478f410b3f72e3a98ef92475f885054db1464983b4a21fd422c9891f2b1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monoid/Varianta469478f410b3f72e3a98ef92475f885054db1464983b4a21fd422c9891f2b1d.lean#L1029).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e97bd3384a24c3b0ffdafc711bd1ca099d124af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
