# _root_.Ideal.annihilator_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f52f5830bcea86296bc04a0f23a4b115fdf4b554",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5c3fac697f9684c64eafbfa0753899918ca11a369085e1d51e6a23b5ff0dcb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc2628e4-b76b-f171-641a-558690b62b10",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:682d616a-7e93-093a-97b0-7862b14cdffd",
  "kind": "theorem",
  "lexical_name": "_root_.Ideal.annihilator_quotient",
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
  "slug": "root-ideal-annihilator-quotient--17d5863945097ca6e56f8c3d",
  "source": {
    "blob": "f52f5830bcea86296bc04a0f23a4b115fdf4b554",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 173,
    "path": "GRWTSK/Algebra/Colon/Variantb5c3fac697f9684c64eafbfa0753899918ca11a369085e1d51e6a23b5ff0dcb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17d5863945097ca6e56f8c3deac1c407f9b4c2edd596534675843f24ed88b9e6",
  "verification": {
    "reference": "docs/verification/Algebra/Colon/Variantb5c3fac697f9684c64eafbfa0753899918ca11a369085e1d51e6a23b5ff0dcb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:682d616a-7e93-093a-97b0-7862b14cdffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Ideal.annihilator_quotient {I : Ideal R} [I.IsTwoSided] :
    Module.annihilator R (R ⧸ I) = I := by
  rw [Submodule.annihilator_quotient, colon_univ]

end Ring

end Submodule
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Colon/Variantb5c3fac697f9684c64eafbfa0753899918ca11a369085e1d51e6a23b5ff0dcb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Colon/Variantb5c3fac697f9684c64eafbfa0753899918ca11a369085e1d51e6a23b5ff0dcb8.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f52f5830bcea86296bc04a0f23a4b115fdf4b554` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
