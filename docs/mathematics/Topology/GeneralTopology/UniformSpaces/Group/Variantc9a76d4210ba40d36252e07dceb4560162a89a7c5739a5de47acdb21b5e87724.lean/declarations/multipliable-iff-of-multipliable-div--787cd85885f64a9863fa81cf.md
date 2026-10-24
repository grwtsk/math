# multipliable_iff_of_multipliable_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59d89c01-7543-11ed-b604-4a14a6689fa2",
  "kind": "theorem",
  "lexical_name": "multipliable_iff_of_multipliable_div",
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
  "slug": "multipliable-iff-of-multipliable-div--787cd85885f64a9863fa81cf",
  "source": {
    "blob": "a388fffe00ac421b88935059d5300a63f90641b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 73,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:787cd85885f64a9863fa81cfcd49e22b3a312bb34747b7f4cbdc87f335983b90",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59d89c01-7543-11ed-b604-4a14a6689fa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multipliable_iff_of_multipliable_div (hfg : Multipliable fun b ↦ f b / g b) :
    Multipliable f ↔ Multipliable g :=
  ⟨fun hf ↦ hf.trans_div <| by simpa only [inv_div] using hfg.inv, fun hg ↦ hg.trans_div hfg⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a388fffe00ac421b88935059d5300a63f90641b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
