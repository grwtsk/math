# I_prop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c13ed8df5a8ad4df3c3e81bdf3da16d0e345fea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 288,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02fd524a680082256027d8c3d5b82c38ff70c34591a7046902b93788ce948b2d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3512007-97ce-f4fd-8f26-9ff1f5e2501a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e1879ff-0df4-f394-8b6c-b9aa83dd1968",
  "kind": "theorem",
  "lexical_name": "I_prop",
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
  "slug": "i-prop--2a9fba81ff3ddd8b34c665d5",
  "source": {
    "blob": "7c13ed8df5a8ad4df3c3e81bdf3da16d0e345fea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 288,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant02fd524a680082256027d8c3d5b82c38ff70c34591a7046902b93788ce948b2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a9fba81ff3ddd8b34c665d5d467532a264fbeb386b5f01570d3d2b7602238c0",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/OfNorm/Variant02fd524a680082256027d8c3d5b82c38ff70c34591a7046902b93788ce948b2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e1879ff-0df4-f394-8b6c-b9aa83dd1968`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem I_prop : innerProp' E (I : 𝕜) := by
  by_cases hI : (I : 𝕜) = 0
  · rw [hI, ← Nat.cast_zero]; exact nat_prop _
  intro x y
  have hI' : (-I : 𝕜) * I = 1 := by rw [← inv_I, inv_mul_cancel hI]
  rw [conj_I, inner_, inner_, mul_left_comm]
  congr 1
  rw [smul_smul, I_mul_I_of_nonzero hI, neg_one_smul]
  rw [mul_sub, mul_add, mul_sub, mul_assoc I (𝓚 ‖I • x - y‖), ← mul_assoc (-I) I, hI', one_mul,
    mul_assoc I (𝓚 ‖I • x + y‖), ← mul_assoc (-I) I, hI', one_mul]
  have h₁ : ‖-x - y‖ = ‖x + y‖ := by rw [← neg_add', norm_neg]
  have h₂ : ‖-x + y‖ = ‖x - y‖ := by rw [← neg_sub, norm_neg, sub_eq_neg_add]
  rw [h₁, h₂]
  simp only [sub_eq_add_neg, mul_assoc]
  rw [← neg_mul_eq_neg_mul, ← neg_mul_eq_neg_mul]
  abel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/OfNorm/Variant02fd524a680082256027d8c3d5b82c38ff70c34591a7046902b93788ce948b2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant02fd524a680082256027d8c3d5b82c38ff70c34591a7046902b93788ce948b2d.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c13ed8df5a8ad4df3c3e81bdf3da16d0e345fea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
