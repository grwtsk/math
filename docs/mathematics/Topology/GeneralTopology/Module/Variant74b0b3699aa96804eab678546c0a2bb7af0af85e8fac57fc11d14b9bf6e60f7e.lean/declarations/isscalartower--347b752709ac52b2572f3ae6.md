# isScalarTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe9b0daa10644bb3acbb77c8a9dfac6cfee67f54a9a85ea5a83786e141be58bd",
  "kind": "instance",
  "lexical_name": "isScalarTower",
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
  "slug": "isscalartower--347b752709ac52b2572f3ae6",
  "source": {
    "blob": "37429d8859e3e5536d69258faaad6b4c3b2bd9e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 54,
    "path": "GRWTSK/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:347b752709ac52b2572f3ae6dc91722ba6a7ea24b5ce5aed7fae00a8573d986c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe9b0daa10644bb3acbb77c8a9dfac6cfee67f54a9a85ea5a83786e141be58bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isScalarTower {δ : Type*} [Monoid γ] [Monoid δ] [∀ i, AddMonoid (β i)]
    [∀ i, DistribMulAction γ (β i)] [∀ i, DistribMulAction δ (β i)] [SMul γ δ]
    [∀ i, IsScalarTower γ δ (β i)] : IsScalarTower γ δ (Π₀ i, β i) where
  smul_assoc r s m := ext fun i => by simp only [smul_apply, smul_assoc r s (m i)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Module/Variant74b0b3699aa96804eab678546c0a2bb7af0af85e8fac57fc11d14b9bf6e60f7e.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37429d8859e3e5536d69258faaad6b4c3b2bd9e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
