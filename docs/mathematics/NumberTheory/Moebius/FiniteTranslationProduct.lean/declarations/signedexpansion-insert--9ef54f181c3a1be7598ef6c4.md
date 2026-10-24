# signedExpansion_insert

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
      "line": 58,
      "path": "GRWTSK/NumberTheory/Moebius/FiniteTranslationProduct.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3202986a-6b29-cded-cdca-a0b7d3c14bb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5342f0f-c586-2f8e-2527-c78f98e521b8",
  "kind": "theorem",
  "lexical_name": "signedExpansion_insert",
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
  "slug": "signedexpansion-insert--9ef54f181c3a1be7598ef6c4",
  "source": {
    "blob": "61c4ebd57b68876c8b7831b95d772c05090abbea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 58,
    "path": "GRWTSK/NumberTheory/Moebius/FiniteTranslationProduct.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ef54f181c3a1be7598ef6c4bfc466d1ba93c2503d03e424a2bed7a885e1d521",
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

Occurrence: `result:d5342f0f-c586-2f8e-2527-c78f98e521b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedExpansion_insert {ι : Type*} [DecidableEq ι]
    (r d : ι → ℝ) (P : Finset ι) (p : ι) (hp : p ∉ P)
    (hd : ∀ q ∈ P, 0 ≤ d q) (f : ℝ → ℝ) :
    signedExpansion r d (insert p P) f = note (r p) (d p) (signedExpansion r d P f) := by
  funext u
  unfold signedExpansion note
  rw [Finset.sum_powerset_insert hp]
  have he :
      (∑ U ∈ P.powerset, (∏ q ∈ insert p U, -r q) *
        shift (∑ q ∈ insert p U, d q) f u) =
      -r p * shift (d p) (fun v =>
        ∑ U ∈ P.powerset, (∏ q ∈ U, -r q) * shift (∑ q ∈ U, d q) f v) u := by
    rw [shift_sum, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro U hU
    have hUP : U ⊆ P := Finset.mem_powerset.mp hU
    have hpU : p ∉ U := fun h => hp (hUP h)
    have hsum : 0 ≤ ∑ q ∈ U, d q := Finset.sum_nonneg fun q hq => hd q (hUP hq)
    rw [Finset.prod_insert hpU, Finset.sum_insert hpU]
    rw [shift_smul, shift_comp (d p) _ hsum]
    ring
  rw [he]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/FiniteTranslationProduct.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FiniteTranslationProduct.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61c4ebd57b68876c8b7831b95d772c05090abbea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
