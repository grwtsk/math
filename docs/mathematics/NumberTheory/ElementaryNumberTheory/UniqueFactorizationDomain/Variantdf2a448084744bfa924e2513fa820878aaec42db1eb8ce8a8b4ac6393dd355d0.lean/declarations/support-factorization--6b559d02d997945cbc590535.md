# support_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35c291d382c6d9d4e59536769a537c8fce1dfb3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2017,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2775adfa-7144-1626-350b-cd0204f3bee1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00a1a432-8d10-7254-259e-adf5d65c1837",
  "kind": "theorem",
  "lexical_name": "support_factorization",
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
  "slug": "support-factorization--6b559d02d997945cbc590535",
  "source": {
    "blob": "35c291d382c6d9d4e59536769a537c8fce1dfb3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2023,
    "line": 2017,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b559d02d997945cbc590535739b0451e590612aa8f4d827b8cfb087fb81df3f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00a1a432-8d10-7254-259e-adf5d65c1837`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2017–2023.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem support_factorization {n : α} :
    (factorization n).support = (normalizedFactors n).toFinset := by
  simp [factorization, Multiset.toFinsupp_support]
#align support_factorization support_factorization

/-- For nonzero `a` and `b`, the power of `p` in `a * b` is the sum of the powers in `a` and `b` -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean#L2017).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35c291d382c6d9d4e59536769a537c8fce1dfb3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
