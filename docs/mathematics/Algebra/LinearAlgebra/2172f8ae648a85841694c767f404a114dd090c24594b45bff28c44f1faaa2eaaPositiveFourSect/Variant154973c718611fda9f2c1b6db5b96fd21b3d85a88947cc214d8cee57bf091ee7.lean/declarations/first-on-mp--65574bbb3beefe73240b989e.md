# first_on_MP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e232d47-8dee-e630-b394-b905ff8a0a9f",
  "kind": "theorem",
  "lexical_name": "first_on_MP",
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
  "slug": "first-on-mp--65574bbb3beefe73240b989e",
  "source": {
    "blob": "89ce69d65e84dfb007ad240fe345dcf3a36f4365",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 158,
    "path": "GRWTSK/Algebra/LinearAlgebra/2172f8ae648a85841694c767f404a114dd090c24594b45bff28c44f1faaa2eaaPositiveFourSect/Variant154973c718611fda9f2c1b6db5b96fd21b3d85a88947cc214d8cee57bf091ee7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65574bbb3beefe73240b989ea6d6fb6092d996b2f9ee6d1b988ed63278e7f7c1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/2172f8ae648a85841694c767f404a114dd090c24594b45bff28c44f1faaa2eaaPositiveFourSect/Variant154973c718611fda9f2c1b6db5b96fd21b3d85a88947cc214d8cee57bf091ee7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e232d47-8dee-e630-b394-b905ff8a0a9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_on_MP (x : V) :
    C.involutions.first (C.sectorMP x) = -C.sectorMP x := by
  change C.involutions.first
      (involutionMinus C.involutions.first
        (involutionPlus C.involutions.second x)) =
    -involutionMinus C.involutions.first
      (involutionPlus C.involutions.second x)
  exact involution_on_minus C.involutions.first C.involutions.first_sq _

/-- The second involution acts by +1 on -+. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/2172f8ae648a85841694c767f404a114dd090c24594b45bff28c44f1faaa2eaaPositiveFourSect/Variant154973c718611fda9f2c1b6db5b96fd21b3d85a88947cc214d8cee57bf091ee7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/2172f8ae648a85841694c767f404a114dd090c24594b45bff28c44f1faaa2eaaPositiveFourSect/Variant154973c718611fda9f2c1b6db5b96fd21b3d85a88947cc214d8cee57bf091ee7.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89ce69d65e84dfb007ad240fe345dcf3a36f4365` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
