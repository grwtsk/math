# hasFiniteLimits_of_hasTerminal_and_pullbacks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd4e5967-7bd5-666e-bb81-07e179415236",
  "kind": "theorem",
  "lexical_name": "hasFiniteLimits_of_hasTerminal_and_pullbacks",
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
  "slug": "hasfinitelimits-of-hasterminal-and-pullbacks--cb0da5e6ae7400ce62c8593f",
  "source": {
    "blob": "dc904aa65145d39bac6555ece30e70bcdde11f95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 275,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant42d01a8a103a242dbb2126cf39357a2b5c88da9879af03528c29631deeb36360.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb0da5e6ae7400ce62c8593f8ccd8c741bf180882bde770b46259772df12d5d9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant42d01a8a103a242dbb2126cf39357a2b5c88da9879af03528c29631deeb36360.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd4e5967-7bd5-666e-bb81-07e179415236`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFiniteLimits_of_hasTerminal_and_pullbacks [HasTerminal C] [HasPullbacks C] :
    HasFiniteLimits C :=
  @hasFiniteLimits_of_hasEqualizers_and_finite_products C _
    (@hasFiniteProducts_of_has_binary_and_terminal C _
      (hasBinaryProducts_of_hasTerminal_and_pullbacks C) inferInstance)
    (@hasEqualizers_of_hasPullbacks_and_binary_products C _
      (hasBinaryProducts_of_hasTerminal_and_pullbacks C) inferInstance)

/-- If G preserves terminal objects and pullbacks, it preserves all finite limits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant42d01a8a103a242dbb2126cf39357a2b5c88da9879af03528c29631deeb36360.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant42d01a8a103a242dbb2126cf39357a2b5c88da9879af03528c29631deeb36360.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc904aa65145d39bac6555ece30e70bcdde11f95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
