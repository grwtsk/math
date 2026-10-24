# isCountablyCompact_iff_seq_clusterPt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04dfca79-0b8e-627e-3fc6-caba366d5e39",
  "kind": "theorem",
  "lexical_name": "isCountablyCompact_iff_seq_clusterPt",
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
  "slug": "iscountablycompact-iff-seq-clusterpt--b70670f09f5eb65ab0cb6958",
  "source": {
    "blob": "48f56d45bd4d4af16630beb926970726b1002f46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 99,
    "path": "GRWTSK/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b70670f09f5eb65ab0cb69584c3d992cda3fddb96dee832dad9257450299837e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04dfca79-0b8e-627e-3fc6-caba366d5e39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCountablyCompact_iff_seq_clusterPt :
    IsCountablyCompact A ↔
      ∀ x : ℕ → E, (∀ᶠ n in atTop, x n ∈ A) → ∃ a ∈ A, MapClusterPt a atTop x where
  mp h x hx := h (tendsto_principal.mpr hx)
  mpr hA f _ _ hle := by
    obtain ⟨x, hx⟩ := f.exists_seq_tendsto
    obtain ⟨a, ha, hxa⟩ := hA x (by simpa using hx.mono_right hle)
    exact ⟨a, ha, hxa.clusterPt.mono hx⟩

alias ⟨IsCountablyCompact.seq_clusterPt,
  IsCountablyCompact.of_seq_clusterPt⟩ := isCountablyCompact_iff_seq_clusterPt

/-- For every countable open directed cover of a countably compact set, there exists a single
element of the cover which itself includes the set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CountablyCompact/Variant97cfede995f713b066bb2e76a57acdf7c10d5ecbd89bf26d4f90330fee43526e.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48f56d45bd4d4af16630beb926970726b1002f46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
