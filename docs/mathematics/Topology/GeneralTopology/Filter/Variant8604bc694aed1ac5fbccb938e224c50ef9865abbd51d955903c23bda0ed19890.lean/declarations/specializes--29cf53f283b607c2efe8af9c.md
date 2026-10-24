# Specializes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2df36743c8ae807c03eb1cc21b87d8fbcdadd8f894deb85ef5730bf7cfc17f0f",
  "kind": "def",
  "lexical_name": "Specializes",
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
  "slug": "specializes--29cf53f283b607c2efe8af9c",
  "source": {
    "blob": "494651cd73b7acc937993f980bfcdeb3bedaaab7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 196,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29cf53f283b607c2efe8af9cfaaab0564df424c98c4683b9989794877f50a65c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2df36743c8ae807c03eb1cc21b87d8fbcdadd8f894deb85ef5730bf7cfc17f0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Specializes (x y : X) : Prop := 𝓝 x ≤ 𝓝 y

@[inherit_doc]
infixl:300 " ⤳ " => Specializes

/-- Two points `x` and `y` in a topological space are `Inseparable` if any of the following
equivalent properties hold:

- `𝓝 x = 𝓝 y`; we use this property as the definition;
- for any open set `s`, `x ∈ s ↔ y ∈ s`, see `inseparable_iff_forall_isOpen`;
- for any closed set `s`, `x ∈ s ↔ y ∈ s`, see `inseparable_iff_forall_isClosed`;
- `x ∈ closure {y}` and `y ∈ closure {x}`, see `inseparable_iff_mem_closure`;
- `closure {x} = closure {y}`, see `inseparable_iff_closure_eq`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `494651cd73b7acc937993f980bfcdeb3bedaaab7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
