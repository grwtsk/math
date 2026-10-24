# LawfulGroupLawCertificate.add_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "761140093e66cc83e6c64f13f018ada1046a2f3d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48289c50-b73c-c6f1-4377-533dc20ec1b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd41ea0f-88f3-f54d-f2b3-d71a2daefa24",
  "kind": "theorem",
  "lexical_name": "LawfulGroupLawCertificate.add_assoc",
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
  "slug": "lawfulgrouplawcertificate-add-assoc--5ac95a13b48bf502986e7701",
  "source": {
    "blob": "761140093e66cc83e6c64f13f018ada1046a2f3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 117,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ac95a13b48bf502986e7701ac6e61c2f8ede1d976b71104079e8f3724771750",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd41ea0f-88f3-f54d-f2b3-d71a2daefa24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LawfulGroupLawCertificate.add_assoc
    {C : LawfulShortWeierstrass.{u}}
    (G : LawfulGroupLawCertificate C)
    (P Q R : Point C.E) :
    G.add (G.add P Q) R = G.add P (G.add Q R) :=
  G.groupLaw.add_assoc P Q R

/--
Projective closure data needed by the chord-tangent construction.

This is still an interface certificate. It does not construct projective space
as a scheme or prove the projective cubic equation. It now carries typed
projective-point data instead of a bare assertion that the model and point at
infinity were merely specified.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `761140093e66cc83e6c64f13f018ada1046a2f3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
