# listShortGet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:765144aa941cb2dd06239bff3f1ffc3aaee9e8a65d192ca6db30a3a5de0844a3",
  "kind": "instance",
  "lexical_name": "listShortGet",
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
  "slug": "listshortget--9eb2d878fbaf5fac2fb6a0f0",
  "source": {
    "blob": "dd1d420166f8d98166edcd38041f6b6c8cd17f8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 210,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9eb2d878fbaf5fac2fb6a0f0f8c945f35914e1567461992e4baadaae99955457",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:765144aa941cb2dd06239bff3f1ffc3aaee9e8a65d192ca6db30a3a5de0844a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance listShortGet :
    ∀ (L : List PGame.{u}) [ListShort L] (i : Fin (List.length L)), Short (List.get L i)
  | [], _, n => by
    exfalso
    rcases n with ⟨_, ⟨⟩⟩
    -- Porting note: The proof errors unless `done` or a `;` is added after `rcases`
    done
  | _::_, ListShort.cons' S _, ⟨0, _⟩ => S
  | hd::tl, ListShort.cons' _ S, ⟨n + 1, h⟩ =>
    @listShortGet tl S ⟨n, (add_lt_add_iff_right 1).mp h⟩

set_option linter.deprecated false in
@[deprecated listShortGet]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd1d420166f8d98166edcd38041f6b6c8cd17f8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
