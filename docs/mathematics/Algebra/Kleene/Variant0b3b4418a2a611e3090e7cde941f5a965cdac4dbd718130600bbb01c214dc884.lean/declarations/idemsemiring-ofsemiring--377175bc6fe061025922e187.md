# IdemSemiring.ofSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae39650e73594eeb8fca1d05c5886962a5ba8c7e5510e96dcdfc0eced8dfe801",
  "kind": "abbrev",
  "lexical_name": "IdemSemiring.ofSemiring",
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
  "slug": "idemsemiring-ofsemiring--377175bc6fe061025922e187",
  "source": {
    "blob": "71ac5ed0527984a772a4e89b659be2dd15c9e046",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 110,
    "path": "GRWTSK/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:377175bc6fe061025922e1872c3c849a979715db0e548f3e5b37b50e0cf248c1",
  "verification": {
    "reference": "docs/verification/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae39650e73594eeb8fca1d05c5886962a5ba8c7e5510e96dcdfc0eced8dfe801`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev IdemSemiring.ofSemiring [Semiring α] (h : ∀ a : α, a + a = a) : IdemSemiring α :=
  { ‹Semiring α› with
    le := fun a b ↦ a + b = b
    le_refl := h
    le_trans := fun a b c hab hbc ↦ by
      rw [← hbc, ← add_assoc, hab]
    le_antisymm := fun a b hab hba ↦ by rwa [← hba, add_comm]
    sup := (· + ·)
    le_sup_left := fun a b ↦ by
      rw [← add_assoc, h]
    le_sup_right := fun a b ↦ by
      rw [add_comm, add_assoc, h]
    sup_le := fun a b c hab hbc ↦ by
      rwa [add_assoc, hbc]
    bot := 0
    bot_le := zero_add }

section IdemSemiring

variable [IdemSemiring α] {a b c : α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71ac5ed0527984a772a4e89b659be2dd15c9e046` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
