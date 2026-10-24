# ResidualFamily.total_vanishes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b641aacf-c4b9-417c-007c-bbea8491c254",
  "kind": "theorem",
  "lexical_name": "ResidualFamily.total_vanishes",
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
  "slug": "residualfamily-total-vanishes--8f4e156089893a0c5551ede1",
  "source": {
    "blob": "3274afe26def0b38f11d9105f9edb26530ddafe0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 58,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f4e156089893a0c5551ede17d08db0bb533a9590900fce2b20749a272fead9b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b641aacf-c4b9-417c-007c-bbea8491c254`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ResidualFamily.total_vanishes {T : Type*} (residuals : ResidualFamily T)
    (hsource : ∀ f g, VanishesAtInfinity (fun n => residuals.source n f g))
    (hprime : ∀ f g, VanishesAtInfinity (fun n => residuals.prime n f g))
    (harchimedean : ∀ f g, VanishesAtInfinity (fun n => residuals.archimedean n f g))
    (hpole : ∀ f g, VanishesAtInfinity (fun n => residuals.pole n f g))
    (hzero : ∀ f g, VanishesAtInfinity (fun n => residuals.zero n f g))
    (hendpoint : ∀ f g, VanishesAtInfinity (fun n => residuals.endpoint n f g))
    (hgeometric : ∀ f g, VanishesAtInfinity (fun n => residuals.geometric n f g))
    (hmirror : ∀ f g, VanishesAtInfinity (fun n => residuals.mirror n f g))
    (htail : ∀ f g, VanishesAtInfinity (fun n => residuals.tail n f g)) :
    ∀ f g, VanishesAtInfinity (fun n => residuals.total n f g) := by
  intro f g
  have h1 := (hsource f g).add (hprime f g)
  have h2 := h1.add (harchimedean f g)
  have h3 := h2.add (hpole f g)
  have h4 := h3.add (hzero f g)
  have h5 := h4.add (hendpoint f g)
  have h6 := h5.add (hgeometric f g)
  have h7 := h6.add (hmirror f g)
  exact h7.add (htail f g)

/-- A comparison whose residual equality is derived at the target form itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3274afe26def0b38f11d9105f9edb26530ddafe0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
