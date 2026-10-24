# HasSeparableResidueFieldsAt.tower_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2fc087f2f265f2ec661870f58923145c916c96db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f9ee4f0a526a26b93fc6916acc66a8170d5537df1d11a2418db30d6e2f8551e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad5d8d3f-2b0c-bd45-1755-52a75b64e4d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca8986a7-0600-3883-4880-0219ed476b11",
  "kind": "theorem",
  "lexical_name": "HasSeparableResidueFieldsAt.tower_bot",
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
  "slug": "hasseparableresiduefieldsat-tower-bot--11bc2db976b4ad06ee93f150",
  "source": {
    "blob": "2fc087f2f265f2ec661870f58923145c916c96db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 107,
    "path": "GRWTSK/Algebra/Separable/Variant0f9ee4f0a526a26b93fc6916acc66a8170d5537df1d11a2418db30d6e2f8551e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11bc2db976b4ad06ee93f1500598750f18989656cba8f3ca73ac4b4be962d7e3",
  "verification": {
    "reference": "docs/verification/Algebra/Separable/Variant0f9ee4f0a526a26b93fc6916acc66a8170d5537df1d11a2418db30d6e2f8551e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca8986a7-0600-3883-4880-0219ed476b11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasSeparableResidueFieldsAt.tower_bot [Algebra.IsIntegral B C] [FaithfulSMul B C]
    [HasSeparableResidueFieldsAt A C p] : HasSeparableResidueFieldsAt A B p where
  isSeparable' q _ _ := by
    obtain ⟨r, _, _⟩ : Nonempty (q.primesOver C) := nonempty_primesOver q
    have : r.LiesOver p := Ideal.LiesOver.trans r q p
    let := Localization.AtPrime.algebraOfLiesOver p q
    let := Localization.AtPrime.algebraOfLiesOver p r
    let := Localization.AtPrime.algebraOfLiesOver q r
    exact isSeparable_tower_bot_of_isSeparable p.ResidueField q.ResidueField r.ResidueField

variable (q : Ideal B) [q.IsPrime] [q.LiesOver p]

/-- For a tower of rings `C/B/A` and a prime `q` of `B` lying over `p`, separability of the
residue field extensions of `C/A` above `p` gives separability of those of `C/B` above `q`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Separable/Variant0f9ee4f0a526a26b93fc6916acc66a8170d5537df1d11a2418db30d6e2f8551e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Separable/Variant0f9ee4f0a526a26b93fc6916acc66a8170d5537df1d11a2418db30d6e2f8551e.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fc087f2f265f2ec661870f58923145c916c96db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
