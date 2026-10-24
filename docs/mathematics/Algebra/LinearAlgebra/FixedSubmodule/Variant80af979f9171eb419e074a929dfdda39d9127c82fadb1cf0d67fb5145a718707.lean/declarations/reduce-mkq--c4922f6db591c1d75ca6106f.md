# reduce_mkQ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3213d313135a7758e096ddabb8d516d67ac7484e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86fe3ad4-e3b1-2247-4cc9-3453a077c226",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0076435f-b16a-c2f3-8bcc-227741cf9437",
  "kind": "theorem",
  "lexical_name": "reduce_mkQ",
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
  "slug": "reduce-mkq--c4922f6db591c1d75ca6106f",
  "source": {
    "blob": "3213d313135a7758e096ddabb8d516d67ac7484e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 122,
    "path": "GRWTSK/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4922f6db591c1d75ca6106f0997f7c077ad46acb5e96d7f4a9b2b238dc9a7fb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0076435f-b16a-c2f3-8bcc-227741cf9437`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduce_mkQ (W : Submodule R V) (u : stabilizer (V ≃ₗ[R] V) W) (x : V) :
    reduce W u (W.mkQ x) = W.mkQ (u.val x) :=
  rfl

/-- The linear equivalence deduced from `e : V ≃ₗ[R] V`
by passing to the quotient by `e.fixedSubmodule`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FixedSubmodule/Variant80af979f9171eb419e074a929dfdda39d9127c82fadb1cf0d67fb5145a718707.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3213d313135a7758e096ddabb8d516d67ac7484e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
