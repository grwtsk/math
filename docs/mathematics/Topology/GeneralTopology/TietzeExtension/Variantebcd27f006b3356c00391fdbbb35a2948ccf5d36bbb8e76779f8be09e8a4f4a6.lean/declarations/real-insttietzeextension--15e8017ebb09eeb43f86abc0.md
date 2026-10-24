# Real.instTietzeExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e84297862b655031a9ace4d3e558a841d18c82efd569152009f27a5f674e873d",
  "kind": "instance",
  "lexical_name": "Real.instTietzeExtension",
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
  "slug": "real-insttietzeextension--15e8017ebb09eeb43f86abc0",
  "source": {
    "blob": "0d6a245ba8d83c8009f6122661fa19c696a89a22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 515,
    "path": "GRWTSK/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15e8017ebb09eeb43f86abc09403d87760fccbf030e749532874206d65201bfd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e84297862b655031a9ace4d3e558a841d18c82efd569152009f27a5f674e873d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Real.instTietzeExtension : TietzeExtension ℝ where
  exists_restrict_eq' _s hs f :=
    f.exists_restrict_eq_forall_mem_of_closed (fun _ => mem_univ _) univ_nonempty hs |>.imp
      fun _ ↦ (And.right ·)

open NNReal in
/-- **Tietze extension theorem** for nonnegative real-valued continuous maps.
`ℝ≥0` is a `TietzeExtension` space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d6a245ba8d83c8009f6122661fa19c696a89a22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
