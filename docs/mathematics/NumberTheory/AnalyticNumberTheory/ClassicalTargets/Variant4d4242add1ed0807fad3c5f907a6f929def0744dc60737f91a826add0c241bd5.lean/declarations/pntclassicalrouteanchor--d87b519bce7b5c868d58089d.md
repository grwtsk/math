# PNTClassicalRouteAnchor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:baa5f990538c5a662662dee16ecec4506fc88d7f417da31fef3be9d558b0ff78",
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
  "slug": "pntclassicalrouteanchor--d87b519bce7b5c868d58089d",
  "source": {
    "blob": "5948cd879840df6425e220ddb1182851d0ed1c39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 22,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ClassicalTargets/Variant4d4242add1ed0807fad3c5f907a6f929def0744dc60737f91a826add0c241bd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d87b519bce7b5c868d58089d3b7c72984b9aad2a401e2295a30b5f57ebbfb993",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ClassicalTargets/Variant4d4242add1ed0807fad3c5f907a6f929def0744dc60737f91a826add0c241bd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:baa5f990538c5a662662dee16ecec4506fc88d7f417da31fef3be9d558b0ff78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–33.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/ClassicalTargets/Variant4d4242add1ed0807fad3c5f907a6f929def0744dc60737f91a826add0c241bd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ClassicalTargets/Variant4d4242add1ed0807fad3c5f907a6f929def0744dc60737f91a826add0c241bd5.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5948cd879840df6425e220ddb1182851d0ed1c39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
