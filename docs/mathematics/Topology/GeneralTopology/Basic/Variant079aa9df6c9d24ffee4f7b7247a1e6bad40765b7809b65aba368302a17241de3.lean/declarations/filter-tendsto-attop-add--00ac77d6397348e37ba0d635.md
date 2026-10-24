# Filter.Tendsto.atTop_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99b7daff-d6fb-eae4-c800-08b4a887b057",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.atTop_add",
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
  "slug": "filter-tendsto-attop-add--00ac77d6397348e37ba0d635",
  "source": {
    "blob": "7efd25fe736c11d967d9c8c43876cdde33cbfb01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1931,
    "line": 1924,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00ac77d6397348e37ba0d635d98b3fdd7dc89207151edf80e20cb43c5d2c8322",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99b7daff-d6fb-eae4-c800-08b4a887b057`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1924–1931.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.atTop_add {C : α} (hf : Tendsto f l atTop) (hg : Tendsto g l (𝓝 C)) :
    Tendsto (fun x => f x + g x) l atTop := by
  conv in _ + _ => rw [add_comm]
  exact hg.add_atTop hf
#align filter.tendsto.at_top_add Filter.Tendsto.atTop_add

/-- In a linearly ordered additive commutative group with the order topology, if `f` tends to
`atBot` and `g` tends to `C` then `f + g` tends to `atBot`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean#L1924).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7efd25fe736c11d967d9c8c43876cdde33cbfb01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
