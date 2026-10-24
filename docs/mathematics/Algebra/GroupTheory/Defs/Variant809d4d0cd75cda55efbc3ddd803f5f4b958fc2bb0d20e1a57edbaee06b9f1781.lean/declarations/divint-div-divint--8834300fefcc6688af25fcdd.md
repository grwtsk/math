# divInt_div_divInt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26e04ccf-5a86-ba26-c7d0-6e8d61386cf6",
  "kind": "lemma",
  "lexical_name": "divInt_div_divInt",
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
  "slug": "divint-div-divint--8834300fefcc6688af25fcdd",
  "source": {
    "blob": "b8a500f3fec0f3893296a0b4bfdb4fb89802ba5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 228,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant809d4d0cd75cda55efbc3ddd803f5f4b958fc2bb0d20e1a57edbaee06b9f1781.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8834300fefcc6688af25fcdd3d314d35460fc3843132e37e7e39ac4cf896db81",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant809d4d0cd75cda55efbc3ddd803f5f4b958fc2bb0d20e1a57edbaee06b9f1781.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26e04ccf-5a86-ba26-c7d0-6e8d61386cf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma divInt_div_divInt (n₁ d₁ n₂ d₂) :
    (n₁ /. d₁) / (n₂ /. d₂) = (n₁ * d₂) /. (d₁ * n₂) := by
  rw [div_def, inv_divInt, divInt_mul_divInt']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant809d4d0cd75cda55efbc3ddd803f5f4b958fc2bb0d20e1a57edbaee06b9f1781.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant809d4d0cd75cda55efbc3ddd803f5f4b958fc2bb0d20e1a57edbaee06b9f1781.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8a500f3fec0f3893296a0b4bfdb4fb89802ba5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
