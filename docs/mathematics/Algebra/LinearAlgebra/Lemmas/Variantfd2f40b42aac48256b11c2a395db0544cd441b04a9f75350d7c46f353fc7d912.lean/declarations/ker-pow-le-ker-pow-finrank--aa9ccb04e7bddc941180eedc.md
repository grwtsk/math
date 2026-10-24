# ker_pow_le_ker_pow_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b0d996dbe8b319705f742569437b6bea16c31be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 435,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd2f40b42aac48256b11c2a395db0544cd441b04a9f75350d7c46f353fc7d912.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a478c92-fc62-2d83-1a30-73991ab42d16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c336e68-1905-d26f-eb1b-ba88597fbf88",
  "kind": "theorem",
  "lexical_name": "ker_pow_le_ker_pow_finrank",
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
  "slug": "ker-pow-le-ker-pow-finrank--aa9ccb04e7bddc941180eedc",
  "source": {
    "blob": "5b0d996dbe8b319705f742569437b6bea16c31be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 435,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantfd2f40b42aac48256b11c2a395db0544cd441b04a9f75350d7c46f353fc7d912.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa9ccb04e7bddc941180eedcddc82aa73a38843c761bad67d2f3fa5a79387cfa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variantfd2f40b42aac48256b11c2a395db0544cd441b04a9f75350d7c46f353fc7d912.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c336e68-1905-d26f-eb1b-ba88597fbf88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ker_pow_le_ker_pow_finrank [FiniteDimensional K V] (f : End K V) (m : ℕ) :
    LinearMap.ker (f ^ m) ≤ LinearMap.ker (f ^ finrank K V) := by
  by_cases! h_cases : m < finrank K V
  · rw [← add_tsub_cancel_of_le h_cases.le, add_comm, pow_add]
    apply LinearMap.ker_le_ker_comp
  · rw [ker_pow_eq_ker_pow_finrank_of_le h_cases]

end End

end Module

namespace Submodule

section DivisionRing

variable {W : Type v'} [DivisionRing K] [AddCommGroup W] [AddCommGroup V] [Module K V] [Module K W]
  {f : V →ₗ[K] W}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variantfd2f40b42aac48256b11c2a395db0544cd441b04a9f75350d7c46f353fc7d912.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantfd2f40b42aac48256b11c2a395db0544cd441b04a9f75350d7c46f353fc7d912.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b0d996dbe8b319705f742569437b6bea16c31be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
