# Iic_sdiff_Ioc_self_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e105e92-894d-4852-cb4b-0ead5f163cd7",
  "kind": "theorem",
  "lexical_name": "Iic_sdiff_Ioc_self_of_le",
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
  "slug": "iic-sdiff-ioc-self-of-le--597a68012f53494d92dd874a",
  "source": {
    "blob": "6354c69de41b35eb899c7d48b3a13357db3fc99a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 903,
    "line": 899,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0ab10ffcdc8c32e853d4545f6e54156fc22ecfebc7ed4ee392567fb1d3de842c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:597a68012f53494d92dd874a16db2f6428fa418c4b98e7ec74ad937d49c5094b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant0ab10ffcdc8c32e853d4545f6e54156fc22ecfebc7ed4ee392567fb1d3de842c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e105e92-894d-4852-cb4b-0ead5f163cd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 899–903.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iic_sdiff_Ioc_self_of_le (hab : a ≤ b) : Iic b \ Ioc a b = Iic a := by
  rw [Iic_sdiff_Ioc, min_eq_left hab]

@[deprecated (since := "2026-06-03")] alias Iic_diff_Ioc_self_of_le := Iic_sdiff_Ioc_self_of_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0ab10ffcdc8c32e853d4545f6e54156fc22ecfebc7ed4ee392567fb1d3de842c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0ab10ffcdc8c32e853d4545f6e54156fc22ecfebc7ed4ee392567fb1d3de842c.lean#L899).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6354c69de41b35eb899c7d48b3a13357db3fc99a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
