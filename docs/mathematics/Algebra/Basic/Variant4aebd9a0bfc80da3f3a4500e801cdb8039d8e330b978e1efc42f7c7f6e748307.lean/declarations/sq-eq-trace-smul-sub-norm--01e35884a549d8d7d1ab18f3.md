# sq_eq_trace_smul_sub_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:415973a7-b14c-149a-3f69-7e8f4cf62eeb",
  "kind": "theorem",
  "lexical_name": "sq_eq_trace_smul_sub_norm",
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
  "slug": "sq-eq-trace-smul-sub-norm--01e35884a549d8d7d1ab18f3",
  "source": {
    "blob": "e1bef7eb6c7263eca25d62ccdaddf6499ef9c87c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 431,
    "path": "GRWTSK/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01e35884a549d8d7d1ab18f398f1bbcf969737e53fa9a98b0ee81f5df85b3a80",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:415973a7-b14c-149a-3f69-7e8f4cf62eeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sq_eq_trace_smul_sub_norm :
    z ^ 2 = trace z • z - algebraMap R _ (norm z) := by
  rw [← sub_eq_zero, ← sub_add, sq_sub_trace_smul_add_norm_eq_zero]

end trace

section changeGenerator

variable [CommRing R]

-- The quadratic relation satisfied by the new generator `u • ω + k`; this is what makes
-- `changeGenerator` well defined. Stated with `x * x` rather than `x ^ 2` to match the shape of
-- the subtype condition of `lift` (`{ u // u * u = a • 1 + b • u }`), so it feeds
-- `changeGenerator` verbatim.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1bef7eb6c7263eca25d62ccdaddf6499ef9c87c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
