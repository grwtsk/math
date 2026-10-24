# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17577f8e81dd284d9ed8286fa1fac1d58948b025fb7fbb09b5c80b84c35fe0e3",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c2110f7cb9ffd4c8da541cae",
  "source": {
    "blob": "a49253ce7e75d937d2ec72b15e1147d18298d04d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 246,
    "path": "GRWTSK/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2110f7cb9ffd4c8da541caec0d05cd4eeb1d63045e7075aa28a71a1cf160b43",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17577f8e81dd284d9ed8286fa1fac1d58948b025fb7fbb09b5c80b84c35fe0e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) R1Space.quasiSober [R1Space α] : QuasiSober α where
  sober h hs := by
    obtain ⟨x, hx⟩ := h.nonempty
    use x
    apply subset_antisymm
    · rw [← hs.closure_eq]
      exact closure_mono (singleton_subset_iff.mpr hx)
    · exact isPreirreducible_iff_forall_mem_subset_closure_singleton.mp h.isPreirreducible x hx

attribute [local instance] specializationPreorder in
/--
In a quasi-sober irreducible space, every point of a non-dense subset is a strict
specialization of the generic point of the whole space.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sober/Variant3e0a51cd510a77afbf8a350addfa58d3816de4e4c74355c339ec63251e6fbb74.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a49253ce7e75d937d2ec72b15e1147d18298d04d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
