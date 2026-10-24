# _root_.GRWTSK.Algebra.LinearAlgebra.FinsuppLinearMapInjective.Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.Module.Finite.of_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:241d647c-c190-f750-8e5d-a6ef46197aaf",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.FinsuppLinearMapInjective.Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.Module.Finite.of_exact",
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
  "slug": "root-grwtsk-algebra-linearalgebra-finsupplinearmapinjective-variant3762a--be616c6772982b457de49121",
  "source": {
    "blob": "8612c795098e73760be678c9fb31e99cdb25959a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 165,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant234c3f279311d4d2ed4b3a5720db783d8213ce1612346858136d45c80728c5eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be616c6772982b457de49121eec2a56c4aa2687056985188fe22c1a4aab58713",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finsupp/Variant234c3f279311d4d2ed4b3a5720db783d8213ce1612346858136d45c80728c5eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:241d647c-c190-f750-8e5d-a6ef46197aaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.LinearAlgebra.FinsuppLinearMapInjective.Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.Module.Finite.of_exact {f : M →ₗ[R] N} {g : N →ₗ[R] P}
    (h_exact : Function.Exact f g) (h_surj : Function.Surjective g)
    [Module.Finite R M] [Module.Finite R P] : Module.Finite R N := by
  refine ⟨(⊤ : Submodule R _).fg_of_fg_map_of_fg_inf_ker g ?_ ?_⟩
  · rw [← LinearMap.range_eq_top] at h_surj
    rw [Submodule.map_top, h_surj]
    exact Module.Finite.fg_top
  · simp [LinearMap.exact_iff.1 h_exact]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finsupp/Variant234c3f279311d4d2ed4b3a5720db783d8213ce1612346858136d45c80728c5eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant234c3f279311d4d2ed4b3a5720db783d8213ce1612346858136d45c80728c5eb.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8612c795098e73760be678c9fb31e99cdb25959a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
