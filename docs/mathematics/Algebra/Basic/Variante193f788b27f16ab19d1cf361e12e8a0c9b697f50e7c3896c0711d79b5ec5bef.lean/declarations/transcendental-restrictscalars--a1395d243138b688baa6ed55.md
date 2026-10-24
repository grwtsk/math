# Transcendental.restrictScalars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64da4325-2e51-a09f-a47e-e7041c6e467b",
  "kind": "theorem",
  "lexical_name": "Transcendental.restrictScalars",
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
  "slug": "transcendental-restrictscalars--a1395d243138b688baa6ed55",
  "source": {
    "blob": "965e9965ffaf7a90d74c43cbb8b7f0999ebf51ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 426,
    "path": "GRWTSK/Algebra/Basic/Variante193f788b27f16ab19d1cf361e12e8a0c9b697f50e7c3896c0711d79b5ec5bef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1395d243138b688baa6ed5556439248d31d82c2dba2d301150d3e37d2dcc94a",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variante193f788b27f16ab19d1cf361e12e8a0c9b697f50e7c3896c0711d79b5ec5bef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64da4325-2e51-a09f-a47e-e7041c6e467b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Transcendental.restrictScalars (hinj : Function.Injective (algebraMap R S)) {x : A}
    (h : Transcendental S x) : Transcendental R x := fun H ↦ h (H.extendScalars hinj)

@[deprecated (since := "2024-11-18")]
alias Transcendental.of_tower_top_of_injective := Transcendental.restrictScalars

/-- A special case of `Transcendental.restrictScalars`. This is extracted as a theorem
  because in some cases `Transcendental.restrictScalars` will just runs out of memory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variante193f788b27f16ab19d1cf361e12e8a0c9b697f50e7c3896c0711d79b5ec5bef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variante193f788b27f16ab19d1cf361e12e8a0c9b697f50e7c3896c0711d79b5ec5bef.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `965e9965ffaf7a90d74c43cbb8b7f0999ebf51ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
