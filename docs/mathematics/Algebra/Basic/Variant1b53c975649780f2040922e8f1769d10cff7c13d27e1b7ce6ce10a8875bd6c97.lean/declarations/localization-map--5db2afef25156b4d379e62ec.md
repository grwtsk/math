# localization_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d00f7211e7c5d083e0ed110a599d691fb21114e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 318,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb563cb6-bee0-bd2c-6fcc-1b2bd6c08f0d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3180ebe9-b97f-f7c1-f713-c1ec31d83854",
  "kind": "theorem",
  "lexical_name": "localization_map",
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
  "slug": "localization-map--5db2afef25156b4d379e62ec",
  "source": {
    "blob": "d00f7211e7c5d083e0ed110a599d691fb21114e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 318,
    "path": "GRWTSK/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5db2afef25156b4d379e62ec90ba767e349f93bd86e72195739c0854ff18c61f",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3180ebe9-b97f-f7c1-f713-c1ec31d83854`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localization_map [FormallySmooth R S] : FormallySmooth Rₘ Sₘ := by
  haveI : FormallySmooth S Sₘ := FormallySmooth.of_isLocalization (M.map (algebraMap R S))
  haveI : FormallySmooth R Sₘ := FormallySmooth.comp R S Sₘ
  exact FormallySmooth.localization_base M

end Localization

end FormallySmooth

section

variable (R : Type u) [CommSemiring R]
variable (A : Type u) [Semiring A] [Algebra R A]

/-- An `R` algebra `A` is smooth if it is formally smooth and of finite presentation. -/
@[stacks 00T2 "In the stacks project, the definition of smooth is completely different, and tag
<https://stacks.math.columbia.edu/tag/00TN> proves that their definition is equivalent to this."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d00f7211e7c5d083e0ed110a599d691fb21114e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
