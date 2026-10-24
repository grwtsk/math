# linearIndepOn_coroot_iff_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:208dbeb0-df37-fe78-e941-c0708dfb2246",
  "kind": "lemma",
  "lexical_name": "linearIndepOn_coroot_iff_aux",
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
  "slug": "linearindepon-coroot-iff-aux--31f328909ccd7461f1c5da90",
  "source": {
    "blob": "e684e6d8e8cf9fb4e017f847098a6fe3ef0bfe93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 392,
    "path": "GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31f328909ccd7461f1c5da905dc23f3b81f57ddaeb368915eb56d5a41068588a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:208dbeb0-df37-fe78-e941-c0708dfb2246`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma linearIndepOn_coroot_iff_aux {s : Set ι} (h : LinearIndepOn R P.root s) :
    LinearIndepOn R P.coroot s := by
  obtain ⟨f, hf⟩ : ∃ f : s → Rˣ, ∀ i : s, P.coroot i = f i • P.PolarizationEquiv (P.root i) :=
    ⟨fun i ↦ Units.mk0 (2 / P.RootForm (P.root i) (P.root i))
      (by simp [two_ne_zero, IsAnisotropic.rootForm_root_ne_zero]),
     fun i ↦ by simp [coroot_eq_polarizationEquiv_apply_root]⟩
  have : s.domRestrict P.coroot = P.PolarizationEquiv.toLinearMap ∘ (f • s.domRestrict P.root) := by
    ext; simp [hf, polarizationEquiv_apply]
  rw [← linearIndependent_restrict_iff, this,
    LinearMap.linearIndependent_iff_of_injOn _ P.PolarizationEquiv.injective.injOn]
  simpa

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e684e6d8e8cf9fb4e017f847098a6fe3ef0bfe93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
