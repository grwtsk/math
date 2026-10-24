# isScalarTower_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01209e8be4d7b76bfa57642bd474daaeebc33078de7842452ca06fcfc943250d",
  "kind": "instance",
  "lexical_name": "isScalarTower_left",
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
  "slug": "isscalartower-left--d16dbb5dc20853b847eb68f7",
  "source": {
    "blob": "482780d73698dde0966c0155154aae44a51a8102",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 687,
    "line": 680,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantf7940a8fc522fe9601106a1b2bcd9bb92808eebf829ec0c9da71fb8590c63343.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d16dbb5dc20853b847eb68f7dacf6f7c8b1712625a5997563dfb7a495ce5c0d9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantf7940a8fc522fe9601106a1b2bcd9bb92808eebf829ec0c9da71fb8590c63343.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01209e8be4d7b76bfa57642bd474daaeebc33078de7842452ca06fcfc943250d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 680–687.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
scoped instance isScalarTower_left (X) [SMul X R] [SMul X A] [IsScalarTower X R A] :
    letI := (inclusion h).toModule; IsScalarTower X S T :=
  letI := (inclusion h).toModule
  ⟨fun x s t ↦ Subtype.ext <| by
    rw [← one_smul R s, ← smul_assoc, one_smul, ← one_smul R (s • t), ← smul_assoc,
      Algebra.smul_def, Algebra.smul_def]
    apply mul_assoc⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantf7940a8fc522fe9601106a1b2bcd9bb92808eebf829ec0c9da71fb8590c63343.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantf7940a8fc522fe9601106a1b2bcd9bb92808eebf829ec0c9da71fb8590c63343.lean#L680).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `482780d73698dde0966c0155154aae44a51a8102` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
