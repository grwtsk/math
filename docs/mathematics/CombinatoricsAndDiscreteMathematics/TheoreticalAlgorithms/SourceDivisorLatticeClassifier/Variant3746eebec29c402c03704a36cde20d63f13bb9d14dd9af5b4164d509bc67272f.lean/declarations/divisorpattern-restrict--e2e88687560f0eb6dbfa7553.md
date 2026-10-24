# divisorPattern_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25e6e6d4-69f1-1d7e-20f9-70b11e828a7e",
  "kind": "theorem",
  "lexical_name": "divisorPattern_restrict",
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
  "slug": "divisorpattern-restrict--e2e88687560f0eb6dbfa7553",
  "source": {
    "blob": "3265625ef2afc47937771de499058be9c262728f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 34,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant3746eebec29c402c03704a36cde20d63f13bb9d14dd9af5b4164d509bc67272f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2e88687560f0eb6dbfa7553aa8011ca64018b7c611e7315d9f488e27ad8f963",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant3746eebec29c402c03704a36cde20d63f13bb9d14dd9af5b4164d509bc67272f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25e6e6d4-69f1-1d7e-20f9-70b11e828a7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisorPattern_restrict {S T : Finset ℕ} (hST : S ⊆ T) (n : ℕ) :
    restrictPattern S (divisorPattern T n) = divisorPattern S n := by
  classical
  ext d
  simp only [restrictPattern, divisorPattern, Finset.mem_inter, Finset.mem_filter]
  constructor
  · rintro ⟨⟨_, hd⟩, hdS⟩
    exact ⟨hdS, hd⟩
  · rintro ⟨hdS, hd⟩
    exact ⟨⟨hST hdS, hd⟩, hdS⟩

/-- Equality of disclosed patterns on the retained inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant3746eebec29c402c03704a36cde20d63f13bb9d14dd9af5b4164d509bc67272f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant3746eebec29c402c03704a36cde20d63f13bb9d14dd9af5b4164d509bc67272f.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3265625ef2afc47937771de499058be9c262728f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
