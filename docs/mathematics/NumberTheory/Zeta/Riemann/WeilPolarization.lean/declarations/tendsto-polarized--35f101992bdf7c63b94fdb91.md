# tendsto_polarized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b429715-f065-9e66-2f25-8831916ef3b0",
  "kind": "theorem",
  "lexical_name": "tendsto_polarized",
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
  "slug": "tendsto-polarized--35f101992bdf7c63b94fdb91",
  "source": {
    "blob": "19ee46bea416fc16a26b673b9db6339ece3f83bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 148,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WeilPolarization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35f101992bdf7c63b94fdb9164254667d5bd0804180eb0b576f3b3254174fa1d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WeilPolarization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b429715-f065-9e66-2f25-8831916ef3b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_polarized (limit : DiagonalPositiveGramLimit form H)
    (f g : space.Vector) :
    Tendsto (fun n => limit.family.gram n f g) atTop (𝓝 (form.toFun f g)) := by
  have hcast (v : space.Vector) :
      Tendsto (fun n => (limit.family.diagonal n v : ℂ)) atTop
        (𝓝 (form.diagonal v : ℂ)) := (limit.tendsto_diagonal v).ofReal
  have h : Tendsto (fun n => WeilPolarization.combine
      (limit.family.diagonal n (f + g)) (limit.family.diagonal n (f - g))
      (limit.family.diagonal n (f + Complex.I • g))
      (limit.family.diagonal n (f - Complex.I • g))) atTop
      (𝓝 (WeilPolarization.combine
        (form.diagonal (f + g)) (form.diagonal (f - g))
        (form.diagonal (f + Complex.I • g)) (form.diagonal (f - Complex.I • g)))) :=
    (((hcast (f + g)).sub (hcast (f - g))).sub
      (((hcast (f + Complex.I • g)).sub (hcast (f - Complex.I • g))).const_mul
        Complex.I)).div_const (4 : ℂ)
  simpa only [← PositiveGramFamily.gram_polarization,
    ← WeilHermitianForm.polarization] using h

/-- Explicit record conversion: no new family, source, comparison ID or criterion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WeilPolarization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WeilPolarization.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19ee46bea416fc16a26b673b9db6339ece3f83bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
