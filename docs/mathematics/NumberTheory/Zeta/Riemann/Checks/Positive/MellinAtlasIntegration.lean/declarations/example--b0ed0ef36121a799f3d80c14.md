# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22787eb3aa6d081deea686d9241349143de5e5a74d52fdaf60b9d3b487a465f2",
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
  "slug": "example--b0ed0ef36121a799f3d80c14",
  "source": {
    "blob": "9fd84d2065192a157bcbb3b7bcb3a5030835d538",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 25,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/MellinAtlasIntegration.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0ed0ef36121a799f3d80c144cac3a45e0040fa361f3318a10b3773b00723653",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/Positive/MellinAtlasIntegration.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22787eb3aa6d081deea686d9241349143de5e5a74d52fdaf60b9d3b487a465f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re)
    (powers : FinitePowerEnclosure N s) (prefix : MellinPrefixEnclosure (N : ℝ) s) :
    ‖powers.sample - poleMellinEvaluation s prefix.value‖ ≤
      powers.finiteError + (‖s‖ * ‖s - 1‖) * prefix.error :=
  sample_agreement_le hN hs powers prefix

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/Positive/MellinAtlasIntegration.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/MellinAtlasIntegration.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fd84d2065192a157bcbb3b7bcb3a5030835d538` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
