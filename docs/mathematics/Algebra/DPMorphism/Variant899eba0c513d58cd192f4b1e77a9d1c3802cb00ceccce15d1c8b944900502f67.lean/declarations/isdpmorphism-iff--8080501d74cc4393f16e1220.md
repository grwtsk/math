# isDPMorphism_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16568d2d-d33c-4fa3-875a-3d5e49b1d2f4",
  "kind": "lemma",
  "lexical_name": "isDPMorphism_iff",
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
  "slug": "isdpmorphism-iff--8080501d74cc4393f16e1220",
  "source": {
    "blob": "53a7db048e73987a63601dc783f3f993b786f204",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 78,
    "path": "GRWTSK/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8080501d74cc4393f16e1220a3625aec17e59912a8eb7ef7732cfd09766b29de",
  "verification": {
    "reference": "docs/verification/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16568d2d-d33c-4fa3-875a-3d5e49b1d2f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isDPMorphism_iff (f : A →+* B) :
    IsDPMorphism hI hJ f ↔ I.map f ≤ J ∧ ∀ n ≠ 0, ∀ a ∈ I, hJ.dpow n (f a) = f (hI.dpow n a) := by
  rw [isDPMorphism_def, and_congr_right_iff]
  refine fun hIJ ↦ ⟨fun H n _ ↦ H, fun H n ↦ ?_⟩
  by_cases hn : n = 0
  · intro _ ha
    rw [hn, hI.dpow_zero ha, hJ.dpow_zero (hIJ (mem_map_of_mem f ha)), map_one]
  · exact H n hn

namespace IsDPMorphism

variable {hI hJ} {C : Type*} [CommSemiring C] {K : Ideal C} (hK : DividedPowers K)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53a7db048e73987a63601dc783f3f993b786f204` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
