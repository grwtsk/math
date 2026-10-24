# Summable.tsum_const_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70290f1d0ffa852f4c23ff1fb0df2781a45b9d27",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86b8fa5b-4ab1-59c7-365a-4ac0217a8170",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f94cf69c-78f6-7732-4ee9-3c92027174df",
  "kind": "theorem",
  "lexical_name": "Summable.tsum_const_smul",
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
  "slug": "summable-tsum-const-smul--8ce5e1313bbf4d4c41d789b8",
  "source": {
    "blob": "70290f1d0ffa852f4c23ff1fb0df2781a45b9d27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 28,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ce5e1313bbf4d4c41d789b82850b13187d3f764fff738285beecc9435a6e947",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f94cf69c-78f6-7732-4ee9-3c92027174df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Summable.tsum_const_smul [T2Space α] (b : γ) (hf : Summable f) :
    ∑' i, b • f i = b • ∑' i, f i :=
  (hf.hasSum.const_smul _).tsum_eq

@[deprecated (since := "2025-04-12")] alias tsum_const_smul := Summable.tsum_const_smul

/-- Infinite sums commute with scalar multiplication. Version for scalars living in a `Group`, but
  not requiring any summability hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70290f1d0ffa852f4c23ff1fb0df2781a45b9d27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
