# OpenMPS.contract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d75a3dfc2d28f15d60c2ceb181b73d7aacdf4026d687fbe69bd8a6cbf5007960",
  "kind": "def",
  "lexical_name": "OpenMPS.contract",
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
  "slug": "openmps-contract--6bbd08d150a0b41108ae9788",
  "source": {
    "blob": "a52b211a8ba9b02bc5e1923e6aeba80615053ada",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 27,
    "path": "GRWTSK/Algebra/MPS/Variante1a3f120581cb3e9c50d79421ee1bcb17397d95f00afc527a991dbc1973da148.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6bbd08d150a0b41108ae9788b9d0f2d6cd6e960234ec473773cf8455e573138c",
  "verification": {
    "reference": "docs/verification/Algebra/MPS/Variante1a3f120581cb3e9c50d79421ee1bcb17397d95f00afc527a991dbc1973da148.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d75a3dfc2d28f15d60c2ceb181b73d7aacdf4026d687fbe69bd8a6cbf5007960`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def OpenMPS.contract
    (network : OpenMPS N D) :
    TensorState N D :=
  fun physical ↦
    ∑ virtual : VirtualConfiguration network.bondProfile,
      ∏ site : Fin N,
        network.core site
          (virtual site.castSucc)
          (physical site)
          (virtual site.succ)

/-- Exact equality between the contracted representation and source state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MPS/Variante1a3f120581cb3e9c50d79421ee1bcb17397d95f00afc527a991dbc1973da148.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MPS/Variante1a3f120581cb3e9c50d79421ee1bcb17397d95f00afc527a991dbc1973da148.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a52b211a8ba9b02bc5e1923e6aeba80615053ada` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
