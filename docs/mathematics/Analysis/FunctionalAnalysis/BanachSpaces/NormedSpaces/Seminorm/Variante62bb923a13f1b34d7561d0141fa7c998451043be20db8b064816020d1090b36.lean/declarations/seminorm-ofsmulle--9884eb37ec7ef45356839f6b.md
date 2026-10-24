# Seminorm.ofSMulLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:277dee357a045f51f09c1b6732492a35a2ca3007f0d2baf0a1c46dda86db716c",
  "kind": "def",
  "lexical_name": "Seminorm.ofSMulLE",
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
  "slug": "seminorm-ofsmulle--9884eb37ec7ef45356839f6b",
  "source": {
    "blob": "18796d42c589e751a6c33cfa873b9e5091dfbf86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 88,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variante62bb923a13f1b34d7561d0141fa7c998451043be20db8b064816020d1090b36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9884eb37ec7ef45356839f6b64d68d379e6e5b3d4568f1a953230f9a0aa01cd0",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variante62bb923a13f1b34d7561d0141fa7c998451043be20db8b064816020d1090b36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:277dee357a045f51f09c1b6732492a35a2ca3007f0d2baf0a1c46dda86db716c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Seminorm.ofSMulLE [NormedField 𝕜] [AddCommGroup E] [Module 𝕜 E] (f : E → ℝ) (map_zero : f 0 = 0)
    (add_le : ∀ x y, f (x + y) ≤ f x + f y) (smul_le : ∀ (r : 𝕜) (x), f (r • x) ≤ ‖r‖ * f x) :
    Seminorm 𝕜 E :=
  Seminorm.of f add_le fun r x => by
    refine le_antisymm (smul_le r x) ?_
    by_cases h : r = 0
    · simp [h, map_zero]
    rw [← mul_le_mul_left (inv_pos.mpr (norm_pos_iff.mpr h))]
    rw [inv_mul_cancel_left₀ (norm_ne_zero_iff.mpr h)]
    specialize smul_le r⁻¹ (r • x)
    rw [norm_inv] at smul_le
    convert smul_le
    simp [h]

end Of

namespace Seminorm

section SeminormedRing

variable [SeminormedRing 𝕜]

section AddGroup

variable [AddGroup E]

section SMul

variable [SMul 𝕜 E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variante62bb923a13f1b34d7561d0141fa7c998451043be20db8b064816020d1090b36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variante62bb923a13f1b34d7561d0141fa7c998451043be20db8b064816020d1090b36.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18796d42c589e751a6c33cfa873b9e5091dfbf86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
