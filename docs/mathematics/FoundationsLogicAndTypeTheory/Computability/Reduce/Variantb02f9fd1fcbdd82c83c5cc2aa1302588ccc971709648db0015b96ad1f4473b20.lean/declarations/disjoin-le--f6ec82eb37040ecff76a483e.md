# disjoin_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b94c80f9-09c0-fb22-9d50-772503958e85",
  "kind": "theorem",
  "lexical_name": "disjoin_le",
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
  "slug": "disjoin-le--f6ec82eb37040ecff76a483e",
  "source": {
    "blob": "2ec4caeea6e983bb2194c3f3f2337524fe6fbf5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 269,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Reduce/Variantb02f9fd1fcbdd82c83c5cc2aa1302588ccc971709648db0015b96ad1f4473b20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6ec82eb37040ecff76a483e574694ddba30a9321ce9a545033b3e12c2c5b02d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Reduce/Variantb02f9fd1fcbdd82c83c5cc2aa1302588ccc971709648db0015b96ad1f4473b20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b94c80f9-09c0-fb22-9d50-772503958e85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoin_le {α β γ} [Primcodable α] [Primcodable β] [Primcodable γ] {p : α → Prop}
    {q : β → Prop} {r : γ → Prop} : (p ⊕' q) ≤₀ r ↔ p ≤₀ r ∧ q ≤₀ r :=
  ⟨fun h =>
    ⟨OneOneReducible.disjoin_left.to_many_one.trans h,
      OneOneReducible.disjoin_right.to_many_one.trans h⟩,
    fun ⟨h₁, h₂⟩ => disjoin_manyOneReducible h₁ h₂⟩

variable {α : Type u} [Primcodable α] [Inhabited α] {β : Type v} [Primcodable β] [Inhabited β]

/-- Computable and injective mapping of predicates to sets of natural numbers.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Reduce/Variantb02f9fd1fcbdd82c83c5cc2aa1302588ccc971709648db0015b96ad1f4473b20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Reduce/Variantb02f9fd1fcbdd82c83c5cc2aa1302588ccc971709648db0015b96ad1f4473b20.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ec4caeea6e983bb2194c3f3f2337524fe6fbf5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
