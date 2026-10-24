# sInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd781ed0-5006-f873-0d11-c3262657aa75",
  "kind": "theorem",
  "lexical_name": "sInter",
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
  "slug": "sinter--be071848d8e048a5f66cd4db",
  "source": {
    "blob": "015e3a41f25ae35d8cf8ba0ddceb5e0e0a27833e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 145,
    "path": "GRWTSK/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be071848d8e048a5f66cd4db8ba307c4d952cb460c0629c1d6aa83edfa9bf508",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd781ed0-5006-f873-0d11-c3262657aa75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sInter [IsOrderedRing 𝕜] [ContinuousAdd 𝕜] {F : Finset (Set E)} (hF : F.Nonempty)
    (hAF : ∀ B ∈ F, IsExposed 𝕜 A B) : IsExposed 𝕜 A (⋂₀ F) := by
  classical
  induction F using Finset.induction with
  | empty => exfalso; exact Finset.not_nonempty_empty hF
  | insert C F _ hF' =>
    rw [Finset.coe_insert, sInter_insert]
    obtain rfl | hFnemp := F.eq_empty_or_nonempty
    · rw [Finset.coe_empty, sInter_empty, inter_univ]
      exact hAF C (Finset.mem_singleton_self C)
    · exact (hAF C (Finset.mem_insert_self C F)).inter
        (hF' hFnemp fun B hB => hAF B (Finset.mem_insert_of_mem hB))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `015e3a41f25ae35d8cf8ba0ddceb5e0e0a27833e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
