# HasProd.of_nat_of_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3050ba49-7211-f568-d655-a935b62f87e5",
  "kind": "lemma",
  "lexical_name": "HasProd.of_nat_of_neg",
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
  "slug": "hasprod-of-nat-of-neg--26d847880fd6690b7ad5f9e4",
  "source": {
    "blob": "5071414aef3e355f531ae4bd3ccdb26cca49c783",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 501,
    "path": "GRWTSK/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26d847880fd6690b7ad5f9e4ceec585b313c96c49a26c52e96132cfd74d08dd3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3050ba49-7211-f568-d655-a935b62f87e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 501–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasProd.of_nat_of_neg {f : ℤ → G} (hf₁ : HasProd (fun n : ℕ ↦ f n) g)
    (hf₂ : HasProd (fun n : ℕ ↦ f (-n)) g') : HasProd f (g * g' / f 0) := by
  refine mul_div_assoc' g .. ▸ hf₁.of_nat_of_neg_add_one (m' := g' / f 0) ?_
  rwa [← hasProd_nat_add_iff' 1, prod_range_one, Nat.cast_zero, neg_zero] at hf₂

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean#L501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5071414aef3e355f531ae4bd3ccdb26cca49c783` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
