# polyCharpoly_coeff_eq_zero_iff_of_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d473aab803cf85e3bedcbb37884be3bb3f192cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 421,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:32b6cbce-0dc2-f9d7-5a23-e79237bb5ff3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5829d93-3e23-7228-91ab-1c126a87be57",
  "kind": "lemma",
  "lexical_name": "polyCharpoly_coeff_eq_zero_iff_of_basis",
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
  "slug": "polycharpoly-coeff-eq-zero-iff-of-basis--f601471e188613ad51176f6e",
  "source": {
    "blob": "0d473aab803cf85e3bedcbb37884be3bb3f192cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 421,
    "path": "GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f601471e188613ad51176f6ebc131d00f9b43c1f6ea21eb64d420ffe306ebf25",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5829d93-3e23-7228-91ab-1c126a87be57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma polyCharpoly_coeff_eq_zero_iff_of_basis (b : Basis ι R L) (b' : Basis ι' R L) (k : ℕ) :
    (polyCharpoly φ b).coeff k = 0 ↔ (polyCharpoly φ b').coeff k = 0 := by
  constructor <;> apply polyCharpoly_coeff_eq_zero_of_basis

section aux

/-- (Implementation detail, see `LinearMap.nilRank`.)

Let `L` and `M` be finite free modules over `R`,
and let `φ : L →ₗ[R] Module.End R M` be a linear family of endomorphisms.
Then `LinearMap.nilRankAux φ b` is the smallest index
at which `LinearMap.polyCharpoly φ b` has a non-zero coefficient.

This number does not depend on the choice of `b`, see `nilRankAux_basis_indep`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d473aab803cf85e3bedcbb37884be3bb3f192cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
