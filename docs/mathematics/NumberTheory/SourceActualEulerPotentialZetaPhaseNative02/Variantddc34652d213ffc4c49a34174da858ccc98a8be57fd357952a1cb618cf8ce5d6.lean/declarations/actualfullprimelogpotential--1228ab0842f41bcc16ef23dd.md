# actualFullPrimeLogPotential

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e214000eec3cb0ba73d72fa8d6ad1780fea4b838ea0293d530ac915dcb3f19ba",
  "kind": "def",
  "lexical_name": "actualFullPrimeLogPotential",
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
  "slug": "actualfullprimelogpotential--1228ab0842f41bcc16ef23dd",
  "source": {
    "blob": "939979507ea39302016dafea8e250276810b747b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 40,
    "path": "GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variantddc34652d213ffc4c49a34174da858ccc98a8be57fd357952a1cb618cf8ce5d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1228ab0842f41bcc16ef23ddae9434c1da58ac421f2d3ae8ac10ab0bbedf4884",
  "verification": {
    "reference": "docs/verification/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variantddc34652d213ffc4c49a34174da858ccc98a8be57fd357952a1cb618cf8ce5d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e214000eec3cb0ba73d72fa8d6ad1780fea4b838ea0293d530ac915dcb3f19ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualFullPrimeLogPotential (s : ℂ) : ℂ := LSeries coeff s

/-- Genuine absolute convergence of the actual full coefficient series. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variantddc34652d213ffc4c49a34174da858ccc98a8be57fd357952a1cb618cf8ce5d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variantddc34652d213ffc4c49a34174da858ccc98a8be57fd357952a1cb618cf8ce5d6.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `939979507ea39302016dafea8e250276810b747b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
