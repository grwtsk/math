# cast_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0360596e-e5bd-0afb-f274-25caeb31b21d",
  "kind": "lemma",
  "lexical_name": "cast_eq_zero",
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
  "slug": "cast-eq-zero--cc6ed660fd99ff7297b13d21",
  "source": {
    "blob": "4bc491d3b1dafebc5cf20a5fc503bb87a51f5bfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 39,
    "path": "GRWTSK/Algebra/UniversalAlgebra/CharZero/Varianta0cf8d3fd177656c086c13e1de2c9065d0ae898cc635acde1e5d877c46d3c5eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc6ed660fd99ff7297b13d21d9541d3835a8a3deb2047e0f54aad92518895f76",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/CharZero/Varianta0cf8d3fd177656c086c13e1de2c9065d0ae898cc635acde1e5d877c46d3c5eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0360596e-e5bd-0afb-f274-25caeb31b21d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, norm_cast] lemma cast_eq_zero : (p : α) = 0 ↔ p = 0 := cast_injective.eq_iff' cast_zero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/CharZero/Varianta0cf8d3fd177656c086c13e1de2c9065d0ae898cc635acde1e5d877c46d3c5eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/CharZero/Varianta0cf8d3fd177656c086c13e1de2c9065d0ae898cc635acde1e5d877c46d3c5eb.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bc491d3b1dafebc5cf20a5fc503bb87a51f5bfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
