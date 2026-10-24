# mcast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c03f10a6df789b20e81d7b27f46c235a7b15419fa57c3d407953758105bde3f",
  "kind": "def",
  "lexical_name": "mcast",
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
  "slug": "mcast--f8ada9d335ef826dc5b12ca6",
  "source": {
    "blob": "307693d94d4781c722f741cfe13d33af53f8ebf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 541,
    "line": 534,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant305dcef201dfaa341955eb7ce01fd6f9eed40dec551ae43b65fb28963b9e2571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8ada9d335ef826dc5b12ca6adb564585468db587ced34eded3530c72cffb53d",
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

Occurrence: `declaration:7c03f10a6df789b20e81d7b27f46c235a7b15419fa57c3d407953758105bde3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 534–541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mcast {a b : ℤ} {Γ Γ' : Subgroup (GL (Fin 2) ℝ)} (h : a = b) (f : ModularForm Γ a)
    (hΓ : Γ' = Γ := by rfl) : ModularForm Γ' b where
  toFun := (f : ℍ → ℂ)
  slash_action_eq' A hA := h ▸ f.slash_action_eq' A (hΓ ▸ hA)
  holo' := f.holo'
  bdd_at_cusps' hc := h ▸ f.bdd_at_cusps' (hΓ ▸ hc)

/-- `mcast` does not change the pointwise values of a modular form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant305dcef201dfaa341955eb7ce01fd6f9eed40dec551ae43b65fb28963b9e2571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant305dcef201dfaa341955eb7ce01fd6f9eed40dec551ae43b65fb28963b9e2571.lean#L534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `307693d94d4781c722f741cfe13d33af53f8ebf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
