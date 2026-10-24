# restrict_cascade

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61c4ebd57b68876c8b7831b95d772c05090abbea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 346,
      "path": "GRWTSK/NumberTheory/Moebius/FiniteTranslationProduct.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f97434f4-5c64-52f1-7ce5-b6cb951cdf9e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc9cbd09-b286-d271-4ddf-1e4fd2ded224",
  "kind": "theorem",
  "lexical_name": "restrict_cascade",
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
  "slug": "restrict-cascade--829cf35f1a7ea8858c3fbda1",
  "source": {
    "blob": "61c4ebd57b68876c8b7831b95d772c05090abbea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 346,
    "path": "GRWTSK/NumberTheory/Moebius/FiniteTranslationProduct.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:829cf35f1a7ea8858c3fbda10443b07e1582f8b423e9f4574996610bd5e8cda8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/FiniteTranslationProduct.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc9cbd09-b286-d271-4ddf-1e4fd2ded224`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrict_cascade (T : ℝ) {ι : Type*} (r d : ι → ℝ)
    (ps : List ι) (hd : ∀ p ∈ ps, 0 ≤ d p) (f : ℝ → ℝ) :
    restrict T (cascade r d ps (restrict T f)) = restrict T (cascade r d ps f) := by
  induction ps with
  | nil =>
      exact restrict_idempotent T f
  | cons p ps ih =>
      have hp : 0 ≤ d p := hd p (by simp)
      have hd' : ∀ q ∈ ps, 0 ≤ d q := fun q h => hd q (by simp [h])
      simp only [cascade, List.foldr_cons]
      rw [← cascade, ← cascade]
      rw [← restrict_causal_note T (d p) (r p) hp,
        ih hd', restrict_causal_note T (d p) (r p) hp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/FiniteTranslationProduct.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FiniteTranslationProduct.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61c4ebd57b68876c8b7831b95d772c05090abbea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
