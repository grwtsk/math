# mem_rootsOfUnity_iff_mem_nthRoots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee7d346b387e87d7ad658156243fed6149b1957e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 187,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04cd46facb1c345c624ababe9c54c27e8f3154035999a66dbf161da2c630e6e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34d30fd0-ce10-f87e-7904-431ae8091a07",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9cf92aea-9f33-e132-8851-fc5d3ea992f1",
  "kind": "theorem",
  "lexical_name": "mem_rootsOfUnity_iff_mem_nthRoots",
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
  "slug": "mem-rootsofunity-iff-mem-nthroots--b20ac9544d256eba20f3acfa",
  "source": {
    "blob": "ee7d346b387e87d7ad658156243fed6149b1957e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 187,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant04cd46facb1c345c624ababe9c54c27e8f3154035999a66dbf161da2c630e6e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b20ac9544d256eba20f3acfa223fe3260fbe5afdbc23d983cc742c524a850af5",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant04cd46facb1c345c624ababe9c54c27e8f3154035999a66dbf161da2c630e6e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cf92aea-9f33-e132-8851-fc5d3ea992f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_rootsOfUnity_iff_mem_nthRoots {ζ : Rˣ} :
    ζ ∈ rootsOfUnity k R ↔ (ζ : R) ∈ nthRoots k (1 : R) := by
  simp only [mem_rootsOfUnity, mem_nthRoots k.pos, Units.ext_iff, Units.val_one,
    Units.val_pow_eq_pow_val]
#align mem_roots_of_unity_iff_mem_nth_roots mem_rootsOfUnity_iff_mem_nthRoots

variable (k R)

/-- Equivalence between the `k`-th roots of unity in `R` and the `k`-th roots of `1`.

This is implemented as equivalence of subtypes,
because `rootsOfUnity` is a subgroup of the group of units,
whereas `nthRoots` is a multiset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant04cd46facb1c345c624ababe9c54c27e8f3154035999a66dbf161da2c630e6e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant04cd46facb1c345c624ababe9c54c27e8f3154035999a66dbf161da2c630e6e6.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee7d346b387e87d7ad658156243fed6149b1957e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
