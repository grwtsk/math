# IsPeriodicPt.piMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b13c026e181e32b56f3830e702caf85c1548fa82",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 535,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/826bd443e316adf818734bb47a1353b6eedf0b14ff7278c61440013b635746e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:976f9b0b-501c-e29b-3317-913ea2a25125",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9341ade1-afdd-fee3-cc6e-4d858d718aba",
  "kind": "theorem",
  "lexical_name": "IsPeriodicPt.piMap",
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
  "slug": "isperiodicpt-pimap--c34fb4612b378947f11aa595",
  "source": {
    "blob": "b13c026e181e32b56f3830e702caf85c1548fa82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 556,
    "line": 535,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant826bd443e316adf818734bb47a1353b6eedf0b14ff7278c61440013b635746e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c34fb4612b378947f11aa59567153e4187d823515886463d0aab6f6e9178eeee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant826bd443e316adf818734bb47a1353b6eedf0b14ff7278c61440013b635746e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9341ade1-afdd-fee3-cc6e-4d858d718aba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–556.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPeriodicPt.piMap (h : ∀ i, IsPeriodicPt (f i) n (x i)) : IsPeriodicPt (Pi.map f) n x :=
  isPeriodicPt_piMap.mpr h

end Pi

end Function

namespace MulAction

open Function

universe u v
variable {α : Type v}
variable {G : Type u} [Group G] [MulAction G α]
variable {M : Type u} [Monoid M] [MulAction M α]

/--
The period of a multiplicative action of `g` on `a` is the smallest positive `n` such that
`g ^ n • a = a`, or `0` if such an `n` does not exist.
-/
@[to_additive /-- The period of an additive action of `g` on `a` is the smallest positive `n`
such that `(n • g) +ᵥ a = a`, or `0` if such an `n` does not exist. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant826bd443e316adf818734bb47a1353b6eedf0b14ff7278c61440013b635746e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant826bd443e316adf818734bb47a1353b6eedf0b14ff7278c61440013b635746e4.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b13c026e181e32b56f3830e702caf85c1548fa82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
