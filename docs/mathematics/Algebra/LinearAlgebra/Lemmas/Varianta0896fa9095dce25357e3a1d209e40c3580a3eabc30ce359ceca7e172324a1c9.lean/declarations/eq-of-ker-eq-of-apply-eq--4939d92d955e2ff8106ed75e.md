# eq_of_ker_eq_of_apply_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:535b6782-fac6-9174-1b43-b74762a7eddf",
  "kind": "lemma",
  "lexical_name": "eq_of_ker_eq_of_apply_eq",
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
  "slug": "eq-of-ker-eq-of-apply-eq--4939d92d955e2ff8106ed75e",
  "source": {
    "blob": "bb96529e984f8e60a35adfc67fd1cc2845b00ee8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 774,
    "line": 750,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Varianta0896fa9095dce25357e3a1d209e40c3580a3eabc30ce359ceca7e172324a1c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4939d92d955e2ff8106ed75e9d76abe199e34e5b49f3764f3a4cb8d6e8b68686",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Varianta0896fa9095dce25357e3a1d209e40c3580a3eabc30ce359ceca7e172324a1c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:535b6782-fac6-9174-1b43-b74762a7eddf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 750–774.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_of_ker_eq_of_apply_eq [FiniteDimensional K V₁] {f g : Module.Dual K V₁} (x : V₁)
    (h : LinearMap.ker f = LinearMap.ker g) (h' : f x = g x) (hx : f x ≠ 0) :
    f = g := by
  let p := K ∙ x
  have hp : p ≠ ⊥ := by aesop
  have hpf : Disjoint (LinearMap.ker f) p := by
    rw [disjoint_iff, Submodule.eq_bot_iff]
    rintro y ⟨hfy : f y = 0, hpy : y ∈ p⟩
    obtain ⟨t, rfl⟩ := Submodule.mem_span_singleton.mp hpy
    have ht : t = 0 := by simpa [hx] using hfy
    simp [ht]
  have hf : f ≠ 0 := by aesop
  ext v
  obtain ⟨y, hy, z, hz, rfl⟩ : ∃ᵉ (y ∈ LinearMap.ker f) (z ∈ p), y + z = v := by
    have : v ∈ (⊤ : Submodule K V₁) := Submodule.mem_top
    rwa [← (isCompl_ker_of_disjoint_of_ne_bot hf hpf hp).sup_eq_top, Submodule.mem_sup] at this
  have hy' : g y = 0 := by rwa [← LinearMap.mem_ker, ← h]
  replace hy : f y = 0 := by rwa [LinearMap.mem_ker] at hy
  obtain ⟨t, rfl⟩ := Submodule.mem_span_singleton.mp hz
  simp [h', hy, hy']

end Module.Dual

namespace LinearMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Varianta0896fa9095dce25357e3a1d209e40c3580a3eabc30ce359ceca7e172324a1c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Varianta0896fa9095dce25357e3a1d209e40c3580a3eabc30ce359ceca7e172324a1c9.lean#L750).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb96529e984f8e60a35adfc67fd1cc2845b00ee8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
