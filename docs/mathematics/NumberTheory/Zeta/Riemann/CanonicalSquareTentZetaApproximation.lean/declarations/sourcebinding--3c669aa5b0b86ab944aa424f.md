# sourceBinding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca3a1744da26a3a5d313a29c77509fec952887cac41e6392b970c908e89752ba",
  "kind": "def",
  "lexical_name": "sourceBinding",
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
  "slug": "sourcebinding--3c669aa5b0b86ab944aa424f",
  "source": {
    "blob": "3df9bbf890802aec9ee57c246bb45b7e4703781c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 63,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c669aa5b0b86ab944aa424fdced6bc7bbfac5478cc618f84a585ae67e6696bf",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca3a1744da26a3a5d313a29c77509fec952887cac41e6392b970c908e89752ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sourceBinding : SourceBinding where
  sourceId := "Riemann-zeta canonical absolutely-summed square-tent explicit formula"
  revision :=
    "grwtsk/math@c59bffa1b34996d87cd1efb13ad1c90ae3861082;" ++
    "CanonicalTentLedger:d5f4cdab9316269cc8ab1383f3810d057a95453b;" ++
    "CanonicalTentAtomStage:88ac98a84b68999824b68e9015bee8ca5627359d;" ++
    "CanonicalSpectralPort:858fb52930dd89de451224aeaf81dcea37d362af"
  normalizationId :=
    "square tent: arithmetic=sum Lambda(k)*weight on (m+2)^2<k<=(m+3)^2;" ++
    " spectral=radius-complete-zero-divisor+rational-trivial-zero-correction;" ++
    " finite head uses |Im rho|<=N+2 with multiplicities"

/-- Exact test-class identifier.  This is deliberately a discrete source family,
not an assertion that these labels form the full classical Weil vector space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3df9bbf890802aec9ee57c246bb45b7e4703781c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
