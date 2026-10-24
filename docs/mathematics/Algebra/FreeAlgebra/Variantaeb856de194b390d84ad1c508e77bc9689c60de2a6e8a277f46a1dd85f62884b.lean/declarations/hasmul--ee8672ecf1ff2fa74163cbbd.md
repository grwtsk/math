# hasMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:acdf6057fae558f9bb550c71fd76150c7208ce99e96546d962b09b2406429bb8",
  "kind": "def",
  "lexical_name": "hasMul",
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
  "slug": "hasmul--ee8672ecf1ff2fa74163cbbd",
  "source": {
    "blob": "fcd056ed16b418b3edfd691ee03805c87a573c7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 92,
    "path": "GRWTSK/Algebra/FreeAlgebra/Variantaeb856de194b390d84ad1c508e77bc9689c60de2a6e8a277f46a1dd85f62884b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee8672ecf1ff2fa74163cbbd3e3b45a1f0ac2d1defa09cb7cc539937d48106df",
  "verification": {
    "reference": "docs/verification/Algebra/FreeAlgebra/Variantaeb856de194b390d84ad1c508e77bc9689c60de2a6e8a277f46a1dd85f62884b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:acdf6057fae558f9bb550c71fd76150c7208ce99e96546d962b09b2406429bb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hasMul : Mul (Pre R X) := ⟨mul⟩

/-- Addition in `Pre R X` defined as `Pre.add`. Note: Used for notation only. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FreeAlgebra/Variantaeb856de194b390d84ad1c508e77bc9689c60de2a6e8a277f46a1dd85f62884b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FreeAlgebra/Variantaeb856de194b390d84ad1c508e77bc9689c60de2a6e8a277f46a1dd85f62884b.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcd056ed16b418b3edfd691ee03805c87a573c7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
