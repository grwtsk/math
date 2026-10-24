# card_biUnion_le_card_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5b25836-ecb8-5e80-fa86-a5bbb80bdeaa",
  "kind": "theorem",
  "lexical_name": "card_biUnion_le_card_mul",
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
  "slug": "card-biunion-le-card-mul--2e138085be371be399d2f1e7",
  "source": {
    "blob": "80d03ba249f53e8ba5a7d8a0c38dcf485c818cd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 235,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantcb5702a5d705207ed79553cbc3343e146d5cfd089462b767f68e3c6360b5f393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e138085be371be399d2f1e73552978356bdbdeefc3e86584fd89fe10ba6d83b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Order/Variantcb5702a5d705207ed79553cbc3343e146d5cfd089462b767f68e3c6360b5f393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5b25836-ecb8-5e80-fa86-a5bbb80bdeaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_biUnion_le_card_mul [DecidableEq β] (s : Finset ι) (f : ι → Finset β) (n : ℕ)
    (h : ∀ a ∈ s, (f a).card ≤ n) : (s.biUnion f).card ≤ s.card * n :=
  card_biUnion_le.trans <| sum_le_card_nsmul _ _ _ h
#align finset.card_bUnion_le_card_mul Finset.card_biUnion_le_card_mul

variable {ι' : Type*} [DecidableEq ι']

-- Porting note: Mathport warning: expanding binder collection (y «expr ∉ » t)
@[to_additive sum_fiberwise_le_sum_of_sum_fiber_nonneg]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variantcb5702a5d705207ed79553cbc3343e146d5cfd089462b767f68e3c6360b5f393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantcb5702a5d705207ed79553cbc3343e146d5cfd089462b767f68e3c6360b5f393.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80d03ba249f53e8ba5a7d8a0c38dcf485c818cd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
