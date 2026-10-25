# ofCardinalUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:027ddbb05fd35ae3f837aca3816cfb4f6cf7c79c1847d773d4239a1896040952",
  "kind": "def",
  "lexical_name": "ofCardinalUnion",
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
  "slug": "ofcardinalunion--b65e7a67517c2a68f808578f",
  "source": {
    "blob": "ce4af0e653de32b0b7b2bfabd3ec2aa3d7e06c01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 222,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantd3678dadf47fa375f9bc6e0b95ea1465d25726b10a4b1913d9ffc9eca1b5af0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b65e7a67517c2a68f808578fbe1b5f0481b1b3fd3235dd05b82fcb9937f9f175",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantd3678dadf47fa375f9bc6e0b95ea1465d25726b10a4b1913d9ffc9eca1b5af0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:027ddbb05fd35ae3f837aca3816cfb4f6cf7c79c1847d773d4239a1896040952`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofCardinalUnion (l : Set (Set α)) (hc : 2 < c)
    (hUnion : ∀ S : Set (Set α), (#S < c) → (∀ s ∈ S, s ∈ l) → ⋃₀ S ∈ l)
    (hmono : ∀ t ∈ l, ∀ s ⊆ t, s ∈ l) : Filter α := by
  refine .ofCardinalInter {s | sᶜ ∈ l} hc (fun S hSc hSp ↦ ?_) fun s t ht hsub ↦ ?_
  · rw [mem_ofPred_eq, compl_sInter]
    apply hUnion (compl '' S) (lt_of_le_of_lt mk_image_le hSc)
    intro s hs
    rw [mem_image] at hs
    rcases hs with ⟨t, ht, rfl⟩
    apply hSp ht
  · rw [mem_ofPred_eq]
    rw [← compl_subset_compl] at hsub
    exact hmono sᶜ ht tᶜ hsub

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantd3678dadf47fa375f9bc6e0b95ea1465d25726b10a4b1913d9ffc9eca1b5af0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantd3678dadf47fa375f9bc6e0b95ea1465d25726b10a4b1913d9ffc9eca1b5af0c.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce4af0e653de32b0b7b2bfabd3ec2aa3d7e06c01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
