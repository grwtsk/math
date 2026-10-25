# merge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6a0d101d41b15667bbcde3f4e26d9a56aa0bdb07a7d5ef114af05e04090e433",
  "kind": "def",
  "lexical_name": "merge",
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
  "slug": "merge--202fa883930fd293cfe6fb4e",
  "source": {
    "blob": "1f7badd7d7b81d699f18a2927c12f225c241e4fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 477,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantacf06bd6b68b53c3db20875557be135ed7119b32cb1566fac0b822fe1242cd7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:202fa883930fd293cfe6fb4e12b66f964343e42095a68bbca16a3692170ec5e9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantacf06bd6b68b53c3db20875557be135ed7119b32cb1566fac0b822fe1242cd7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6a0d101d41b15667bbcde3f4e26d9a56aa0bdb07a7d5ef114af05e04090e433`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def merge (t₁ t₂ : TreeSet α cmp) : TreeSet α cmp :=
  ⟨TreeMap.mergeWith (fun _ _ _ => ()) t₁.inner t₂.inner⟩

/--
Inserts multiple elements into the tree set by iterating over the given collection and calling
`insert`. If the same element (with respect to `cmp`) appears multiple times, the first occurrence
takes precedence.

Note: this precedence behavior is true for `TreeSet` and `TreeSet.Raw`. The `insertMany` function on
`TreeMap`, `DTreeMap`, `TreeMap.Raw` and `DTreeMap.Raw` behaves differently: it will prefer the last
appearance.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantacf06bd6b68b53c3db20875557be135ed7119b32cb1566fac0b822fe1242cd7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantacf06bd6b68b53c3db20875557be135ed7119b32cb1566fac0b822fe1242cd7e.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f7badd7d7b81d699f18a2927c12f225c241e4fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
