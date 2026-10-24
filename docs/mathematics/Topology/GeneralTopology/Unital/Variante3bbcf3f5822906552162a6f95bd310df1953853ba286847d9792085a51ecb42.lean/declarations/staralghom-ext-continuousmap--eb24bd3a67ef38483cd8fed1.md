# StarAlgHom.ext_continuousMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "539c3fa3289e7ac31b9c20ec8c7aeb536c58dfdf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e3bbcf3f5822906552162a6f95bd310df1953853ba286847d9792085a51ecb42.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:850412cc-a984-50f7-d0a3-795417039d76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69f8b7cf-a753-37df-8942-8c3c8a6d66d7",
  "kind": "lemma",
  "lexical_name": "StarAlgHom.ext_continuousMap",
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
  "slug": "staralghom-ext-continuousmap--eb24bd3a67ef38483cd8fed1",
  "source": {
    "blob": "539c3fa3289e7ac31b9c20ec8c7aeb536c58dfdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 214,
    "path": "GRWTSK/Topology/GeneralTopology/Unital/Variante3bbcf3f5822906552162a6f95bd310df1953853ba286847d9792085a51ecb42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb24bd3a67ef38483cd8fed15a091fc4b3b1b1901755484a654bc5e4f0caa866",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unital/Variante3bbcf3f5822906552162a6f95bd310df1953853ba286847d9792085a51ecb42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69f8b7cf-a753-37df-8942-8c3c8a6d66d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma StarAlgHom.ext_continuousMap [UniqueHom R A]
    (a : A) [CompactSpace (spectrum R a)] (φ ψ : C(spectrum R a, R) →⋆ₐ[R] A)
    (hφ : Continuous φ) (hψ : Continuous ψ)
    (h : φ (.restrict (spectrum R a) <| .id R) = ψ (.restrict (spectrum R a) <| .id R)) :
    φ = ψ :=
  UniqueHom.eq_of_continuous_of_map_id (spectrum R a) φ ψ hφ hψ h

section cfcHom

variable {a : A} (ha : p a)

-- Note: since `spectrum R a` is closed, we may always extend `f : C(spectrum R a, R)` to a function
-- of type `C(R, R)` by the Tietze extension theorem (assuming `R` is either `ℝ`, `ℂ` or `ℝ≥0`).

/-- The star algebra homomorphism underlying an instance of the continuous functional calculus;
a version for continuous functions on the spectrum.

In this case, the user must supply the fact that `a` satisfies the predicate `p`, for otherwise it
may be the case that no star algebra homomorphism exists. For instance if `R := ℝ` and `a` is an
element whose spectrum (in `ℂ`) is disjoint from `ℝ`, then `spectrum ℝ a = ∅` and so there can be
no star algebra homomorphism between these spaces.

While `ContinuousFunctionalCalculus` is stated in terms of these homomorphisms, in practice the
user should instead prefer `cfc` over `cfcHom`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unital/Variante3bbcf3f5822906552162a6f95bd310df1953853ba286847d9792085a51ecb42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unital/Variante3bbcf3f5822906552162a6f95bd310df1953853ba286847d9792085a51ecb42.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `539c3fa3289e7ac31b9c20ec8c7aeb536c58dfdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
