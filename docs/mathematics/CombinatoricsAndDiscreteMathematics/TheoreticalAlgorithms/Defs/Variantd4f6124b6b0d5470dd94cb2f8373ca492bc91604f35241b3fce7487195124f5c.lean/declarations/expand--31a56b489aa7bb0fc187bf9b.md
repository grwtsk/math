# expand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f959cb4a724ca2f57e97b4f6cd6653484d2acb00e9bb7b65f0ba77a214baf05e",
  "kind": "def",
  "lexical_name": "expand",
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
  "slug": "expand--31a56b489aa7bb0fc187bf9b",
  "source": {
    "blob": "1968d85c13252362ee242c7f4465fb7847e29a9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 194,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantd4f6124b6b0d5470dd94cb2f8373ca492bc91604f35241b3fce7487195124f5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31a56b489aa7bb0fc187bf9ba5bbb49d0219ece75482c95d988cb1654c9503d9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantd4f6124b6b0d5470dd94cb2f8373ca492bc91604f35241b3fce7487195124f5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f959cb4a724ca2f57e97b4f6cd6653484d2acb00e9bb7b65f0ba77a214baf05e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expand [Hashable α] (data : { d : Array (AssocList α β) // 0 < d.size }) :
    { d : Array (AssocList α β) // 0 < d.size } :=
  let ⟨data, hd⟩ := data
  let nbuckets := data.size * 2
  go 0 data ⟨Array.replicate nbuckets AssocList.nil, by simpa [nbuckets] using Nat.mul_pos hd Nat.two_pos⟩
where
  /-- Inner loop of `expand`. Copies elements `source[i...*]` into `target`,
  destroying `source` in the process. -/
  go (i : Nat) (source : Array (AssocList α β))
      (target : { d : Array (AssocList α β) // 0 < d.size }) :
      { d : Array (AssocList α β) // 0 < d.size } :=
    if h : i < source.size then
      let es := source[i]
      -- We erase `es` from `source` to make sure we can reuse its memory cells
      -- when performing es.foldl
      let source := source.set i .nil
      let target := es.foldl (reinsertAux hash) target
      go (i+1) source target
    else target
  termination_by source.size - i

/-- Internal implementation detail of the hash map -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantd4f6124b6b0d5470dd94cb2f8373ca492bc91604f35241b3fce7487195124f5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantd4f6124b6b0d5470dd94cb2f8373ca492bc91604f35241b3fce7487195124f5c.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1968d85c13252362ee242c7f4465fb7847e29a9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
