# sum_Ioc_by_parts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b9894a5efa3e1768d463d2e24232f2e0eaefcff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/007d70e511e7364edc9a74e791d106155f0ec7379b5d12a69beeec869e59d39e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b4c4a75-f41b-46e0-7586-e57e3fd2702f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d23bc3e0-2642-94dc-cbc0-f64dad0147a1",
  "kind": "theorem",
  "lexical_name": "sum_Ioc_by_parts",
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
  "slug": "sum-ioc-by-parts--cdb43569986f0b37df995665",
  "source": {
    "blob": "3b9894a5efa3e1768d463d2e24232f2e0eaefcff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 47,
    "path": "GRWTSK/Algebra/Module/Variant007d70e511e7364edc9a74e791d106155f0ec7379b5d12a69beeec869e59d39e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdb43569986f0b37df9956650c7b873b77fcc022149dd2e36362d527f29ffe4c",
  "verification": {
    "reference": "docs/verification/Algebra/ModuleTheory/Variant007d70e511e7364edc9a74e791d106155f0ec7379b5d12a69beeec869e59d39e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d23bc3e0-2642-94dc-cbc0-f64dad0147a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_Ioc_by_parts (hmn : m < n) :
    ∑ i ∈ Ioc m n, f i • g i =
      f n • G (n + 1) - f (m + 1) • G (m + 1)
        - ∑ i ∈ Ioc m (n - 1), (f (i + 1) - f i) • G (i + 1) := by
  simpa only [← Ico_add_one_add_one_eq_Ioc, Nat.sub_add_cancel (Nat.one_le_of_lt hmn),
    add_tsub_cancel_right] using! sum_Ico_by_parts f g (Nat.succ_lt_succ hmn)

variable (n)

/-- **Summation by parts** for ranges -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ModuleTheory/Variant007d70e511e7364edc9a74e791d106155f0ec7379b5d12a69beeec869e59d39e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Module/Variant007d70e511e7364edc9a74e791d106155f0ec7379b5d12a69beeec869e59d39e.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b9894a5efa3e1768d463d2e24232f2e0eaefcff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
