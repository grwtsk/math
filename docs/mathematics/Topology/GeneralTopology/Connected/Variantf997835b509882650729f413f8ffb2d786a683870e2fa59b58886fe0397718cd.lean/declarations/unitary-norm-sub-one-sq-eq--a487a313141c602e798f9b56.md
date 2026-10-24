# Unitary.norm_sub_one_sq_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0b59abf-105b-cfab-bd6d-a4ed7555b20c",
  "kind": "lemma",
  "lexical_name": "Unitary.norm_sub_one_sq_eq",
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
  "slug": "unitary-norm-sub-one-sq-eq--a487a313141c602e798f9b56",
  "source": {
    "blob": "092b916ab1e0d55969c502ec34031fb0f1a901a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 82,
    "path": "GRWTSK/Topology/GeneralTopology/Connected/Variantf997835b509882650729f413f8ffb2d786a683870e2fa59b58886fe0397718cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a487a313141c602e798f9b561042327b3fa8e86899a6af7fe7cff271dee77bcb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Connected/Variantf997835b509882650729f413f8ffb2d786a683870e2fa59b58886fe0397718cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0b59abf-105b-cfab-bd6d-a4ed7555b20c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Unitary.norm_sub_one_sq_eq {u : A} (hu : u ∈ unitary A) {x : ℝ}
    (hz : IsLeast (re '' (spectrum ℂ u)) x) :
    ‖u - 1‖ ^ 2 = 2 * (1 - x) := by
  obtain (_ | _) := subsingleton_or_nontrivial A
  · exfalso; apply hz.nonempty.of_image.ne_empty; simp
  rw [← cfc_id' ℂ u, ← cfc_one ℂ u, ← cfc_sub ..]
  have h_eqOn : (spectrum ℂ u).EqOn (fun z ↦ ‖z - 1‖ ^ 2) (fun z ↦ 2 * (1 - z.re)) :=
    Complex.norm_sub_one_sq_eqOn_sphere.mono <| spectrum.subset_circle_of_unitary (𝕜 := ℂ) hu
  have h₂ : IsGreatest ((fun z ↦ 2 * (1 - z.re)) '' (spectrum ℂ u)) (2 * (1 - x)) := by
    have : Antitone (fun y : ℝ ↦ 2 * (1 - y)) := by intro _ _ _; simp only; gcongr
    simpa [Set.image_image] using this.map_isLeast hz
  have h₃ : IsGreatest ((‖· - 1‖ ^ 2) '' spectrum ℂ u) (‖cfc (· - 1 : ℂ → ℂ) u‖ ^ 2) := by
    have := pow_left_monotoneOn (n := 2) |>.mono (s₂ := ((‖· - 1‖) '' spectrum ℂ u)) (by simp)
    simpa [Set.image_image] using this.map_isGreatest (IsGreatest.norm_cfc (fun z : ℂ ↦ z - 1) u)
  exact h₃.unique (h_eqOn.image_eq ▸ h₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Connected/Variantf997835b509882650729f413f8ffb2d786a683870e2fa59b58886fe0397718cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Connected/Variantf997835b509882650729f413f8ffb2d786a683870e2fa59b58886fe0397718cd.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `092b916ab1e0d55969c502ec34031fb0f1a901a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
