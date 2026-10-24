# _root_.GRWTSK.Analysis.SpecialFunctions.SLReductionModHomVal.Variant2c8de586c7494e1b7a686a824c594076645fd3c00f5fa1b88da0e0e88bf2dfe4.Subgroup.IsArithmetic.conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce7e7970-cad2-715e-48ab-7dc3e48472b4",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.SpecialFunctions.SLReductionModHomVal.Variant2c8de586c7494e1b7a686a824c594076645fd3c00f5fa1b88da0e0e88bf2dfe4.Subgroup.IsArithmetic.conj",
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
  "slug": "root-grwtsk-analysis-specialfunctions-slreductionmodhomval-variant2c8de5--5891d58b39aec41434ca55eb",
  "source": {
    "blob": "35e45cd5be1fb6bb010e3aa69db7af42e5c4112a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 331,
    "path": "GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant01b28ce383def5bdc7b6aa661058b19fb428c3acdd14bab87b44c4021e88d6b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5891d58b39aec41434ca55eb0cf0939495059cac0d2dd40771e7cf2a5dc8f1d1",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/CongruenceSubgroups/Variant01b28ce383def5bdc7b6aa661058b19fb428c3acdd14bab87b44c4021e88d6b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce7e7970-cad2-715e-48ab-7dc3e48472b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.SpecialFunctions.SLReductionModHomVal.Variant2c8de586c7494e1b7a686a824c594076645fd3c00f5fa1b88da0e0e88bf2dfe4.Subgroup.IsArithmetic.conj (𝒢 : Subgroup (GL (Fin 2) ℝ)) [𝒢.IsArithmetic]
    (g : GL (Fin 2) ℚ) :
    (toConjAct (g.map (Rat.castHom ℝ)) • 𝒢).IsArithmetic :=
  ⟨(Subgroup.IsArithmetic.is_commensurable.smul _).trans
    (isArithmetic_conj_SL2Z g).is_commensurable⟩

/-- If `Γ` is a congruence subgroup, then so is `g⁻¹ Γ g ∩ SL(2, ℤ)` for any `g ∈ GL(2, ℚ)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/CongruenceSubgroups/Variant01b28ce383def5bdc7b6aa661058b19fb428c3acdd14bab87b44c4021e88d6b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant01b28ce383def5bdc7b6aa661058b19fb428c3acdd14bab87b44c4021e88d6b0.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35e45cd5be1fb6bb010e3aa69db7af42e5c4112a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
