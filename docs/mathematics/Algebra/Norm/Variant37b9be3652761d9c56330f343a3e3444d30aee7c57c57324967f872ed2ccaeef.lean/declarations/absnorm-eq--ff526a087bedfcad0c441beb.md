# absNorm_eq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fd2035349400e1bb55bf7b0f7062703a382a87ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37b9be3652761d9c56330f343a3e3444d30aee7c57c57324967f872ed2ccaeef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e26e0f1-9e70-3649-4d36-29894d005b18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7927ed3f-a0f7-5c54-c332-3cf291219d7e",
  "kind": "theorem",
  "lexical_name": "absNorm_eq'",
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
  "slug": "absnorm-eq--ff526a087bedfcad0c441beb",
  "source": {
    "blob": "fd2035349400e1bb55bf7b0f7062703a382a87ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 84,
    "path": "GRWTSK/Algebra/Norm/Variant37b9be3652761d9c56330f343a3e3444d30aee7c57c57324967f872ed2ccaeef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff526a087bedfcad0c441beb42053d6f37e608f6469bc1f7bfd24cb8cbc5a1fb",
  "verification": {
    "reference": "docs/verification/Algebra/Norm/Variant37b9be3652761d9c56330f343a3e3444d30aee7c57c57324967f872ed2ccaeef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7927ed3f-a0f7-5c54-c332-3cf291219d7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absNorm_eq' {I : FractionalIdeal R⁰ K} (a : R⁰) (I₀ : Ideal R)
    (h : a • (I : Submodule R K) = Submodule.map (Algebra.linearMap R K) I₀) :
    absNorm I = (Ideal.absNorm I₀ : ℚ) / |Algebra.norm ℤ (a : R)| := by
  rw [absNorm, ← absNorm_div_norm_eq_absNorm_div_norm a I₀ h, MonoidWithZeroHom.coe_mk,
    ZeroHom.coe_mk]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Norm/Variant37b9be3652761d9c56330f343a3e3444d30aee7c57c57324967f872ed2ccaeef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Norm/Variant37b9be3652761d9c56330f343a3e3444d30aee7c57c57324967f872ed2ccaeef.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd2035349400e1bb55bf7b0f7062703a382a87ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
