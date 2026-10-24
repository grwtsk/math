# mem_toMultiset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b2b2e6c7f4914768396b7b46a5f1c1ee3366a20d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d666363-a52a-002b-3b25-8fc00d53c163",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c834a15e-8684-fe26-7bc4-81731e7169ce",
  "kind": "theorem",
  "lexical_name": "mem_toMultiset",
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
  "slug": "mem-tomultiset--5b3a668562e97eb47af7e49b",
  "source": {
    "blob": "b2b2e6c7f4914768396b7b46a5f1c1ee3366a20d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 129,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b3a668562e97eb47af7e49bcfb816c3d28c65220c6e754ccb1eae70a38000eb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c834a15e-8684-fe26-7bc4-81731e7169ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_toMultiset (f : α →₀ ℕ) (i : α) : i ∈ toMultiset f ↔ i ∈ f.support := by
  classical
  rw [← Multiset.count_ne_zero, Finsupp.count_toMultiset, Finsupp.mem_support_iff]
#align finsupp.mem_to_multiset Finsupp.mem_toMultiset

end Finsupp

namespace Multiset

variable [DecidableEq α]

/-- Given a multiset `s`, `s.toFinsupp` returns the finitely supported function on `ℕ` given by
the multiplicities of the elements of `s`. -/
@[simps symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2b2e6c7f4914768396b7b46a5f1c1ee3366a20d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
