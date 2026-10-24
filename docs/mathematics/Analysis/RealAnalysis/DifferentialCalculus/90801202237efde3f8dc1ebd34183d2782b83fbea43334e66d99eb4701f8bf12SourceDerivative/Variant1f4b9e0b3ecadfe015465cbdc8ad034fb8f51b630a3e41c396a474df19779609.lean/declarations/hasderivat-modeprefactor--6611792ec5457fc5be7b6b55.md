# hasDerivAt_modePrefactor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce0f8b71-5ab2-cdda-5ec4-5c12a52b8e1d",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_modePrefactor",
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
  "slug": "hasderivat-modeprefactor--6611792ec5457fc5be7b6b55",
  "source": {
    "blob": "dcd3345549ccbf7b3b0e498cffd03710cc81afe9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant1f4b9e0b3ecadfe015465cbdc8ad034fb8f51b630a3e41c396a474df19779609.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6611792ec5457fc5be7b6b55fccf1198c27ba97a242bf9429fae99a7fd09462d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant1f4b9e0b3ecadfe015465cbdc8ad034fb8f51b630a3e41c396a474df19779609.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce0f8b71-5ab2-cdda-5ec4-5c12a52b8e1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem hasDerivAt_modePrefactor (m : ℕ) (t : ℝ) :
    HasDerivAt (fun x => Real.pi * ((m + 1 : ℕ) : ℝ) ^ 2 * Real.exp (5 * x))
      (5 * (Real.pi * ((m + 1 : ℕ) : ℝ) ^ 2 * Real.exp (5 * t))) t := by
  convert! (((hasDerivAt_id t).const_mul 5).exp.const_mul
    (Real.pi * ((m + 1 : ℕ) : ℝ) ^ 2)) using 1
  dsimp only [Pi.mul_apply, Pi.sub_apply, Pi.pow_apply, Pi.neg_apply, id_eq]
  ring

/-- Differentiate the literal mode without a logarithm or denominator premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant1f4b9e0b3ecadfe015465cbdc8ad034fb8f51b630a3e41c396a474df19779609.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant1f4b9e0b3ecadfe015465cbdc8ad034fb8f51b630a3e41c396a474df19779609.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcd3345549ccbf7b3b0e498cffd03710cc81afe9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
