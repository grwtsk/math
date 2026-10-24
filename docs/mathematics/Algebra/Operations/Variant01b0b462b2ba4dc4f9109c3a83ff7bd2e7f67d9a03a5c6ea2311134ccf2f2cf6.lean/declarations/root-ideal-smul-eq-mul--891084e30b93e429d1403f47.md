# _root_.Ideal.smul_eq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c1abf4cea977f829dcc3f8678b8d3697e3d749b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01b0b462b2ba4dc4f9109c3a83ff7bd2e7f67d9a03a5c6ea2311134ccf2f2cf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07c9fecd-31f3-a245-830b-d87a92cf4d40",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2bcb5e88-9091-e44f-a2c6-5815e8b35693",
  "kind": "theorem",
  "lexical_name": "_root_.Ideal.smul_eq_mul",
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
  "slug": "root-ideal-smul-eq-mul--891084e30b93e429d1403f47",
  "source": {
    "blob": "9c1abf4cea977f829dcc3f8678b8d3697e3d749b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 40,
    "path": "GRWTSK/Algebra/Operations/Variant01b0b462b2ba4dc4f9109c3a83ff7bd2e7f67d9a03a5c6ea2311134ccf2f2cf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:891084e30b93e429d1403f4710559cca1157142a3c29910588654c68b2937925",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant01b0b462b2ba4dc4f9109c3a83ff7bd2e7f67d9a03a5c6ea2311134ccf2f2cf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bcb5e88-9091-e44f-a2c6-5815e8b35693`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem _root_.Ideal.smul_eq_mul (I J : Ideal R) : I • J = I * J :=
  rfl
#align ideal.smul_eq_mul Ideal.smul_eq_mul

/-- `N.annihilator` is the ideal of all elements `r : R` such that `r • N = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant01b0b462b2ba4dc4f9109c3a83ff7bd2e7f67d9a03a5c6ea2311134ccf2f2cf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant01b0b462b2ba4dc4f9109c3a83ff7bd2e7f67d9a03a5c6ea2311134ccf2f2cf6.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c1abf4cea977f829dcc3f8678b8d3697e3d749b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
