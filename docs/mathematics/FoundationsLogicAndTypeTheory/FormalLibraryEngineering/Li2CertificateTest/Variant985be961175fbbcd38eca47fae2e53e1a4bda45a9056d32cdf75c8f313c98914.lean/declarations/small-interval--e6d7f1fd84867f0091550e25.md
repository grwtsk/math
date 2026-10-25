# small_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a7bc8b907e748a4c6f7e3280f618c2e77a6834b40f5db932b11aa67feb03989",
  "kind": "def",
  "lexical_name": "small_interval",
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
  "slug": "small-interval--e6d7f1fd84867f0091550e25",
  "source": {
    "blob": "f5e109b40eae27248f9c783dc95568152f0a442d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Li2CertificateTest/Variant985be961175fbbcd38eca47fae2e53e1a4bda45a9056d32cdf75c8f313c98914.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6d7f1fd84867f0091550e250af69ef80230ae54efd9691e4de3ac33992c9e7a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Li2CertificateTest/Variant985be961175fbbcd38eca47fae2e53e1a4bda45a9056d32cdf75c8f313c98914.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a7bc8b907e748a4c6f7e3280f618c2e77a6834b40f5db932b11aa67feb03989`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def small_interval : IntervalRat := ⟨1/5, 4/5, by norm_num⟩

/-! ### Example: Manually constructed certificate

This demonstrates the certificate structure. In practice, you would:
1. Run `buildCertificate` during development
2. Copy the partition entries to a literal list
3. Use the literal list for verification

For now, we construct a single-partition certificate inline.
The key point is that verification is LINEAR - no search logic.
-/

/-- Manually constructed partition entry.
    Domain: [1/5, 4/5]
    Bound: Computed from evalInterval?1 g_alt_expr [1/5, 4/5]

    In practice, these would be pre-computed and stored as literals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Li2CertificateTest/Variant985be961175fbbcd38eca47fae2e53e1a4bda45a9056d32cdf75c8f313c98914.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Li2CertificateTest/Variant985be961175fbbcd38eca47fae2e53e1a4bda45a9056d32cdf75c8f313c98914.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5e109b40eae27248f9c783dc95568152f0a442d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
