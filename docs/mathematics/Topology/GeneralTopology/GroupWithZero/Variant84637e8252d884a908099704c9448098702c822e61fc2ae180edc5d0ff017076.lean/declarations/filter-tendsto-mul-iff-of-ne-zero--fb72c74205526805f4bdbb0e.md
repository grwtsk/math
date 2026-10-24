# Filter.tendsto_mul_iff_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9045940c-103b-cc75-ba43-4919c14e9636",
  "kind": "theorem",
  "lexical_name": "Filter.tendsto_mul_iff_of_ne_zero",
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
  "slug": "filter-tendsto-mul-iff-of-ne-zero--fb72c74205526805f4bdbb0e",
  "source": {
    "blob": "3c077fbea6cded50ee848a09830538d5566134fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 174,
    "path": "GRWTSK/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb72c74205526805f4bdbb0e822836620a28eba1d445f09a3caec9a4e552d2a4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9045940c-103b-cc75-ba43-4919c14e9636`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.tendsto_mul_iff_of_ne_zero [T1Space G₀] {f g : α → G₀} {l : Filter α} {x y : G₀}
    (hg : Tendsto g l (𝓝 y)) (hy : y ≠ 0) :
    Tendsto (fun n => f n * g n) l (𝓝 <| x * y) ↔ Tendsto f l (𝓝 x) := by
  refine' ⟨fun hfg => _, fun hf => hf.mul hg⟩
  rw [← mul_div_cancel x hy]
  refine' Tendsto.congr' _ (hfg.div hg hy)
  refine' (hg.eventually_ne hy).mono fun n hn => mul_div_cancel _ hn
#align filter.tendsto_mul_iff_of_ne_zero Filter.tendsto_mul_iff_of_ne_zero

variable [TopologicalSpace α] [TopologicalSpace β] {s : Set α} {a : α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GroupWithZero/Variant84637e8252d884a908099704c9448098702c822e61fc2ae180edc5d0ff017076.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c077fbea6cded50ee848a09830538d5566134fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
