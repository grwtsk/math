# exists_affine_le_of_lt_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0658a7e822f25a8d56985d6617e531fa76d573ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d498e389-2d27-af42-8c2d-2d4b469ce40e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01c99122-f28e-e99a-e9c4-ba0e6ebfcc2f",
  "kind": "lemma",
  "lexical_name": "exists_affine_le_of_lt_real",
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
  "slug": "exists-affine-le-of-lt-real--ae3508c40ed12d597e698735",
  "source": {
    "blob": "0658a7e822f25a8d56985d6617e531fa76d573ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 90,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae3508c40ed12d597e698735ef682e95fc059e4562be6f67e7201644a8abff78",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01c99122-f28e-e99a-e9c4-ba0e6ebfcc2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_affine_le_of_lt_real {s : Set ℝ} {f : ℝ → ℝ} {x : ℝ} {a : ℝ} (hx : x ∈ s)
    (hax : a < f x) (hsc : IsClosed s) (hfc : LowerSemicontinuousOn f s) (hf : ConvexOn ℝ s f) :
    ∃ (c c' : ℝ), (∀ y ∈ s, c * y + c' ≤ f y) ∧ c * x + c' = a := by
  obtain ⟨l, c', hlc'_le, hlc'_eq⟩ := exists_affine_le_of_lt (𝕜 := ℝ) hx hax hsc hfc hf
  have h1 y : l 1 * y = l y := by rw [mul_comm, ← smul_eq_mul, ← map_smul, smul_eq_mul, mul_one]
  exact ⟨l 1, c', fun y hy ↦ by simpa [h1] using hlc'_le ⟨y, hy⟩, by simpa [h1] using hlc'_eq⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0658a7e822f25a8d56985d6617e531fa76d573ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
