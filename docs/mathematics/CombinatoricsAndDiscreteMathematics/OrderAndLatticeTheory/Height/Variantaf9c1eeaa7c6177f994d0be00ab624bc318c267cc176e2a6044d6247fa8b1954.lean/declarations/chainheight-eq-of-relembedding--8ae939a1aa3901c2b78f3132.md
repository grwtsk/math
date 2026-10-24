# chainHeight_eq_of_relEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df724a43-2a47-d47d-4ea4-60009a88545a",
  "kind": "theorem",
  "lexical_name": "chainHeight_eq_of_relEmbedding",
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
  "slug": "chainheight-eq-of-relembedding--8ae939a1aa3901c2b78f3132",
  "source": {
    "blob": "599ff39bf38ed32037a4382b48286a43bba6f520",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 154,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ae939a1aa3901c2b78f3132ad5d05a2139f02c9e685d6ed00da014181b1796c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df724a43-2a47-d47d-4ea4-60009a88545a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chainHeight_eq_of_relEmbedding (e : r ↪r r') :
    (e '' s).chainHeight r' = s.chainHeight r := by
  refine eq_of_forall_natCast_le_iff fun n ↦ ⟨fun hn ↦ ?_, fun hn ↦ ?_⟩
  · obtain ⟨a, ha₁, ha₂, ha₃⟩ := exists_isChain_of_le_chainHeight n hn
    rw [← ha₂, ← Set.encard_preimage_of_injective_subset_range e.injective (by grind)]
    exact encard_le_chainHeight_of_isChain _ _ (preimage_subset ha₁ e.injective.injOn) <|
      ha₃.preimage_relEmbedding e
  · obtain ⟨a, ha₁, ha₂, ha₃⟩ := exists_isChain_of_le_chainHeight n hn
    rw [← ha₂, ← e.injective.encard_image]
    exact encard_le_chainHeight_of_isChain _ _ (by grind) <| ha₃.image e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `599ff39bf38ed32037a4382b48286a43bba6f520` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
