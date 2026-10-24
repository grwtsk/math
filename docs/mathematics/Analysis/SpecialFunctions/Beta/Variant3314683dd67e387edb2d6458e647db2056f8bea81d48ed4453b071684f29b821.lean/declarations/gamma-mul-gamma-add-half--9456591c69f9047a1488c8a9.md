# Gamma_mul_Gamma_add_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "795b650d48b4382711449f1728e1f1260a5828b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 581,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1717bbd9-28bb-7cdd-0284-3b346d984afe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:126a6053-b2c6-48b8-8bb1-da65b02ea6b9",
  "kind": "theorem",
  "lexical_name": "Gamma_mul_Gamma_add_half",
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
  "slug": "gamma-mul-gamma-add-half--9456591c69f9047a1488c8a9",
  "source": {
    "blob": "795b650d48b4382711449f1728e1f1260a5828b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 581,
    "path": "GRWTSK/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9456591c69f9047a1488c8a97c9315c848520427b7561544032e377b0602bd08",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:126a6053-b2c6-48b8-8bb1-da65b02ea6b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 581–589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Gamma_mul_Gamma_add_half (s : ℝ) :
    Gamma s * Gamma (s + 1 / 2) = Gamma (2 * s) * (2 : ℝ) ^ (1 - 2 * s) * √π := by
  rw [← ofReal_inj]
  simpa only [← Gamma_ofReal, ofReal_cpow zero_le_two, ofReal_mul, ofReal_add, ofReal_div,
    ofReal_sub] using Complex.Gamma_mul_Gamma_add_half ↑s

end Real

end Doubling
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean#L581).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `795b650d48b4382711449f1728e1f1260a5828b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
