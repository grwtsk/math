# decidableExistsLE'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84ef16fa8a8270598b710f05065b66d067feaa0a6e3ee2d48ab8d510883e9bc8",
  "kind": "instance",
  "lexical_name": "decidableExistsLE'",
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
  "slug": "decidableexistsle--7e428d34a89e0c86cd6cb47e",
  "source": {
    "blob": "6770eae442be8d7119e8fdc770727d87291da0eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1954,
    "line": 1948,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant8259037db9a9bf223c4d57eb7811ff0b65e4439f98ed0bf3cd301565ff46daad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e428d34a89e0c86cd6cb47ef0a6e3444c341454078c9a4d3375938c75920ad2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant8259037db9a9bf223c4d57eb7811ff0b65e4439f98ed0bf3cd301565ff46daad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84ef16fa8a8270598b710f05065b66d067feaa0a6e3ee2d48ab8d510883e9bc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1948–1954.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance decidableExistsLE' {p : (m : Nat) → m ≤ k → Prop} [I : ∀ m h, Decidable (p m h)] :
    Decidable (∃ m : Nat, ∃ h : m ≤ k, p m h) :=
  decidable_of_iff (∃ m, ∃ h : m < k + 1, p m (by omega)) <| by
    apply exists_congr
    intro
    exact ⟨fun ⟨h, w⟩ => ⟨le_of_lt_succ h, w⟩, fun ⟨h, w⟩ => ⟨lt_add_one_of_le h, w⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant8259037db9a9bf223c4d57eb7811ff0b65e4439f98ed0bf3cd301565ff46daad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant8259037db9a9bf223c4d57eb7811ff0b65e4439f98ed0bf3cd301565ff46daad.lean#L1948).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6770eae442be8d7119e8fdc770727d87291da0eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
