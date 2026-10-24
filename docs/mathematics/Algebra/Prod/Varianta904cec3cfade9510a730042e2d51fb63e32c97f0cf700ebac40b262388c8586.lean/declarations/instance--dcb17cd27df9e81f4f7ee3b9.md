# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f00c76c5f395adc4735c6d3717d036049354a6cb4e47a6de1c31b98cf8826755",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--dcb17cd27df9e81f4f7ee3b9",
  "source": {
    "blob": "4a1a3fcf7ad7fc09241f7f52d20e3e47866bbe03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 405,
    "path": "GRWTSK/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dcb17cd27df9e81f4f7ee3b9372814c7fe60f3f61ca6ca4a28877031a76aaec7",
  "verification": {
    "reference": "docs/verification/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f00c76c5f395adc4735c6d3717d036049354a6cb4e47a6de1c31b98cf8826755`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [OrderedCommSemiring α] [OrderedCommSemiring β] : OrderedCommSemiring (α × β) :=
  { inferInstanceAs (OrderedSemiring (α × β)), inferInstanceAs (CommSemiring (α × β)) with }

-- porting note: compile fails with `inferInstanceAs (OrderedSemiring (α × β))`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a1a3fcf7ad7fc09241f7f52d20e3e47866bbe03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
