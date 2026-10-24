# IdemSemiring.ofSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:612eba57284f76013c013f26378dfd3a33c41651103ab0f19faa11f97cf11b72",
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
  "slug": "idemsemiring-ofsemiring--8c123b621235233a7b1aa7f3",
  "source": {
    "blob": "7d3c281067cd5f23ac049a3c9e56e0bd4d2a4c13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 102,
    "path": "GRWTSK/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c123b621235233a7b1aa7f33565de293b40f28da88a9370f82a785e470001dd",
  "verification": {
    "reference": "docs/verification/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:612eba57284f76013c013f26378dfd3a33c41651103ab0f19faa11f97cf11b72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–122.

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

[Verification target and public status](../../../../../verification/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d3c281067cd5f23ac049a3c9e56e0bd4d2a4c13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
