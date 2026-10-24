# Multipliable.tprod_eq_zero_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7cead22bb4018e5b94547937b35c1bd6bf4187cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 249,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3ba4ef8b9665e9450888e887e5058028d869f2ddc594e5727484e240929e3590.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:647879bb-5bad-d320-6c96-59eb5f7e0e18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87d84069-bf24-4645-08de-9368d763f8f5",
  "kind": "theorem",
  "lexical_name": "Multipliable.tprod_eq_zero_mul",
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
  "slug": "multipliable-tprod-eq-zero-mul--488c27a50e070a8fb2c1d283",
  "source": {
    "blob": "7cead22bb4018e5b94547937b35c1bd6bf4187cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 249,
    "path": "GRWTSK/Topology/GeneralTopology/NatInt/Variant3ba4ef8b9665e9450888e887e5058028d869f2ddc594e5727484e240929e3590.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:488c27a50e070a8fb2c1d283dc8b04a4215e6a31183a6f08186b8338e6c99727",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NatInt/Variant3ba4ef8b9665e9450888e887e5058028d869f2ddc594e5727484e240929e3590.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87d84069-bf24-4645-08de-9368d763f8f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Multipliable.tprod_eq_zero_mul [T2Space G] {f : ℕ → G} (hf : Multipliable f) :
    ∏' b, f b = f 0 * ∏' b, f (b + 1) :=
  tprod_eq_zero_mul' <| (multipliable_nat_add_iff 1).2 hf

@[deprecated (since := "2025-04-12")] alias tsum_eq_zero_add := Summable.tsum_eq_zero_add
@[to_additive existing, deprecated (since := "2025-04-12")] alias tprod_eq_zero_mul :=
  Multipliable.tprod_eq_zero_mul

/-- For `f : ℕ → G`, the product `∏' k, f (k + i)` tends to one. This does not require a
multipliability assumption on `f`, as otherwise all such products are one. -/
@[to_additive "For `f : ℕ → G`, the sum `∑' k, f (k + i)` tends to zero. This does not require a
summability assumption on `f`, as otherwise all such sums are zero."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NatInt/Variant3ba4ef8b9665e9450888e887e5058028d869f2ddc594e5727484e240929e3590.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NatInt/Variant3ba4ef8b9665e9450888e887e5058028d869f2ddc594e5727484e240929e3590.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cead22bb4018e5b94547937b35c1bd6bf4187cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
