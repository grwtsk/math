# not_isLocalRing_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14eefb71-d285-822f-389a-c3d15eabca8e",
  "kind": "theorem",
  "lexical_name": "not_isLocalRing_tfae",
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
  "slug": "not-islocalring-tfae--f097109fa34838427a386dd6",
  "source": {
    "blob": "3daa23dca90158ca98d892c0d1fbeff760e90404",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 78,
    "path": "GRWTSK/Algebra/NonLocalRing/Variantfaf9bc3a46a4e56caeae440104e3edf33e65a06176da6e82fd3fa1932882ccdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f097109fa34838427a386dd676c91ac28c53f4b0aa82ac8fd353e62aef585c10",
  "verification": {
    "reference": "docs/verification/Algebra/NonLocalRing/Variantfaf9bc3a46a4e56caeae440104e3edf33e65a06176da6e82fd3fa1932882ccdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14eefb71-d285-822f-389a-c3d15eabca8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_isLocalRing_tfae {R : Type*} [CommSemiring R] [Nontrivial R] :
    List.TFAE [
      ¬IsLocalRing R,
      Nontrivial (MaximalSpectrum R),
      ∃ m₁ m₂ : Ideal R, m₁.IsMaximal ∧ m₂.IsMaximal ∧ m₁ ≠ m₂] := by
  tfae_have 1 → 2
  | h => not_subsingleton_iff_nontrivial.mp fun _ ↦ h of_singleton_maximalSpectrum
  tfae_have 2 → 3
  | ⟨⟨m₁, hm₁⟩, ⟨m₂, hm₂⟩, h⟩ => ⟨m₁, m₂, ⟨hm₁, hm₂, fun _ ↦ h (by congr)⟩⟩
  tfae_have 3 → 1
  | ⟨m₁, m₂, ⟨hm₁, hm₂, h⟩⟩ => fun _ ↦ h <| (eq_maximalIdeal hm₁).trans (eq_maximalIdeal hm₂).symm
  tfae_finish

/-- There exists a surjective ring homomorphism from a non-local commutative ring onto a product
of two fields. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NonLocalRing/Variantfaf9bc3a46a4e56caeae440104e3edf33e65a06176da6e82fd3fa1932882ccdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NonLocalRing/Variantfaf9bc3a46a4e56caeae440104e3edf33e65a06176da6e82fd3fa1932882ccdd.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3daa23dca90158ca98d892c0d1fbeff760e90404` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
