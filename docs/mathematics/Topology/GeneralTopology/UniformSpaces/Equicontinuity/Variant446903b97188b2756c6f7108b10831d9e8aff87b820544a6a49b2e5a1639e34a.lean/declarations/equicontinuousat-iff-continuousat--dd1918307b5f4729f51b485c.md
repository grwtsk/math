# equicontinuousAt_iff_continuousAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc7b2e8d7367ebd0e1b957b6d6402ec15a662f5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 484,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/446903b97188b2756c6f7108b10831d9e8aff87b820544a6a49b2e5a1639e34a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7449f6ba-6d4e-e609-78c8-6f96772bf0d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4af3b085-46f7-dba3-d248-35f8aa25e9a5",
  "kind": "theorem",
  "lexical_name": "equicontinuousAt_iff_continuousAt",
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
  "slug": "equicontinuousat-iff-continuousat--dd1918307b5f4729f51b485c",
  "source": {
    "blob": "fc7b2e8d7367ebd0e1b957b6d6402ec15a662f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 484,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant446903b97188b2756c6f7108b10831d9e8aff87b820544a6a49b2e5a1639e34a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd1918307b5f4729f51b485c418c86947090a8e84342960857657947953e376a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant446903b97188b2756c6f7108b10831d9e8aff87b820544a6a49b2e5a1639e34a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4af3b085-46f7-dba3-d248-35f8aa25e9a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equicontinuousAt_iff_continuousAt {F : ι → X → α} {x₀ : X} :
    EquicontinuousAt F x₀ ↔ ContinuousAt (ofFun ∘ Function.swap F : X → ι →ᵤ α) x₀ := by
  rw [ContinuousAt, (UniformFun.hasBasis_nhds ι α _).tendsto_right_iff]
  rfl

/-- A family `𝓕 : ι → X → α` is equicontinuous at `x₀` within `S` iff the function
`swap 𝓕 : X → ι → α` is continuous at `x₀` within `S`
*when `ι → α` is equipped with the topology of uniform convergence*. This is very useful for
developing the equicontinuity API, but it should not be used directly for other purposes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant446903b97188b2756c6f7108b10831d9e8aff87b820544a6a49b2e5a1639e34a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant446903b97188b2756c6f7108b10831d9e8aff87b820544a6a49b2e5a1639e34a.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc7b2e8d7367ebd0e1b957b6d6402ec15a662f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
