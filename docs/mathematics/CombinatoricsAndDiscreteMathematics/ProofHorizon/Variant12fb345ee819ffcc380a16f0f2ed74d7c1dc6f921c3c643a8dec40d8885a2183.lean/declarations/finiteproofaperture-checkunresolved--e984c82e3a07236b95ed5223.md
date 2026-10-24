# FiniteProofAperture.checkUnresolved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8404e7afd79fd85a003f34f7df28ce95b7eefd3b1fa4dc6fc3da84039575c685",
  "kind": "def",
  "lexical_name": "FiniteProofAperture.checkUnresolved",
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
  "slug": "finiteproofaperture-checkunresolved--e984c82e3a07236b95ed5223",
  "source": {
    "blob": "45903d5fb22bec674625f626922ab20821b97739",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 41,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e984c82e3a07236b95ed5223fc22538af0cbca5f1521b711b22024b86f4367cf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8404e7afd79fd85a003f34f7df28ce95b7eefd3b1fa4dc6fc3da84039575c685`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FiniteProofAperture.checkUnresolved {Certificate : Type*}
    (aperture : FiniteProofAperture Certificate) : Bool :=
  decide ((¬∃ certificate ∈ aperture.certificates,
    aperture.accepts .positive certificate = true) ∧
    (¬∃ certificate ∈ aperture.certificates, aperture.accepts .negative certificate = true))

/-- Exact reflection of finite unresolvedness; it does not reflect object-level truth. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45903d5fb22bec674625f626922ab20821b97739` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
