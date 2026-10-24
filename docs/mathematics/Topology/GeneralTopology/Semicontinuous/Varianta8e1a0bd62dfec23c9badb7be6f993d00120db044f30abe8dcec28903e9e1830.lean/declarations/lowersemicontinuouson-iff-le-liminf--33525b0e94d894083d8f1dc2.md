# lowerSemicontinuousOn_iff_le_liminf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61776ccd-6e5f-f4d8-b016-5b866cef0301",
  "kind": "theorem",
  "lexical_name": "lowerSemicontinuousOn_iff_le_liminf",
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
  "slug": "lowersemicontinuouson-iff-le-liminf--33525b0e94d894083d8f1dc2",
  "source": {
    "blob": "61b202dcb4fb0319aaa7ff551674bf000c0202ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 314,
    "path": "GRWTSK/Topology/GeneralTopology/Semicontinuous/Varianta8e1a0bd62dfec23c9badb7be6f993d00120db044f30abe8dcec28903e9e1830.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33525b0e94d894083d8f1dc20a61af91b37fd17b06ad159776b5d5a9b875d03c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Semicontinuous/Varianta8e1a0bd62dfec23c9badb7be6f993d00120db044f30abe8dcec28903e9e1830.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61776ccd-6e5f-f4d8-b016-5b866cef0301`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lowerSemicontinuousOn_iff_le_liminf {f : α → γ} :
    LowerSemicontinuousOn f s ↔ ∀ x ∈ s, f x ≤ liminf f (𝓝[s] x) := by
  simp only [← lowerSemicontinuousWithinAt_iff_le_liminf, LowerSemicontinuousOn]

alias ⟨LowerSemicontinuousOn.le_liminf, _⟩ := lowerSemicontinuousOn_iff_le_liminf

variable [TopologicalSpace γ] [OrderTopology γ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Semicontinuous/Varianta8e1a0bd62dfec23c9badb7be6f993d00120db044f30abe8dcec28903e9e1830.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Semicontinuous/Varianta8e1a0bd62dfec23c9badb7be6f993d00120db044f30abe8dcec28903e9e1830.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61b202dcb4fb0319aaa7ff551674bf000c0202ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
