# prod_eq_bot_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67fafd05-125c-5ae0-45d3-62a27b01ed01",
  "kind": "theorem",
  "lexical_name": "prod_eq_bot_iff",
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
  "slug": "prod-eq-bot-iff--56247de1e47d22e594ae4b2c",
  "source": {
    "blob": "6fdd861afdb82d865c3ccd8fa321a5042144c9d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 145,
    "path": "GRWTSK/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56247de1e47d22e594ae4b2c82731a16056867b3c06d0a3613972a6861fb0a8b",
  "verification": {
    "reference": "docs/verification/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67fafd05-125c-5ae0-45d3-62a27b01ed01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_eq_bot_iff {I : Ideal R} {J : Ideal S} :
    prod I J = ⊥ ↔ I = ⊥ ∧ J = ⊥ := by
  rw [← prod_inj, prod_bot_bot]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fdd861afdb82d865c3ccd8fa321a5042144c9d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
