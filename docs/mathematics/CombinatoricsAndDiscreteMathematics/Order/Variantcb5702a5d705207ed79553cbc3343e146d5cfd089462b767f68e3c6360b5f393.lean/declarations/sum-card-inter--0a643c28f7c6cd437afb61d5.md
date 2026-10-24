# sum_card_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:caa93d2f-c2ee-5458-6e7f-76d1dd86ec07",
  "kind": "theorem",
  "lexical_name": "sum_card_inter",
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
  "slug": "sum-card-inter--0a643c28f7c6cd437afb61d5",
  "source": {
    "blob": "80d03ba249f53e8ba5a7d8a0c38dcf485c818cd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 362,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantcb5702a5d705207ed79553cbc3343e146d5cfd089462b767f68e3c6360b5f393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a643c28f7c6cd437afb61d5f0ff9db3ea20d6243e565085156cadb57dfc1c93",
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

Occurrence: `result:caa93d2f-c2ee-5458-6e7f-76d1dd86ec07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_card_inter (h : ∀ a ∈ s, (B.filter <| (· ∈ ·) a).card = n) :
    (∑ t in B, (s ∩ t).card) = s.card * n :=
  (sum_card_inter_le fun a ha ↦ (h a ha).le).antisymm (le_sum_card_inter fun a ha ↦ (h a ha).ge)
#align finset.sum_card_inter Finset.sum_card_inter

/-- If every element belongs to exactly `n` Finsets, then the sum of their sizes is `n` times how
many they are. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variantcb5702a5d705207ed79553cbc3343e146d5cfd089462b767f68e3c6360b5f393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantcb5702a5d705207ed79553cbc3343e146d5cfd089462b767f68e3c6360b5f393.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80d03ba249f53e8ba5a7d8a0c38dcf485c818cd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
