# PNTClassicalRouteAnchor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83bdcb710186d830a64f11dc6a5cd7487315c85edd4656113bb57a749a280be6",
  "kind": "def",
  "lexical_name": "PNTClassicalRouteAnchor",
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
  "slug": "pntclassicalrouteanchor--c9cc3c6e5379ccf54d05f7ef",
  "source": {
    "blob": "83098c03516f44add7b1a86e51137571377950b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 30,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ClassicalTargets/Varianta09b4b8152542f6990b90350f0c836b8cc4e3926756ad1eab8857f73e967dc0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9cc3c6e5379ccf54d05f7efb206f3af3c6cfdb2d48fe3894311e6e5e7567227",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ClassicalTargets/Varianta09b4b8152542f6990b90350f0c836b8cc4e3926756ad1eab8857f73e967dc0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83bdcb710186d830a64f11dc6a5cd7487315c85edd4656113bb57a749a280be6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PNTClassicalRouteAnchor : ClassicalAnchor where
  shortName := "Classical route to prime asymptotics"
  paperOrBook := "Hadamard, de la Vallee Poussin, and Tauberian references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "Meromorphic continuation, a simple pole at one, a no-zero boundary statement, and a Tauberian theorem form the classical route."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl

end AnalyticNumberTheory
end Rebuild
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/ClassicalTargets/Varianta09b4b8152542f6990b90350f0c836b8cc4e3926756ad1eab8857f73e967dc0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ClassicalTargets/Varianta09b4b8152542f6990b90350f0c836b8cc4e3926756ad1eab8857f73e967dc0e.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83098c03516f44add7b1a86e51137571377950b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
