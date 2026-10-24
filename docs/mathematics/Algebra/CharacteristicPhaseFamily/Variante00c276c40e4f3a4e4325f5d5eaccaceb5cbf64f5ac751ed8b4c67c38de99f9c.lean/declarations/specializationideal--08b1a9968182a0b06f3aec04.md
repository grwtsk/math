# specializationIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a9981c6f17f497c3af4aa3ba1f333379bde5b4e44c6a62fa416358b09d54ba0",
  "kind": "abbrev",
  "lexical_name": "specializationIdeal",
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
  "slug": "specializationideal--08b1a9968182a0b06f3aec04",
  "source": {
    "blob": "f9a1b9ab14a9b517709595fb1f00671920ad4b63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 347,
    "path": "GRWTSK/Algebra/CharacteristicPhaseFamily/Variante00c276c40e4f3a4e4325f5d5eaccaceb5cbf64f5ac751ed8b4c67c38de99f9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08b1a9968182a0b06f3aec04e870667d303042058d9c8fac834239c120320d7b",
  "verification": {
    "reference": "docs/verification/Algebra/CharacteristicPhaseFamily/Variante00c276c40e4f3a4e4325f5d5eaccaceb5cbf64f5ac751ed8b4c67c38de99f9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a9981c6f17f497c3af4aa3ba1f333379bde5b4e44c6a62fa416358b09d54ba0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev specializationIdeal (c : ℂ) : Ideal UniversalFamily :=
  Ideal.map (AdjoinRoot.of (characteristicPolynomial (X : ParameterRing))) (parameterIdeal c)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CharacteristicPhaseFamily/Variante00c276c40e4f3a4e4325f5d5eaccaceb5cbf64f5ac751ed8b4c67c38de99f9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CharacteristicPhaseFamily/Variante00c276c40e4f3a4e4325f5d5eaccaceb5cbf64f5ac751ed8b4c67c38de99f9c.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9a1b9ab14a9b517709595fb1f00671920ad4b63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
