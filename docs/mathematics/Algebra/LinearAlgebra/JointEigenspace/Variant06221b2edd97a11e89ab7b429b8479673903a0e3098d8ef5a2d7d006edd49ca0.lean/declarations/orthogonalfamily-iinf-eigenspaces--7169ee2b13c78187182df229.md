# orthogonalFamily_iInf_eigenspaces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47578bdf-d28b-905f-69c6-f9c3fb607b95",
  "kind": "theorem",
  "lexical_name": "orthogonalFamily_iInf_eigenspaces",
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
  "slug": "orthogonalfamily-iinf-eigenspaces--7169ee2b13c78187182df229",
  "source": {
    "blob": "b735b53187054fa6b7aa08bd7ec084f379f78dac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 80,
    "path": "GRWTSK/Algebra/LinearAlgebra/JointEigenspace/Variant06221b2edd97a11e89ab7b429b8479673903a0e3098d8ef5a2d7d006edd49ca0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7169ee2b13c78187182df229e341ca4d4afe958da6ba94d173993d5d5f59ac14",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JointEigenspace/Variant06221b2edd97a11e89ab7b429b8479673903a0e3098d8ef5a2d7d006edd49ca0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47578bdf-d28b-905f-69c6-f9c3fb607b95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orthogonalFamily_iInf_eigenspaces (hT : ∀ i, (T i).IsSymmetric) :
    OrthogonalFamily 𝕜 (fun γ : n → 𝕜 ↦ (⨅ j, eigenspace (T j) (γ j) : Submodule 𝕜 E))
      fun γ : n → 𝕜 ↦ (⨅ j, eigenspace (T j) (γ j)).subtypeₗᵢ := by
  intro f g hfg Ef Eg
  obtain ⟨a, ha⟩ := Function.ne_iff.mp hfg
  have H := orthogonalFamily_eigenspaces (hT a) ha
  simp only [Submodule.coe_subtypeₗᵢ, Submodule.coe_subtype, Subtype.forall] at H
  apply H
  · exact (Submodule.mem_iInf <| fun _ ↦ eigenspace (T _) (f _)).mp Ef.2 _
  · exact (Submodule.mem_iInf <| fun _ ↦ eigenspace (T _) (g _)).mp Eg.2 _

variable [FiniteDimensional 𝕜 E]

open IsFinitelySemisimple

/-- If A and B are commuting symmetric operators on a finite-dimensional inner product space
then the eigenspaces of the restriction of B to any eigenspace of A exhaust that eigenspace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JointEigenspace/Variant06221b2edd97a11e89ab7b429b8479673903a0e3098d8ef5a2d7d006edd49ca0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JointEigenspace/Variant06221b2edd97a11e89ab7b429b8479673903a0e3098d8ef5a2d7d006edd49ca0.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b735b53187054fa6b7aa08bd7ec084f379f78dac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
