# CertificateKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dfa7c22346a514596786c80e7fa495411302426be4a362ab782a464b692691a8",
  "kind": "inductive",
  "lexical_name": "CertificateKind",
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
  "slug": "certificatekind--17e2c7edcb37e6c569555749",
  "source": {
    "blob": "b83d4bdec347f0720085afb4dc452b85c2126f92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 26,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17e2c7edcb37e6c569555749765bdc05ec5005bf21cbb0caf62d87a810859fcd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dfa7c22346a514596786c80e7fa495411302426be4a362ab782a464b692691a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive CertificateKind
  | semanticRelation
  | quotientNorm
  | banachCompletion
  | kernelCompatibility
  | hilbertRealization
  | fixedPoint
  | fixedFamilyCompleteness
  | lyapunov
  | contraction
  | linearization
  | spectral
  | perturbation
  | separation
  | pathTransport
  | holonomy
  | propertyNaturality
  | analogy
  | boundary
  | approximation
  | confluence
  | singularity
  | surgery
  | restart
  | build
  deriving DecidableEq, Repr

/-- Reported lifecycle state of a certificate envelope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b83d4bdec347f0720085afb4dc452b85c2126f92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
