# modularCyclotomicCharacter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9174d6d8e6dd2324ef6d5ac7faf810a5c91467d005cea31effbb79da61519a37",
  "kind": "def",
  "lexical_name": "modularCyclotomicCharacter",
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
  "slug": "modularcyclotomiccharacter--bacbffaed79e180da61b0de2",
  "source": {
    "blob": "9e9cdccb270bfa4a2f909181e931e40309c973e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 212,
    "path": "GRWTSK/NumberTheory/CyclotomicCharacter/Variant7ebfb3362d5a8ae5e0a47cb525209acfb0786c4986385800e70d8e2d7e2146f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bacbffaed79e180da61b0de26e11f772dbd8b2e9a29cc09a4b3fad8f4ceb4313",
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

Occurrence: `declaration:9174d6d8e6dd2324ef6d5ac7faf810a5c91467d005cea31effbb79da61519a37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def modularCyclotomicCharacter {n : ℕ} [NeZero n]
    (hn : Nat.card { x // x ∈ rootsOfUnity n L } = n) :
    (L ≃+* L) →* (ZMod n)ˣ :=
  (Units.mapEquiv <| (ZMod.ringEquivCongr hn).toMulEquiv).toMonoidHom.comp
  (modularCyclotomicCharacter' L n)

namespace modularCyclotomicCharacter

variable {n : ℕ} [NeZero n] (hn : Nat.card { x // x ∈ rootsOfUnity n L } = n)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CyclotomicCharacter/Variant7ebfb3362d5a8ae5e0a47cb525209acfb0786c4986385800e70d8e2d7e2146f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CyclotomicCharacter/Variant7ebfb3362d5a8ae5e0a47cb525209acfb0786c4986385800e70d8e2d7e2146f8.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e9cdccb270bfa4a2f909181e931e40309c973e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
