# modularCyclotomicCharacter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9d04df9fd45ba54065999de377ebddf796260474a95ed9dd48801516033a35f",
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
  "slug": "modularcyclotomiccharacter--bcd70fae42b5630c9c5fe33d",
  "source": {
    "blob": "e2e976f3a4535232f7e7d78fde690cbb7b692c2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 220,
    "path": "GRWTSK/NumberTheory/CyclotomicCharacter/Variant6fcb1b812a7a428fa2a8bcf2813c320fe41602383436255787fd02c73882db66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcd70fae42b5630c9c5fe33de76038f5610b4378c763f17cf7e309eb01c9981d",
  "verification": {
    "reference": "docs/verification/NumberTheory/CyclotomicCharacter/Variant6fcb1b812a7a428fa2a8bcf2813c320fe41602383436255787fd02c73882db66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9d04df9fd45ba54065999de377ebddf796260474a95ed9dd48801516033a35f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–229.

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

[Verification target and public status](../../../../../verification/NumberTheory/CyclotomicCharacter/Variant6fcb1b812a7a428fa2a8bcf2813c320fe41602383436255787fd02c73882db66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CyclotomicCharacter/Variant6fcb1b812a7a428fa2a8bcf2813c320fe41602383436255787fd02c73882db66.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2e976f3a4535232f7e7d78fde690cbb7b692c2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
