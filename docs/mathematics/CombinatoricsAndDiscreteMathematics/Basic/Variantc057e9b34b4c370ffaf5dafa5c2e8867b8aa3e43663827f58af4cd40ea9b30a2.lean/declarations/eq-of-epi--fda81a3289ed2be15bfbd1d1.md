# eq_σ_of_epi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ba8c987-bd41-f971-12f6-decb858c7101",
  "kind": "theorem",
  "lexical_name": "eq_σ_of_epi",
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
  "slug": "eq-of-epi--fda81a3289ed2be15bfbd1d1",
  "source": {
    "blob": "9695e8ba4db4888fdec809c19c4a3fabfd8273d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 828,
    "line": 818,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantc057e9b34b4c370ffaf5dafa5c2e8867b8aa3e43663827f58af4cd40ea9b30a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fda81a3289ed2be15bfbd1d19321f0fc3a7009366b60c755ead807dac3af0438",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantc057e9b34b4c370ffaf5dafa5c2e8867b8aa3e43663827f58af4cd40ea9b30a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ba8c987-bd41-f971-12f6-decb858c7101`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 818–828.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_σ_of_epi {n : ℕ} (θ : ⦋n + 1⦌ ⟶ ⦋n⦌) [Epi θ] : ∃ i : Fin (n + 1), θ = σ i := by
  obtain ⟨i, θ', h⟩ := eq_σ_comp_of_not_injective θ (by
    rw [← mono_iff_injective]
    grind [→ le_of_mono])
  use i
  have : Epi (σ i ≫ θ') := by
    rw [← h]
    infer_instance
  have := CategoryTheory.epi_of_epi (σ i) θ'
  rw [h, eq_id_of_epi θ', Category.comp_id]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantc057e9b34b4c370ffaf5dafa5c2e8867b8aa3e43663827f58af4cd40ea9b30a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantc057e9b34b4c370ffaf5dafa5c2e8867b8aa3e43663827f58af4cd40ea9b30a2.lean#L818).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9695e8ba4db4888fdec809c19c4a3fabfd8273d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
