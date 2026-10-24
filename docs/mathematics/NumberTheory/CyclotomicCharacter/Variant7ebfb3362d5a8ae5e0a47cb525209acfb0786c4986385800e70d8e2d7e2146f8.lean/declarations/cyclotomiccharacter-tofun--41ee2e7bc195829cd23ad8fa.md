# cyclotomicCharacter.toFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a41a7fc17219e94975e3fda8b693a49464effc84fda3ab4dbfd4961cc1552cbb",
  "kind": "def",
  "lexical_name": "cyclotomicCharacter.toFun",
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
  "slug": "cyclotomiccharacter-tofun--41ee2e7bc195829cd23ad8fa",
  "source": {
    "blob": "9e9cdccb270bfa4a2f909181e931e40309c973e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 263,
    "path": "GRWTSK/NumberTheory/CyclotomicCharacter/Variant7ebfb3362d5a8ae5e0a47cb525209acfb0786c4986385800e70d8e2d7e2146f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41ee2e7bc195829cd23ad8fa4854d1186cb09c4deeeb4a231540d9eb4d9bbf47",
  "verification": {
    "reference": "docs/verification/NumberTheory/CyclotomicCharacter/Variant7ebfb3362d5a8ae5e0a47cb525209acfb0786c4986385800e70d8e2d7e2146f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a41a7fc17219e94975e3fda8b693a49464effc84fda3ab4dbfd4961cc1552cbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def cyclotomicCharacter.toFun (p : ℕ) [Fact p.Prime] (g : L ≃+* L) : ℤ_[p] :=
  if H : ∀ (i : ℕ), ∃ ζ : L, IsPrimitiveRoot ζ (p ^ i) then
    haveI _ (i) : HasEnoughRootsOfUnity L (p ^ i) := ⟨H i, rootsOfUnity.isCyclic _ _⟩
    PadicInt.ofIntSeq _ (PadicInt.isCauSeq_padicNorm_of_pow_dvd_sub
      (aux g <| p ^ ·) _ fun i ↦ pow_dvd_aux_pow_sub_aux_pow g p i.le_succ)
  else 1

namespace cyclotomicCharacter

local notation "χ" => cyclotomicCharacter.toFun

variable (p : ℕ) [Fact p.Prime] (g : L ≃+* L) [∀ i, HasEnoughRootsOfUnity L (p ^ i)]

open modularCyclotomicCharacter in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CyclotomicCharacter/Variant7ebfb3362d5a8ae5e0a47cb525209acfb0786c4986385800e70d8e2d7e2146f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CyclotomicCharacter/Variant7ebfb3362d5a8ae5e0a47cb525209acfb0786c4986385800e70d8e2d7e2146f8.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e9cdccb270bfa4a2f909181e931e40309c973e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
