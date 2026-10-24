# sup'_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9513881c-74e2-ab69-59f0-71698b2c600f",
  "kind": "theorem",
  "lexical_name": "sup'_mono",
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
  "slug": "sup-mono--505b644ca0dd6c8c45df6764",
  "source": {
    "blob": "93f9958671bdcb2771f0f56ac65c41b709c44654",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 679,
    "line": 675,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variant1f7a2dc2ef15fe45e2cc60459575da03cb6c516661d07747cf55a52e6cd49a1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:505b644ca0dd6c8c45df6764193f4f6fe0d4ef6a9c9365675d1926dd0be6a224",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Fold/Variant1f7a2dc2ef15fe45e2cc60459575da03cb6c516661d07747cf55a52e6cd49a1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9513881c-74e2-ab69-59f0-71698b2c600f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 675–679.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup'_mono {s₁ s₂ : Finset β} (h : s₁ ⊆ s₂) (h₁ : s₁.Nonempty) :
    s₁.sup' h₁ f ≤ s₂.sup' (h₁.mono h) f :=
  Finset.sup'_le h₁ _ (fun _ hb => le_sup' _ (h hb))

@[to_dual (attr := gcongr)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Fold/Variant1f7a2dc2ef15fe45e2cc60459575da03cb6c516661d07747cf55a52e6cd49a1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variant1f7a2dc2ef15fe45e2cc60459575da03cb6c516661d07747cf55a52e6cd49a1a.lean#L675).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93f9958671bdcb2771f0f56ac65c41b709c44654` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
