# evaln_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6025514c4913aa2b9140b1f4b471951f60905025",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 931,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed473eb7a0f9988d9ffa8cb083d4abfcda1750a28bb9e914e1e3d3ccb96fa2f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8819f1e3-16f2-4265-7029-94af828885c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f304fdd-9a5b-9175-ec66-200110972ae1",
  "kind": "theorem",
  "lexical_name": "evaln_map",
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
  "slug": "evaln-map--c97428910c283bfaca306bb3",
  "source": {
    "blob": "6025514c4913aa2b9140b1f4b471951f60905025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 941,
    "line": 931,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianted473eb7a0f9988d9ffa8cb083d4abfcda1750a28bb9e914e1e3d3ccb96fa2f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c97428910c283bfaca306bb313f9d2050945dbf1c8698d71de710545694a6358",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianted473eb7a0f9988d9ffa8cb083d4abfcda1750a28bb9e914e1e3d3ccb96fa2f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f304fdd-9a5b-9175-ec66-200110972ae1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 931–941.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem evaln_map (k c n) :
    ((List.range k)[n]?.bind fun a ↦ evaln k c a) = evaln k c n := by
  by_cases kn : n < k
  · simp [List.getElem?_range kn]
  · rw [List.getElem?_eq_none]
    · cases e : evaln k c n
      · rfl
      exact kn.elim (evaln_bound e)
    simpa using kn

/-- The `Nat.Partrec.Code.evaln` function is primitive recursive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianted473eb7a0f9988d9ffa8cb083d4abfcda1750a28bb9e914e1e3d3ccb96fa2f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianted473eb7a0f9988d9ffa8cb083d4abfcda1750a28bb9e914e1e3d3ccb96fa2f1.lean#L931).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6025514c4913aa2b9140b1f4b471951f60905025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
