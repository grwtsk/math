# setLike

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4255ddc5dffeb8109231ac3863737e3c802e916bc038522769e81fba853191be",
  "kind": "instance",
  "lexical_name": "setLike",
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
  "slug": "setlike--1a32cfba20fc449d9f48a174",
  "source": {
    "blob": "98c26c3cc43a74caa566c43bf5595ff9ff274e83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 53,
    "path": "GRWTSK/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a32cfba20fc449d9f48a174b8f1d94b3e3fd5564bc463e120ad9332b5187ad9",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4255ddc5dffeb8109231ac3863737e3c802e916bc038522769e81fba853191be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance setLike : SetLike (TwoSidedIdeal R) R where
  coe t := {r | t.ringCon r 0}
  coe_injective'  := by
    rintro ⟨t₁⟩ ⟨t₂⟩ (h : {x | _} = {x | _})
    congr 1
    refine RingCon.ext fun a b ↦ ⟨fun H ↦ ?_, fun H ↦ ?_⟩
    · have H' : a - b ∈ {x | t₁ x 0} := sub_self b ▸ t₁.sub H (t₁.refl b)
      rw [h] at H'
      convert t₂.add H' (t₂.refl b) using 1 <;> abel
    · have H' : a - b ∈ {x | t₂ x 0} := sub_self b ▸ t₂.sub H (t₂.refl b)
      rw [← h] at H'
      convert t₁.add H' (t₁.refl b) using 1 <;> abel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98c26c3cc43a74caa566c43bf5595ff9ff274e83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
