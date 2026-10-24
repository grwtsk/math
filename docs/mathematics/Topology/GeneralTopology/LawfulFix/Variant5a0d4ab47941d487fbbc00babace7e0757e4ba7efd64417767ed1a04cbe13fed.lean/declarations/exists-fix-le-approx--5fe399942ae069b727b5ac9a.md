# exists_fix_le_approx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61526f2907da1d15cd2db91d06731a691e1750b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a0d4ab47941d487fbbc00babace7e0757e4ba7efd64417767ed1a04cbe13fed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2168e923-d26c-b130-3590-1a53a88c1072",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad231c2f-e20d-e7ef-49d8-479cebc11c79",
  "kind": "theorem",
  "lexical_name": "exists_fix_le_approx",
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
  "slug": "exists-fix-le-approx--5fe399942ae069b727b5ac9a",
  "source": {
    "blob": "61526f2907da1d15cd2db91d06731a691e1750b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 99,
    "path": "GRWTSK/Topology/GeneralTopology/LawfulFix/Variant5a0d4ab47941d487fbbc00babace7e0757e4ba7efd64417767ed1a04cbe13fed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fe399942ae069b727b5ac9a38f7db63b5d170040c63b8128e0c11e5d44fd9a8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LawfulFix/Variant5a0d4ab47941d487fbbc00babace7e0757e4ba7efd64417767ed1a04cbe13fed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad231c2f-e20d-e7ef-49d8-479cebc11c79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_fix_le_approx (x : α) : ∃ i, Part.fix f x ≤ approx f i x := by
  by_cases hh : ∃ i b, b ∈ approx f i x
  · rcases hh with ⟨i, b, hb⟩
    exists i
    intro b' h'
    have hb' := approx_le_fix f i _ _ hb
    obtain rfl := Part.mem_unique h' hb'
    exact hb
  · simp only [not_exists] at hh
    exists 0
    intro b' h'
    simp only [mem_iff f] at h'
    cases' h' with i h'
    cases hh _ _ h'
#align part.fix.exists_fix_le_approx Part.Fix.exists_fix_le_approx

/-- The series of approximations of `fix f` (see `approx`) as a `Chain` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LawfulFix/Variant5a0d4ab47941d487fbbc00babace7e0757e4ba7efd64417767ed1a04cbe13fed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LawfulFix/Variant5a0d4ab47941d487fbbc00babace7e0757e4ba7efd64417767ed1a04cbe13fed.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61526f2907da1d15cd2db91d06731a691e1750b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
