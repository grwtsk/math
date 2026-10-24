# Filter.eventually

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef7716c7d94125580a703fdc469e266a3e2b24c11573fea8e98e123c7a5392a7",
  "kind": "def",
  "lexical_name": "Filter.eventually",
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
  "slug": "filter-eventually--95045fe26cc3ed91345c2f88",
  "source": {
    "blob": "53e59c536f28feebfe4f6be70af83f5896b278dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 14,
    "path": "GRWTSK/Topology/GeneralTopology/Notation3/Variant9ebef74ab42355d39154f1883a91fd3135e928520a323c4522f65a7b60cfc4d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95045fe26cc3ed91345c2f8866072db4a9d10ab3e886add802b382168f52acf5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Notation3/Variant9ebef74ab42355d39154f1883a91fd3135e928520a323c4522f65a7b60cfc4d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef7716c7d94125580a703fdc469e266a3e2b24c11573fea8e98e123c7a5392a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Filter.eventually (p : α → Prop) (f : Filter α) := f p

notation3 "∀ᶠ " (...) " in " f ", " r:(scoped p => Filter.eventually p f) => r

/-- info: ∀ᶠ (x : ℕ) (y : ℕ) in Filter.atTop, x < y : Prop -/
#guard_msgs in #check ∀ᶠ (x : Nat) (y) in Filter.atTop, x < y
/-- info: ∀ᶠ (x : ℕ) in Filter.atTop, x < 3 : Prop -/
#guard_msgs in #check ∀ᶠ x in Filter.atTop, x < 3

/-!
Test that `pp.tagAppFns` causes tokens to be tagged with head constant.
-/

open Lean in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Notation3/Variant9ebef74ab42355d39154f1883a91fd3135e928520a323c4522f65a7b60cfc4d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Notation3/Variant9ebef74ab42355d39154f1883a91fd3135e928520a323c4522f65a7b60cfc4d7.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53e59c536f28feebfe4f6be70af83f5896b278dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
