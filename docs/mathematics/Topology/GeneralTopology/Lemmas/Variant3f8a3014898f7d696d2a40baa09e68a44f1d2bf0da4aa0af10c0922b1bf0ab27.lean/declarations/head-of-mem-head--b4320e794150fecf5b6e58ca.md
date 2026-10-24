# head_of_mem_head?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8f8ac81-7136-7123-72d9-6d326235bf10",
  "kind": "theorem",
  "lexical_name": "head_of_mem_head?",
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
  "slug": "head-of-mem-head--b4320e794150fecf5b6e58ca",
  "source": {
    "blob": "320cb9b319d549895b9ccbc5cc2f5256e84577ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1009,
    "line": 1003,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant3f8a3014898f7d696d2a40baa09e68a44f1d2bf0da4aa0af10c0922b1bf0ab27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4320e794150fecf5b6e58ca2bb0c038bd53fa5f7d49bf10111a8de28ea15b66",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant3f8a3014898f7d696d2a40baa09e68a44f1d2bf0da4aa0af10c0922b1bf0ab27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8f8ac81-7136-7123-72d9-6d326235bf10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1003–1009.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem head_of_mem_head? {l : List α} {x} (hx : x ∈ l.head?) :
    l.head (ne_nil_of_mem (mem_of_mem_head? hx)) = x :=
  head_of_head?_eq_some hx

/-! ### headD -/

/-- `simp` unfolds `headD` in terms of `head?` and `Option.getD`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant3f8a3014898f7d696d2a40baa09e68a44f1d2bf0da4aa0af10c0922b1bf0ab27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant3f8a3014898f7d696d2a40baa09e68a44f1d2bf0da4aa0af10c0922b1bf0ab27.lean#L1003).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `320cb9b319d549895b9ccbc5cc2f5256e84577ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
