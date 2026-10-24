# coe_normSq_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61d68d7c-7bb9-c7ac-b142-351c595e2394",
  "kind": "theorem",
  "lexical_name": "coe_normSq_add",
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
  "slug": "coe-normsq-add--6254dcd614428e1e5f25cffd",
  "source": {
    "blob": "c0a8314abc5f1da7b2ea9edf282932d102aa0cae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1056,
    "line": 1054,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quaternion/Variant379f6c98b6e349a82accbe690e6c7d3cd020e6a5f6910b225111bb1c2c9ea6f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6254dcd614428e1e5f25cffd737cbacec0b1053a296d5c16719aae81e412073a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quaternion/Variant379f6c98b6e349a82accbe690e6c7d3cd020e6a5f6910b225111bb1c2c9ea6f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61d68d7c-7bb9-c7ac-b142-351c595e2394`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1054–1056.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_normSq_add : normSq (a + b) = normSq a + a * star b + b * star a + normSq b := by
  simp only [star_add, ← self_mul_star, mul_add, add_mul, add_assoc, add_left_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quaternion/Variant379f6c98b6e349a82accbe690e6c7d3cd020e6a5f6910b225111bb1c2c9ea6f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quaternion/Variant379f6c98b6e349a82accbe690e6c7d3cd020e6a5f6910b225111bb1c2c9ea6f0.lean#L1054).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0a8314abc5f1da7b2ea9edf282932d102aa0cae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
