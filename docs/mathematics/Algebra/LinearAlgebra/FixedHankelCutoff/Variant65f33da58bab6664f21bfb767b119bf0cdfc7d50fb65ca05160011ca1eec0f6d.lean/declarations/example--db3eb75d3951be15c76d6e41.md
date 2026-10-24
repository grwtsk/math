# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8694dafd33154a8073c186778363230f1b7e48a4cdc0cf2a566ccdcf76820558",
  "kind": "example",
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
  "slug": "example--db3eb75d3951be15c76d6e41",
  "source": {
    "blob": "66c077a54026f259510a5cf00cbe17b032db9c78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 27,
    "path": "GRWTSK/Algebra/LinearAlgebra/FixedHankelCutoff/Variant65f33da58bab6664f21bfb767b119bf0cdfc7d50fb65ca05160011ca1eec0f6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db3eb75d3951be15c76d6e41a9df15f65d18687739f030f2e8fe4d128c67e8ea",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FixedHankelCutoff/Variant65f33da58bab6664f21bfb767b119bf0cdfc7d50fb65ca05160011ca1eec0f6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8694dafd33154a8073c186778363230f1b7e48a4cdc0cf2a566ccdcf76820558`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : (Pi.single (Fin.last 3) (1 : ℝ) : Fin 4 → ℝ) ⬝ᵥ
    (Matrix.of (fun i j : Fin 4 ↦ cutoffSequence 2 (i.val + j.val)) *ᵥ
      Pi.single (Fin.last 3) 1) = -1 := next_order_last_basis_quadratic 2

-- Preserve the p↔s shift literally for both towers, with p₀ unused.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FixedHankelCutoff/Variant65f33da58bab6664f21bfb767b119bf0cdfc7d50fb65ca05160011ca1eec0f6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FixedHankelCutoff/Variant65f33da58bab6664f21bfb767b119bf0cdfc7d50fb65ca05160011ca1eec0f6d.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66c077a54026f259510a5cf00cbe17b032db9c78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
