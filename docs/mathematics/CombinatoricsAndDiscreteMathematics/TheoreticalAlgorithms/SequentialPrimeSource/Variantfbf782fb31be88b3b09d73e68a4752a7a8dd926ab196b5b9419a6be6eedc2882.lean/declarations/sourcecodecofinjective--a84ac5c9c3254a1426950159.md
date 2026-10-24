# sourceCodecOfInjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73c3cfda18265783eaf15538cfdfa178cfe84ab4b561ce8b0f24e86b6eb3f487",
  "kind": "def",
  "lexical_name": "sourceCodecOfInjective",
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
  "slug": "sourcecodecofinjective--a84ac5c9c3254a1426950159",
  "source": {
    "blob": "b8dec9c9836a1f0e958d3e5506d3d7ca2ca1ff35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 510,
    "line": 483,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SequentialPrimeSource/Variantfbf782fb31be88b3b09d73e68a4752a7a8dd926ab196b5b9419a6be6eedc2882.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a84ac5c9c3254a1426950159aeefb1bda766fda78fd4541d216fc5425ecba993",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SequentialPrimeSource/Variantfbf782fb31be88b3b09d73e68a4752a7a8dd926ab196b5b9419a6be6eedc2882.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73c3cfda18265783eaf15538cfdfa178cfe84ab4b561ce8b0f24e86b6eb3f487`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 483–510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sourceCodecOfInjective
    {Address : Type}
    (encode : CanonicalSource → BooleanState Address)
    (injective : Function.Injective encode) : SourceCodec Address where
  encode := encode
  decode := decodeSourceState encode
  decode_encode source := by
    classical
    simp only [decodeSourceState]
    split
    · rename_i witness
      congr 1
      apply injective
      exact Classical.choose_spec witness
    · rename_i absent
      exact False.elim (absent ⟨source, rfl⟩)
  encode_decode := by
    classical
    intro state source decoded
    simp only [decodeSourceState] at decoded
    split at decoded
    · rename_i witness
      have chosen : Classical.choose witness = source := Option.some.inj decoded
      rw [← chosen]
      exact Classical.choose_spec witness
    · contradiction

/-- Concrete exact codec using the complete sequential-prime carrier layout. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SequentialPrimeSource/Variantfbf782fb31be88b3b09d73e68a4752a7a8dd926ab196b5b9419a6be6eedc2882.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SequentialPrimeSource/Variantfbf782fb31be88b3b09d73e68a4752a7a8dd926ab196b5b9419a6be6eedc2882.lean#L483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8dec9c9836a1f0e958d3e5506d3d7ca2ca1ff35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
