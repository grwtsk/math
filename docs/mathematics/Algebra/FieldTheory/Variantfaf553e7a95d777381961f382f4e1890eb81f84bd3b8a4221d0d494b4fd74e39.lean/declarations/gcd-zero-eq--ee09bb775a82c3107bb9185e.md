# gcd_zero_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0559f36a-b3a0-daf4-16a3-654eb2b41c02",
  "kind": "theorem",
  "lexical_name": "gcd_zero_eq",
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
  "slug": "gcd-zero-eq--ee09bb775a82c3107bb9185e",
  "source": {
    "blob": "6bc1d40550e167948d516ecf8efe15e422029e1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 54,
    "path": "GRWTSK/Algebra/Field/Variantfaf553e7a95d777381961f382f4e1890eb81f84bd3b8a4221d0d494b4fd74e39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee09bb775a82c3107bb9185e366c3dcbd7139dd2460bce6a2ad96bdfea52e19a",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Variantfaf553e7a95d777381961f382f4e1890eb81f84bd3b8a4221d0d494b4fd74e39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0559f36a-b3a0-daf4-16a3-654eb2b41c02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem gcd_zero_eq [DecidableEq K] (b : K) :
    EuclideanDomain.gcd 0 b = b := by
  rw [Field.gcd_eq, ite_eq_left rfl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variantfaf553e7a95d777381961f382f4e1890eb81f84bd3b8a4221d0d494b4fd74e39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variantfaf553e7a95d777381961f382f4e1890eb81f84bd3b8a4221d0d494b4fd74e39.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bc1d40550e167948d516ecf8efe15e422029e1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
