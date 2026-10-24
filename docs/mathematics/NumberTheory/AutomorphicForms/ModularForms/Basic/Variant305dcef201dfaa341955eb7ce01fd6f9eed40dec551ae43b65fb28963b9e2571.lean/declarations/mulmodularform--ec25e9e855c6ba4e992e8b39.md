# mulModularForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab648b039a6a799eb087f405b958ea96bb4b7fad7d600e89f2aeae6186cf6a5d",
  "kind": "def",
  "lexical_name": "mulModularForm",
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
  "slug": "mulmodularform--ec25e9e855c6ba4e992e8b39",
  "source": {
    "blob": "307693d94d4781c722f741cfe13d33af53f8ebf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 508,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant305dcef201dfaa341955eb7ce01fd6f9eed40dec551ae43b65fb28963b9e2571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec25e9e855c6ba4e992e8b39a05bfd5c854c7a3762a9b83a33a5e3454fb64dab",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant305dcef201dfaa341955eb7ce01fd6f9eed40dec551ae43b65fb28963b9e2571.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab648b039a6a799eb087f405b958ea96bb4b7fad7d600e89f2aeae6186cf6a5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mulModularForm [Γ.HasDetPlusMinusOne] {k₁ k₂ : ℤ} (f : CuspForm Γ k₁) (g : ModularForm Γ k₂) :
    CuspForm Γ (k₁ + k₂) where
  toSlashInvariantForm := f.1.mul g.1
  holo' := f.holo'.mul g.holo'
  zero_at_cusps' hc γ hγ := by
    simpa [mul_slash] using!
      ((f.zero_at_cusps' hc γ hγ).mul_boundedAtFilter (g.bdd_at_cusps' hc γ hγ)).smul _

/-- Cast for cusp forms, which is useful for avoiding `Heq`s. Optionally transports along
an equality of subgroups. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant305dcef201dfaa341955eb7ce01fd6f9eed40dec551ae43b65fb28963b9e2571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant305dcef201dfaa341955eb7ce01fd6f9eed40dec551ae43b65fb28963b9e2571.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `307693d94d4781c722f741cfe13d33af53f8ebf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
