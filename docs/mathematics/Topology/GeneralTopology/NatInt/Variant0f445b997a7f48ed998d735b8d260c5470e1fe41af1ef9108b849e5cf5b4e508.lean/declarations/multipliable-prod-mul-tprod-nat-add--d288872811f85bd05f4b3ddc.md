# Multipliable.prod_mul_tprod_nat_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72523512-08cb-c9cf-0fe9-0710dba6aa14",
  "kind": "theorem",
  "lexical_name": "Multipliable.prod_mul_tprod_nat_add",
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
  "slug": "multipliable-prod-mul-tprod-nat-add--d288872811f85bd05f4b3ddc",
  "source": {
    "blob": "5071414aef3e355f531ae4bd3ccdb26cca49c783",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 247,
    "path": "GRWTSK/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d288872811f85bd05f4b3ddc5307a3da92dd1f4bf500816da76ad1a4d5943d13",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72523512-08cb-c9cf-0fe9-0710dba6aa14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Multipliable.prod_mul_tprod_nat_add [T2Space G] {f : ℕ → G} (k : ℕ)
    (h : Multipliable f) : ((∏ i ∈ range k, f i) * ∏' i, f (i + k)) = ∏' i, f i :=
  Multipliable.prod_mul_tprod_nat_mul' <| (multipliable_nat_add_iff k).2 h

@[deprecated (since := "2025-04-12")] alias sum_add_tsum_nat_add :=
  Summable.sum_add_tsum_nat_add
@[to_additive existing, deprecated (since := "2025-04-12")] alias prod_mul_tprod_nat_add :=
  Multipliable.prod_mul_tprod_nat_add

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5071414aef3e355f531ae4bd3ccdb26cca49c783` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
