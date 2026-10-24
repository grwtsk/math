# iteratedDerivWithin_cexp_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71be2e0b-cedc-192b-18be-93fd345feb5a",
  "kind": "lemma",
  "lexical_name": "iteratedDerivWithin_cexp_aux",
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
  "slug": "iteratedderivwithin-cexp-aux--0ea19ea8076d890f062aaeed",
  "source": {
    "blob": "88cc488f2db65abe80b44588cd5be219a228526d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ea19ea8076d890f062aaeed396e09675994dade7756e19a242a513670f64094",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71be2e0b-cedc-192b-18be-93fd345feb5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma iteratedDerivWithin_cexp_aux (k m : ℕ) (p : ℝ) {S : Set ℂ} (hs : IsOpen S) :
    EqOn (iteratedDerivWithin k (fun s : ℂ ↦ cexp (2 * π * I * m * s / p)) S)
    (fun s ↦ (2 * π * I * m / p) ^ k * cexp (2 * π * I * m * s / p)) S := by
  apply EqOn.trans (iteratedDerivWithin_of_isOpen hs)
  intro x hx
  have : (fun s ↦ cexp (2 * π * I * m * s / p)) = fun s ↦ cexp (((2 * π * I * m) / p) * s) := by
    ext z
    ring_nf
  simp only [this, iteratedDeriv_cexp_const_mul]
  ring_nf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88cc488f2db65abe80b44588cd5be219a228526d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
