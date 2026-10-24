# terminal_tail_iff_compensated_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:585f9622-09f3-5d08-ad39-560408072b82",
  "kind": "theorem",
  "lexical_name": "terminal_tail_iff_compensated_tail",
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
  "slug": "terminal-tail-iff-compensated-tail--2c2d9849b68ebcf1d51029cf",
  "source": {
    "blob": "e21e08abe508e822019fc97584ee0cfb9673ff6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 182,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceStorageDescent/Variant4c8ce86d2a35287ecc00cca7a016e9f6dc41c605501ceebffecaa4400fa38180.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c2d9849b68ebcf1d51029cf0319f602e602b17965f9b1f35e5b81a285e6e549",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceStorageDescent/Variant4c8ce86d2a35287ecc00cca7a016e9f6dc41c605501ceebffecaa4400fa38180.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:585f9622-09f3-5d08-ad39-560408072b82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem terminal_tail_iff_compensated_tail :
    (∃ R : ℝ, 1 ≤ R ∧ ∃ B : ℝ, ∀ A : ℝ, R ≤ A → terminalCost A ≤ B) ↔
      CompensatedTailUpperBound := by
  constructor
  · rintro ⟨R, hR, B, hB⟩
    exact ⟨R, hR, B + 2 + 10 / R, fun A hRA =>
      compensated_le_of_terminalCost R A B hR hRA (hB A hRA)⟩
  · rintro ⟨R, hR, B, hB⟩
    exact ⟨R, hR, B + 10 / R, fun A hRA =>
      terminalCost_le_of_compensated R A B hR hRA (hB A hRA)⟩

end
end FormalResearch.PositiveAtlas.SourceStorageDescent
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceStorageDescent/Variant4c8ce86d2a35287ecc00cca7a016e9f6dc41c605501ceebffecaa4400fa38180.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceStorageDescent/Variant4c8ce86d2a35287ecc00cca7a016e9f6dc41c605501ceebffecaa4400fa38180.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e21e08abe508e822019fc97584ee0cfb9673ff6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
