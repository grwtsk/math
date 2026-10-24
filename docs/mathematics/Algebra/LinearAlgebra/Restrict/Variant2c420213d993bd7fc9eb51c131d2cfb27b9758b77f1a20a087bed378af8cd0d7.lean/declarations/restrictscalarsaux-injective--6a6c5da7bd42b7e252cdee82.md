# restrictScalarsAux_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0da8c1d5-0d89-7d24-ae47-86e711bce398",
  "kind": "lemma",
  "lexical_name": "restrictScalarsAux_injective",
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
  "slug": "restrictscalarsaux-injective--6a6c5da7bd42b7e252cdee82",
  "source": {
    "blob": "1080f3a5309f94a202bfe038ff5e84358e8e61bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 106,
    "path": "GRWTSK/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a6c5da7bd42b7e252cdee8250a5f0f669b9c55672797af7b1067fec0f09a75a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0da8c1d5-0d89-7d24-ae47-86e711bce398`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma restrictScalarsAux_injective
    (hi : Injective i)
    (hN : span R (LinearMap.range j : Set N) = ⊤)
    (hp : ∀ m n, p (i m) (j n) ∈ (algebraMap S R).range) :
    Injective (p.restrictScalarsAux i j hp) := by
  let f := LinearMap.restrictScalarsRange₂ i j (Algebra.linearMap S R)
      (FaithfulSMul.algebraMap_injective S R) p.toLinearMap hp
  rw [← LinearMap.ker_eq_bot]
  refine (Submodule.eq_bot_iff _).mpr fun x (hx : f x = 0) ↦ ?_
  replace hx (n : N) : p (i x) n = 0 := by
    have hn : n ∈ span R (LinearMap.range j : Set N) := hN ▸ Submodule.mem_top
    induction hn using Submodule.span_induction with
    | mem z hz =>
      obtain ⟨n', rfl⟩ := hz
      simpa [f] using LinearMap.congr_fun hx n'
    | zero => simp
    | add => rw [← p.toLinearMap_apply, map_add]; aesop
    | smul => rw [← p.toLinearMap_apply, map_smul]; aesop
  rw [← i.map_eq_zero_iff hi, ← p.toLinearMap.map_eq_zero_iff p.bijective_left.injective]
  ext n
  simpa using hx n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1080f3a5309f94a202bfe038ff5e84358e8e61bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
