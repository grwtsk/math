# finrank_cotangentSpace_le_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42a8d8e5698d6b6f5fd223d90318594ea9fcf570",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 284,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ada88d6-2cec-b9a0-9aec-5b10de867452",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21508e31-d3e4-0cc0-b7b1-9b3e2a4931d2",
  "kind": "theorem",
  "lexical_name": "finrank_cotangentSpace_le_one_iff",
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
  "slug": "finrank-cotangentspace-le-one-iff--bdeab596de59d99e7b9460f7",
  "source": {
    "blob": "42a8d8e5698d6b6f5fd223d90318594ea9fcf570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 284,
    "path": "GRWTSK/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdeab596de59d99e7b9460f73fdce5505715327bab4e961ac00b709779754cb5",
  "verification": {
    "reference": "docs/verification/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21508e31-d3e4-0cc0-b7b1-9b3e2a4931d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_cotangentSpace_le_one_iff [IsNoetherianRing R] :
    finrank (ResidueField R) (CotangentSpace R) ≤ 1 ↔ (maximalIdeal R).IsPrincipal := by
  rw [Module.finrank_le_one_iff_top_isPrincipal, isPrincipal_iff,
    (maximalIdeal R).toCotangent_surjective.exists, isPrincipal_iff]
  simp_rw [← Set.image_singleton, eq_comm (a := ⊤), CotangentSpace.span_image_eq_top_iff,
    ← (map_injective_of_injective (injective_subtype _)).eq_iff, map_span, Set.image_singleton,
    Submodule.map_top, range_subtype, eq_comm (a := maximalIdeal R)]
  exact ⟨fun ⟨x, h⟩ ↦ ⟨_, h⟩, fun ⟨x, h⟩ ↦ ⟨⟨x, h ▸ subset_span (Set.mem_singleton x)⟩, h⟩⟩

end IsLocalRing

@[deprecated (since := "2024-11-11")]
alias LocalRing.CotangentSpace := IsLocalRing.CotangentSpace

@[deprecated (since := "2024-11-11")]
alias LocalRing.subsingleton_cotangentSpace_iff := IsLocalRing.subsingleton_cotangentSpace_iff

@[deprecated (since := "2024-11-11")]
alias LocalRing.map_eq_top_iff := IsLocalRing.CotangentSpace.map_eq_top_iff

@[deprecated (since := "2024-11-11")]
alias LocalRing.span_image_eq_top_iff := IsLocalRing.CotangentSpace.span_image_eq_top_iff

@[deprecated (since := "2024-11-11")]
alias LocalRing.finrank_cotangentSpace_eq_zero_iff := IsLocalRing.finrank_cotangentSpace_eq_zero_iff

@[deprecated (since := "2024-11-11")]
alias LocalRing.finrank_cotangentSpace_eq_zero := IsLocalRing.finrank_cotangentSpace_eq_zero

@[deprecated (since := "2024-11-11")]
alias LocalRing.finrank_cotangentSpace_le_one_iff := IsLocalRing.finrank_cotangentSpace_le_one_iff
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42a8d8e5698d6b6f5fd223d90318594ea9fcf570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
