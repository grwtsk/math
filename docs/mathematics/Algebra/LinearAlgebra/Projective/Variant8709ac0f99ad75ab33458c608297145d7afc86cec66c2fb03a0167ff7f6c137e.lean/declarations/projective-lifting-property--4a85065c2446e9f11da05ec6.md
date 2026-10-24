# projective_lifting_property

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02c321ad3fb9135cff54a6eea621cce367ce0052",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/8709ac0f99ad75ab33458c608297145d7afc86cec66c2fb03a0167ff7f6c137e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cebef56d-2ca9-f664-4bb5-5b0e53b5f594",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a90d44e2-d790-dd79-cd30-60bc352c5486",
  "kind": "theorem",
  "lexical_name": "projective_lifting_property",
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
  "slug": "projective-lifting-property--4a85065c2446e9f11da05ec6",
  "source": {
    "blob": "02c321ad3fb9135cff54a6eea621cce367ce0052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 91,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variant8709ac0f99ad75ab33458c608297145d7afc86cec66c2fb03a0167ff7f6c137e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a85065c2446e9f11da05ec6283a188810b34598f380f848d229a70ed91259dd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projective/Variant8709ac0f99ad75ab33458c608297145d7afc86cec66c2fb03a0167ff7f6c137e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a90d44e2-d790-dd79-cd30-60bc352c5486`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem projective_lifting_property [h : Projective R P] (f : M →ₗ[R] N) (g : P →ₗ[R] N)
    (hf : Function.Surjective f) : ∃ h : P →ₗ[R] M, f ∘ₗ h = g := by
  /-
    Here's the first step of the proof.
    Recall that `X →₀ R` is Lean's way of talking about the free `R`-module
    on a type `X`. The universal property `Finsupp.linearCombination` says that to a map
    `X → N` from a type to an `R`-module, we get an associated R-module map
    `(X →₀ R) →ₗ N`. Apply this to a (noncomputable) map `P → M` coming from the map
    `P →ₗ N` and a random splitting of the surjection `M →ₗ N`, and we get
    a map `φ : (P →₀ R) →ₗ M`.
    -/
  let φ : (P →₀ R) →ₗ[R] M := Finsupp.linearCombination _ fun p => Function.surjInv hf (g p)
  -- By projectivity we have a map `P →ₗ (P →₀ R)`;
  obtain ⟨s, hs⟩ := h.out
  -- Compose to get `P →ₗ M`. This works.
  use φ.comp s
  ext p
  conv_rhs => rw [← hs p]
  simp [φ, Finsupp.linearCombination_apply, Function.surjInv_eq hf, map_finsuppSum]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projective/Variant8709ac0f99ad75ab33458c608297145d7afc86cec66c2fb03a0167ff7f6c137e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projective/Variant8709ac0f99ad75ab33458c608297145d7afc86cec66c2fb03a0167ff7f6c137e.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02c321ad3fb9135cff54a6eea621cce367ce0052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
