# Pointed.of_nonempty_of_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26b8d8e4-c042-c7bc-fb63-275808bc9a65",
  "kind": "lemma",
  "lexical_name": "Pointed.of_nonempty_of_isClosed",
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
  "slug": "pointed-of-nonempty-of-isclosed--5ed7034522b9a8c81a24a5f0",
  "source": {
    "blob": "a438ceb2f2bb23de50c3ba0a53e6ccfcce4a6a94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 179,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianted1f7febf486f6a7e66d28c60fc02c52a1175b9e1750260504cbc18f64bc4e5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ed7034522b9a8c81a24a5f0bdb9b5f12a897fac9fd1115cf9edf6af868b533a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianted1f7febf486f6a7e66d28c60fc02c52a1175b9e1750260504cbc18f64bc4e5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26b8d8e4-c042-c7bc-fb63-275808bc9a65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Pointed.of_nonempty_of_isClosed (hC : (C : Set E).Nonempty) (hSclos : IsClosed (C : Set E)) :
    C.Pointed := by
  obtain ⟨x, hx⟩ := hC
  let f : 𝕜 → E := (· • x)
  -- The closure of `f (0, ∞)` is a subset of `C`
  have hfS : closure (f '' Set.Ioi 0) ⊆ C :=
    hSclos.closure_subset_iff.2 <| by rintro _ ⟨_, h, rfl⟩; exact C.smul_mem h hx
  -- `f` is continuous at `0` from the right
  have fc : ContinuousWithinAt f (Set.Ioi (0 : 𝕜)) 0 := by fun_prop
  -- `0 ∈ closure f (0, ∞) ⊆ C, 0 ∈ C`
  simpa [f, Pointed, ← SetLike.mem_coe] using hfS <| fc.mem_closure_image <| by simp

variable [IsOrderedRing 𝕜]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianted1f7febf486f6a7e66d28c60fc02c52a1175b9e1750260504cbc18f64bc4e5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianted1f7febf486f6a7e66d28c60fc02c52a1175b9e1750260504cbc18f64bc4e5a.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a438ceb2f2bb23de50c3ba0a53e6ccfcce4a6a94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
