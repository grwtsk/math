# singleton_mem_nhds_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec4213f2e12fd977a28a9524aba0f85a858f69e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62e75820-3372-54a8-b935-cfda575faf13",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f3db9480-0285-a9df-69b0-f02824314eb2",
  "kind": "theorem",
  "lexical_name": "singleton_mem_nhds_of_ne_zero",
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
  "slug": "singleton-mem-nhds-of-ne-zero--a562965dc94035d376047a63",
  "source": {
    "blob": "ec4213f2e12fd977a28a9524aba0f85a858f69e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 106,
    "path": "GRWTSK/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a562965dc94035d376047a63e70b322d39253d0594a50e8633e1e659ee791dbd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3db9480-0285-a9df-69b0-f02824314eb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem singleton_mem_nhds_of_ne_zero (h : γ ≠ 0) : ({γ} : Set Γ₀) ∈ 𝓝 (γ : Γ₀) := by simp [h]
#align with_zero_topology.singleton_mem_nhds_of_ne_zero WithZeroTopology.singleton_mem_nhds_of_ne_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec4213f2e12fd977a28a9524aba0f85a858f69e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
