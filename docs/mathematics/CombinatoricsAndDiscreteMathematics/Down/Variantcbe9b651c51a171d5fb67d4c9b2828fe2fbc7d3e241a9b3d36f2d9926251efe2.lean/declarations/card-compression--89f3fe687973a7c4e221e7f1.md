# card_compression

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:664ba1a4-cbfa-bc63-dd90-f13ed32c120b",
  "kind": "theorem",
  "lexical_name": "card_compression",
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
  "slug": "card-compression--89f3fe687973a7c4e221e7f1",
  "source": {
    "blob": "191e809ecf34fdd8ec621abf406a64d1d041d4f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 268,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89f3fe687973a7c4e221e7f1f6ce5cd0942863060adc5c3d16b9abb9bf6f0fec",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:664ba1a4-cbfa-bc63-dd90-f13ed32c120b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_compression (a : α) (𝒜 : Finset (Finset α)) : #(𝓓 a 𝒜) = #𝒜 := by
  rw [compression, card_disjUnion, filter_image,
    card_image_of_injOn ((erase_injOn' _).mono fun s hs => _), ← card_union_of_disjoint]
  · conv_rhs => rw [← filter_union_filter_neg_eq (fun s => (erase s a ∈ 𝒜)) 𝒜]
  · exact disjoint_filter_filter_neg 𝒜 𝒜 (fun s => (erase s a ∈ 𝒜))
  intro s hs
  rw [mem_coe, mem_filter] at hs
  exact not_imp_comm.1 erase_eq_of_notMem (ne_of_mem_of_not_mem hs.1 hs.2).symm

end Down
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `191e809ecf34fdd8ec621abf406a64d1d041d4f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
