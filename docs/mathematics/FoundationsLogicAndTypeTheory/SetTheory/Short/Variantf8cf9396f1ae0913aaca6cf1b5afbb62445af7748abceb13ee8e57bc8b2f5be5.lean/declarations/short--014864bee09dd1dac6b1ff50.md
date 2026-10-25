# Short

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:258b239237fe55c1b24603321b84bf37ace35308ac7cf82a64711327ca6e2cf3",
  "kind": "inductive",
  "lexical_name": "Short",
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
  "slug": "short--014864bee09dd1dac6b1ff50",
  "source": {
    "blob": "18bbc42ca1dc866f62b38b1d52d595c77a9a6c99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:014864bee09dd1dac6b1ff5051d9f020ba20e521e3b73658e0b6ab6b8c8c82dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:258b239237fe55c1b24603321b84bf37ace35308ac7cf82a64711327ca6e2cf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Short : PGame.{u} → Type (u + 1)
  | mk :
    ∀ {α β : Type u} {L : α → PGame.{u}} {R : β → PGame.{u}} (_ : ∀ i : α, Short (L i))
      (_ : ∀ j : β, Short (R j)) [Fintype α] [Fintype β], Short ⟨α, β, L, R⟩
#align pgame.short SetTheory.PGame.Short

-- Porting note: Added `simpNF` exception. It's unclear what puts `eq_iff_true_of_subsingleton` into
-- the simp set. A minimal reproduction of the simpNF error needs to import transitively at least
-- `Mathlib.Logic.Unique`.
--
-- The simplifier can already prove this using `eq_iff_true_of_subsingleton`
attribute [nolint simpNF] Short.mk.injEq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18bbc42ca1dc866f62b38b1d52d595c77a9a6c99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
