# ofEq_rfl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e5750df-0c7a-6ac9-ac94-fbc66250ba89",
  "kind": "theorem",
  "lexical_name": "ofEq_rfl",
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
  "slug": "ofeq-rfl--7c0510e9aca0dfb77274bee0",
  "source": {
    "blob": "4d86d09e0e856990c148bc310d959e0b7f5b52f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 59,
    "path": "GRWTSK/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c0510e9aca0dfb77274bee01e206a25cc770021aa12dfbe71a4947456913871",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e5750df-0c7a-6ac9-ac94-fbc66250ba89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofEq_rfl : ofEq p p rfl = LinearEquiv.refl R p := by ext; rfl

/-- A linear equivalence which maps a submodule of one module onto another, restricts to a linear
equivalence of the two submodules. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d86d09e0e856990c148bc310d959e0b7f5b52f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
