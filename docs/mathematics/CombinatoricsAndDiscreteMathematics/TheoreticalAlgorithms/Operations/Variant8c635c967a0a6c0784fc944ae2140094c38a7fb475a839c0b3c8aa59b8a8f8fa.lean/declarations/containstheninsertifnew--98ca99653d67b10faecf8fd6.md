# containsThenInsertIfNew

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2a09fafff55ecea21ce6efb4d93465123869cf6ab5b5df74e4a4d1af7cb34e1",
  "kind": "def",
  "lexical_name": "containsThenInsertIfNew",
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
  "slug": "containstheninsertifnew--98ca99653d67b10faecf8fd6",
  "source": {
    "blob": "e339bb93aac40bc1487e93c83d949400f061b3fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 398,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operations/Variant8c635c967a0a6c0784fc944ae2140094c38a7fb475a839c0b3c8aa59b8a8f8fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98ca99653d67b10faecf8fd64820a937fb8bce1f6ce38ab0ec1fd41b248de9c4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operations/Variant8c635c967a0a6c0784fc944ae2140094c38a7fb475a839c0b3c8aa59b8a8f8fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2a09fafff55ecea21ce6efb4d93465123869cf6ab5b5df74e4a4d1af7cb34e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def containsThenInsertIfNew [Ord α] (k : α) (v : β k) (t : Impl α β) (hl : t.Balanced) :
    Bool × SizedBalancedTree α β t.size (t.size + 1) :=
  if t.contains k then (true, ⟨t, ✓, ✓, ✓⟩) else (false, t.insert k v ✓)

/--
Slower version of `containsThenInsertIfNew` which can be used in the absence of balance
information but still assumes the preconditions of `containsThenInsertIfNew`, otherwise might panic.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operations/Variant8c635c967a0a6c0784fc944ae2140094c38a7fb475a839c0b3c8aa59b8a8f8fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operations/Variant8c635c967a0a6c0784fc944ae2140094c38a7fb475a839c0b3c8aa59b8a8f8fa.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e339bb93aac40bc1487e93c83d949400f061b3fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
