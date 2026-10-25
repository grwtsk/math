# isTransitive_iff_subset_powerset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22233443-240f-9e6d-9783-d0caf0c61e7a",
  "kind": "theorem",
  "lexical_name": "isTransitive_iff_subset_powerset",
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
  "slug": "istransitive-iff-subset-powerset--cfed33736f7be9245fc1dcfd",
  "source": {
    "blob": "f40a2ae12c1639cdf9070fa3d9f9c80afe07c466",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant7cf65a21e0b75daf79cfdea655efa0f6588882b645441a48157c0696bebe3393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfed33736f7be9245fc1dcfd7b1a2ecfa44761cd05436c28079359d5bb289b82",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant7cf65a21e0b75daf79cfdea655efa0f6588882b645441a48157c0696bebe3393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22233443-240f-9e6d-9783-d0caf0c61e7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTransitive_iff_subset_powerset : x.IsTransitive ↔ x ⊆ powerset x :=
  ⟨fun h _ hy => mem_powerset.2 <| h.subset_of_mem hy, fun H _ hy _ hz => mem_powerset.1 (H hy) hz⟩

alias ⟨IsTransitive.subset_powerset, _⟩ := isTransitive_iff_subset_powerset

/-! ### Ordinals -/

/-- A set `x` is a von Neumann ordinal when it's a transitive set, that's transitive under `∈`. We
prove that this further implies that `x` is well-ordered under `∈` in `isOrdinal_iff_isWellOrder`.

The transitivity condition `a ∈ b → b ∈ c → a ∈ c` can be written without assuming `a ∈ x` and
`b ∈ x`. The lemma `isOrdinal_iff_isTrans` shows this condition is equivalent to the usual one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant7cf65a21e0b75daf79cfdea655efa0f6588882b645441a48157c0696bebe3393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant7cf65a21e0b75daf79cfdea655efa0f6588882b645441a48157c0696bebe3393.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f40a2ae12c1639cdf9070fa3d9f9c80afe07c466` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
