# localAlgEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b872a3ebb6f8c9a1f1c1714a8549c20df9df8eb13b77a54879963fcdd28f11d",
  "kind": "def",
  "lexical_name": "localAlgEquiv",
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
  "slug": "localalgequiv--8df3f96e1e22b2d76e13282f",
  "source": {
    "blob": "7eebc43c1d7f01f6484aae60c4c7433c8b48c39a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 322,
    "path": "GRWTSK/Algebra/Basic/Variantf28105cd3f40bc17ed97741a953ff66bcaa97f4734aa542b59fa360728c127d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8df3f96e1e22b2d76e13282fd702ccdda68a26fbc2393c57e9c465d7a33893b7",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantf28105cd3f40bc17ed97741a953ff66bcaa97f4734aa542b59fa360728c127d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b872a3ebb6f8c9a1f1c1714a8549c20df9df8eb13b77a54879963fcdd28f11d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def localAlgEquiv [Algebra R P] (I : Ideal S) [I.IsPrime] (J : Ideal P) [J.IsPrime]
    (f : S ≃ₐ[R] P) (hIJ : I = J.comap f) :
    Localization.AtPrime I ≃ₐ[R] Localization.AtPrime J where
  __ := localAlgHom I J f.toAlgHom hIJ
  __ := localRingEquiv I J f.toRingEquiv hIJ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantf28105cd3f40bc17ed97741a953ff66bcaa97f4734aa542b59fa360728c127d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf28105cd3f40bc17ed97741a953ff66bcaa97f4734aa542b59fa360728c127d1.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7eebc43c1d7f01f6484aae60c4c7433c8b48c39a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
