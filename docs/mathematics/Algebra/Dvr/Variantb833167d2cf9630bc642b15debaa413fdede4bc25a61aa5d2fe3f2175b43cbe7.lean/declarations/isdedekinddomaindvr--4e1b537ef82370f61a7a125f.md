# IsDedekindDomainDvr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d64df7a3e685c8187709bae2c044ae1efdf595ce5a01a895c7e57eb6c036999d",
  "kind": "structure",
  "lexical_name": "IsDedekindDomainDvr",
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
  "slug": "isdedekinddomaindvr--4e1b537ef82370f61a7a125f",
  "source": {
    "blob": "2e8fd71e5b6cb2fb8b727ab647d5df92a176f7e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 60,
    "path": "GRWTSK/Algebra/Dvr/Variantb833167d2cf9630bc642b15debaa413fdede4bc25a61aa5d2fe3f2175b43cbe7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e1b537ef82370f61a7a125f23b54d0a209fe208668722d8267595c381dcc2d3",
  "verification": {
    "reference": "docs/verification/Algebra/Dvr/Variantb833167d2cf9630bc642b15debaa413fdede4bc25a61aa5d2fe3f2175b43cbe7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d64df7a3e685c8187709bae2c044ae1efdf595ce5a01a895c7e57eb6c036999d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsDedekindDomainDvr : Prop where
  isNoetherianRing : IsNoetherianRing A
  is_dvr_at_nonzero_prime :
    ∀ (P) (_ : P ≠ (⊥ : Ideal A)) (_ : P.IsPrime), DiscreteValuationRing (Localization.AtPrime P)
#align is_dedekind_domain_dvr IsDedekindDomainDvr

/-- Localizing a domain of Krull dimension `≤ 1` gives another ring of Krull dimension `≤ 1`.

Note that the same proof can/should be generalized to preserving any Krull dimension,
once we have a suitable definition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Dvr/Variantb833167d2cf9630bc642b15debaa413fdede4bc25a61aa5d2fe3f2175b43cbe7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Dvr/Variantb833167d2cf9630bc642b15debaa413fdede4bc25a61aa5d2fe3f2175b43cbe7.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e8fd71e5b6cb2fb8b727ab647d5df92a176f7e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
