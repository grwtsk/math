# alter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:090294d139f16af69aba3026c35ce4e03522ba0cc48432b87b77ed658094196e",
  "kind": "def",
  "lexical_name": "alter",
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
  "slug": "alter--20303ffbb028e6fa34f82fa2",
  "source": {
    "blob": "7926156d27c6b236b3566616cdee99867a8f2c7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 956,
    "line": 937,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a9aaaebd6265409676e08b149ab4e41f1921eea47841302fccb3aad28bc662c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20303ffbb028e6fa34f82fa2e6d7e34f95e3028c203510fa1c63af399f0dd076",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a9aaaebd6265409676e08b149ab4e41f1921eea47841302fccb3aad28bc662c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:090294d139f16af69aba3026c35ce4e03522ba0cc48432b87b77ed658094196e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 937–956.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def alter [LawfulEqCmp cmp] (t : DTreeMap α β cmp) (a : α) (f : Option (β a) → Option (β a)) :
    DTreeMap α β cmp :=
  letI : Ord α := ⟨cmp⟩; ⟨t.inner.alter a f t.wf.balanced |>.impl, t.wf.alter⟩

/--
Returns a map that contains all mappings of `t₁` and `t₂`. In case that both maps contain the
same key `k` with respect to `cmp`, the provided function is used to determine the new value from
the respective values in `t₁` and `t₂`.

This function ensures that `t₁` is used linearly. It also uses the individual values in `t₁`
linearly if the merge function uses the second argument (i.e. the first of type `β a`) linearly.
Hence, as long as `t₁` is unshared, the performance characteristics follow the following imperative
description: Iterate over all mappings in `t₂`, inserting them into `t₁` if `t₁` does not contain a
conflicting mapping yet. If `t₁` does contain a conflicting mapping, use the given merge function to
merge the mapping in `t₂` into the mapping in `t₁`. Then return `t₁`.

Hence, the runtime of this method scales logarithmically in the size of `t₁` and linearly in the size of
`t₂` as long as `t₁` is unshared.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a9aaaebd6265409676e08b149ab4e41f1921eea47841302fccb3aad28bc662c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a9aaaebd6265409676e08b149ab4e41f1921eea47841302fccb3aad28bc662c.lean#L937).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7926156d27c6b236b3566616cdee99867a8f2c7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
