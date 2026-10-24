# Gamma_strictMonoOn_Ici

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54f5f3b20ecf171ec9c9e17bec2cdb911a418a2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 345,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9b55688-1abc-8cd9-ea5b-23e7108d9963",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66496e58-9594-b129-c45b-9d2f06770a4a",
  "kind": "theorem",
  "lexical_name": "Gamma_strictMonoOn_Ici",
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
  "slug": "gamma-strictmonoon-ici--9309a91c2b95efd796fefdd4",
  "source": {
    "blob": "54f5f3b20ecf171ec9c9e17bec2cdb911a418a2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 345,
    "path": "GRWTSK/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9309a91c2b95efd796fefdd44b14a8194967d5adc290d270d33632c40d2e6014",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66496e58-9594-b129-c45b-9d2f06770a4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Gamma_strictMonoOn_Ici : StrictMonoOn Gamma (Ici 2) := by
  convert
    convexOn_Gamma.strict_mono_of_lt (by norm_num : (0 : ℝ) < 3 / 2)
      (by norm_num : (3 / 2 : ℝ) < 2) (Gamma_two.symm ▸ Gamma_three_div_two_lt_one)
  symm
  rw [inter_eq_right]
  exact fun x hx => two_pos.trans_le <| mem_Ici.mp hx

end StrictMono

section Doubling

/-!
## The Gamma doubling formula

As a fun application of the Bohr-Mollerup theorem, we prove the Gamma-function doubling formula
(for positive real `s`). The idea is that `2 ^ s * Gamma (s / 2) * Gamma (s / 2 + 1 / 2)` is
log-convex and satisfies the Gamma functional equation, so it must actually be a constant
multiple of `Gamma`, and we can compute the constant by specialising at `s = 1`. -/


/-- Auxiliary definition for the doubling formula (we'll show this is equal to `Gamma s`) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BohrMollerup/Variant761de2a8296091023ac4a0df6c19ab575b1513d1c01526991cc36b141ce21342.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54f5f3b20ecf171ec9c9e17bec2cdb911a418a2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
