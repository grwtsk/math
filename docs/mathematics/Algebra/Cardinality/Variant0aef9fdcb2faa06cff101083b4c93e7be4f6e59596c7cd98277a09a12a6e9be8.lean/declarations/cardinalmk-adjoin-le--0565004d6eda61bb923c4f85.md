# cardinalMk_adjoin_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b50d1c8-5c96-34bb-da52-88a16c0170a1",
  "kind": "theorem",
  "lexical_name": "cardinalMk_adjoin_le",
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
  "slug": "cardinalmk-adjoin-le--0565004d6eda61bb923c4f85",
  "source": {
    "blob": "9c860903b457fad08e2f26277248e65f6bb25f8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 82,
    "path": "GRWTSK/Algebra/Cardinality/Variant0aef9fdcb2faa06cff101083b4c93e7be4f6e59596c7cd98277a09a12a6e9be8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0565004d6eda61bb923c4f8519a732c10857863229f67beabe09de3713ab7eca",
  "verification": {
    "reference": "docs/verification/Algebra/Cardinality/Variant0aef9fdcb2faa06cff101083b4c93e7be4f6e59596c7cd98277a09a12a6e9be8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b50d1c8-5c96-34bb-da52-88a16c0170a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardinalMk_adjoin_le {A : Type u} [Semiring A] [Algebra R A] (s : Set A) :
    #(adjoin R s) ≤ #R ⊔ #s ⊔ ℵ₀ := by
  simpa using lift_cardinalMk_adjoin_le R s

end Algebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Cardinality/Variant0aef9fdcb2faa06cff101083b4c93e7be4f6e59596c7cd98277a09a12a6e9be8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Cardinality/Variant0aef9fdcb2faa06cff101083b4c93e7be4f6e59596c7cd98277a09a12a6e9be8.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c860903b457fad08e2f26277248e65f6bb25f8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
