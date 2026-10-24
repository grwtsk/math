# finite_of_toPiLocalization_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3da93416-fdbe-55be-ebeb-422c9352080f",
  "kind": "theorem",
  "lexical_name": "finite_of_toPiLocalization_surjective",
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
  "slug": "finite-of-topilocalization-surjective--e7b6a3e7f1c66e11925c07df",
  "source": {
    "blob": "1f73a584c62807b201936d85bea131ee72c2a31b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 154,
    "path": "GRWTSK/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7b6a3e7f1c66e11925c07dfcccf2658520e6f2ec7d76224550124678241d68a",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3da93416-fdbe-55be-ebeb-422c9352080f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_of_toPiLocalization_surjective
    (surj : Function.Surjective (toPiLocalization R)) :
    Finite (MaximalSpectrum R) := by
  replace surj := mapPiLocalization_bijective _ ⟨toPiLocalization_injective R, surj⟩
    |>.2.comp surj
  rw [← RingHom.coe_comp, mapPiLocalization_naturality, RingHom.coe_comp] at surj
  exact finite_of_toPiLocalization_pi_surjective surj.of_comp

end MaximalSpectrum

namespace PrimeSpectrum

/-- The product of localizations at all prime ideals of a commutative semiring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f73a584c62807b201936d85bea131ee72c2a31b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
