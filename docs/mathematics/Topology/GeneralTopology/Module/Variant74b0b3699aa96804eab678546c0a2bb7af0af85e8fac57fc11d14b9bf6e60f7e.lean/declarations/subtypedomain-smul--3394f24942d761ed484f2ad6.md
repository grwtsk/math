# subtypeDomain_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8e124fd-d3be-301e-a501-98ccf135276e",
  "kind": "theorem",
  "lexical_name": "subtypeDomain_smul",
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
  "slug": "subtypedomain-smul--3394f24942d761ed484f2ad6",
  "source": {
    "blob": "37429d8859e3e5536d69258faaad6b4c3b2bd9e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 114,
    "path": "GRWTSK/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3394f24942d761ed484f2ad61dd82a915ad7bcac67d83d19acc3c7d5adc96527",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8e124fd-d3be-301e-a501-98ccf135276e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subtypeDomain_smul [Monoid γ] [∀ i, AddMonoid (β i)] [∀ i, DistribMulAction γ (β i)]
    {p : ι → Prop} [DecidablePred p] (r : γ) (f : Π₀ i, β i) :
    (r • f).subtypeDomain p = r • f.subtypeDomain p :=
  DFunLike.coe_injective rfl

variable (γ β)

/-- `DFinsupp.subtypeDomain` as a `LinearMap`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37429d8859e3e5536d69258faaad6b4c3b2bd9e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
