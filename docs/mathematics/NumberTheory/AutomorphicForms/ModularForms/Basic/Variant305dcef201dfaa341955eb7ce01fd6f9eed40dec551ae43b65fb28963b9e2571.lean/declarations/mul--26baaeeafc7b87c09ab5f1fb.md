# mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c0c24e1abe45a6129b70a246cea092d8d60385477a69a2ebb412eb5947ca7a9",
  "kind": "def",
  "lexical_name": "mul",
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
  "slug": "mul--26baaeeafc7b87c09ab5f1fb",
  "source": {
    "blob": "307693d94d4781c722f741cfe13d33af53f8ebf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 327,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant305dcef201dfaa341955eb7ce01fd6f9eed40dec551ae43b65fb28963b9e2571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26baaeeafc7b87c09ab5f1fb5608e592575b73a9a7a71d45e4afd644fa28b7af",
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

Occurrence: `declaration:1c0c24e1abe45a6129b70a246cea092d8d60385477a69a2ebb412eb5947ca7a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mul {k_1 k_2 : ℤ} [Γ.HasDetPlusMinusOne] (f : ModularForm Γ k_1) (g : ModularForm Γ k_2) :
    ModularForm Γ (k_1 + k_2) where
  toSlashInvariantForm := f.1.mul g.1
  holo' := f.holo'.mul g.holo'
  bdd_at_cusps' hc γ hγ := by
    simpa [mul_slash] using! ((f.bdd_at_cusps' hc γ hγ).mul (g.bdd_at_cusps' hc γ hγ)).smul _

/-- The constant function with value `x : ℂ` as a modular form of weight 0 and any level. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant305dcef201dfaa341955eb7ce01fd6f9eed40dec551ae43b65fb28963b9e2571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant305dcef201dfaa341955eb7ce01fd6f9eed40dec551ae43b65fb28963b9e2571.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `307693d94d4781c722f741cfe13d33af53f8ebf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
