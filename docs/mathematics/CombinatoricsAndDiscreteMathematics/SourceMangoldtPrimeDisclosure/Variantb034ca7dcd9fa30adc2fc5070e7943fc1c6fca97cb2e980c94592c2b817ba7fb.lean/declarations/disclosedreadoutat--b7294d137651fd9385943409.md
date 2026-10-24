# disclosedReadoutAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3b73d7307b2ff98e3fa306884b3387cf2968be8d8fa6f84b88931c17273c286",
  "kind": "def",
  "lexical_name": "disclosedReadoutAt",
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
  "slug": "disclosedreadoutat--b7294d137651fd9385943409",
  "source": {
    "blob": "92e4780b426b9fdf2d19d552e58b67fa5cada813",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 139,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceMangoldtPrimeDisclosure/Variantb034ca7dcd9fa30adc2fc5070e7943fc1c6fca97cb2e980c94592c2b817ba7fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7294d137651fd93859434097e2ea75e2e88b629220d8fc22db86e7cf7d21878",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceMangoldtPrimeDisclosure/Variantb034ca7dcd9fa30adc2fc5070e7943fc1c6fca97cb2e980c94592c2b817ba7fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3b73d7307b2ff98e3fa306884b3387cf2968be8d8fa6f84b88931c17273c286`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def disclosedReadoutAt (A : ℝ) (hA : 0 < A) (U N : ℕ) (P : Finset ℕ) : ℝ :=
  compensatedReadout (originalSourceL2 A hA) (Finset.Ioc U N)
    (disclosedMangoldtRow P) (disclosedBetaRow P U) (mainTermAt A U N)

/-- All three compensated blocks survive the actual simultaneous arithmetic update. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceMangoldtPrimeDisclosure/Variantb034ca7dcd9fa30adc2fc5070e7943fc1c6fca97cb2e980c94592c2b817ba7fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceMangoldtPrimeDisclosure/Variantb034ca7dcd9fa30adc2fc5070e7943fc1c6fca97cb2e980c94592c2b817ba7fb.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92e4780b426b9fdf2d19d552e58b67fa5cada813` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
