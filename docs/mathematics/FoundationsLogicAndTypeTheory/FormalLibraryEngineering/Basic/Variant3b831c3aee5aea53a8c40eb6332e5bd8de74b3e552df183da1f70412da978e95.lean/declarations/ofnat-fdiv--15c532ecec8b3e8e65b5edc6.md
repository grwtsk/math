# ofNat_fdiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "855635fb1ddc652debd9b4f843ecd546ef94dee9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 280,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b831c3aee5aea53a8c40eb6332e5bd8de74b3e552df183da1f70412da978e95.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1c707fd-02f1-0d4f-8e10-f8fb25fdee8a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a05ea338-4cb5-6feb-db94-0e3935b28199",
  "kind": "theorem",
  "lexical_name": "ofNat_fdiv",
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
  "slug": "ofnat-fdiv--15c532ecec8b3e8e65b5edc6",
  "source": {
    "blob": "855635fb1ddc652debd9b4f843ecd546ef94dee9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 280,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b831c3aee5aea53a8c40eb6332e5bd8de74b3e552df183da1f70412da978e95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15c532ecec8b3e8e65b5edc61112b57f18795dd554bde757a67f6177c91cfb14",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b831c3aee5aea53a8c40eb6332e5bd8de74b3e552df183da1f70412da978e95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a05ea338-4cb5-6feb-db94-0e3935b28199`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofNat_fdiv : ∀ m n : Nat, ↑(m / n) = fdiv ↑m ↑n
  | 0, _ => by simp [fdiv]
  | succ _, _ => rfl

/-!
# `bmod` ("balanced" mod)

Balanced mod (and balanced div) are a division and modulus pair such
that `b * (Int.bdiv a b) + Int.bmod a b = a` and
`-b/2 ≤ Int.bmod a b < b/2` for all `a : Int` and `b > 0`.

Note that unlike `emod`, `fmod`, and `tmod`,
`bmod` takes a natural number as the second argument, rather than an integer.

This function is used in `omega` as well as signed bitvectors.
-/

/--
Balanced modulus.

This version of integer modulus uses the balanced rounding convention, which guarantees that
`-m / 2 ≤ Int.bmod x m < m/2` for `m ≠ 0` and `Int.bmod x m` is congruent to `x` modulo `m`.

If `m = 0`, then `Int.bmod x m = x`.

Examples:
* `(7 : Int).bmod 0 = 7`
* `(0 : Int).bmod 7 = 0`
* `(12 : Int).bmod 6 = 0`
* `(12 : Int).bmod 7 = -2`
* `(12 : Int).bmod 8 = -4`
* `(12 : Int).bmod 9 = 3`
* `(-12 : Int).bmod 6 = 0`
* `(-12 : Int).bmod 7 = 2`
* `(-12 : Int).bmod 8 = -4`
* `(-12 : Int).bmod 9 = -3`
-/
@[implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b831c3aee5aea53a8c40eb6332e5bd8de74b3e552df183da1f70412da978e95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b831c3aee5aea53a8c40eb6332e5bd8de74b3e552df183da1f70412da978e95.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `855635fb1ddc652debd9b4f843ecd546ef94dee9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
