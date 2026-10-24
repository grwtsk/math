# invOf_eq_right_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6dd2e8d-2a4e-29e3-eb7d-bc09f35d3bf0",
  "kind": "theorem",
  "lexical_name": "invOf_eq_right_inv",
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
  "slug": "invof-eq-right-inv--9520515cd61e8b7894b38e0e",
  "source": {
    "blob": "e9cfbf607b2a40874530b3442ca1f7c39e92ba63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 147,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9520515cd61e8b7894b38e0e065a22351755c11c82ca3bda747736f3c4e6e5ac",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6dd2e8d-2a4e-29e3-eb7d-bc09f35d3bf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem invOf_eq_right_inv [Monoid α] {a b : α} [Invertible a] (hac : a * b = 1) : ⅟ a = b :=
  left_inv_eq_right_inv (invOf_mul_self _) hac

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9cfbf607b2a40874530b3442ca1f7c39e92ba63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
