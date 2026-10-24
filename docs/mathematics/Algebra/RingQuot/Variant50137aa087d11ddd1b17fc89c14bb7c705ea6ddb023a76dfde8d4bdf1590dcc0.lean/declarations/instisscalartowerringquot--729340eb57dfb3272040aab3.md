# instIsScalarTowerRingQuot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15fa9c7d2023358f7d7fe30c1b4ffff155915212e2e92d06a7a6f012180bdc04",
  "kind": "instance",
  "lexical_name": "instIsScalarTowerRingQuot",
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
  "slug": "instisscalartowerringquot--729340eb57dfb3272040aab3",
  "source": {
    "blob": "d456bbce45029f935ba732070b78af764ae897da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 279,
    "path": "GRWTSK/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:729340eb57dfb3272040aab36a7a4b7aff8b99cb0be47616c32d2f7a420e327c",
  "verification": {
    "reference": "docs/verification/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15fa9c7d2023358f7d7fe30c1b4ffff155915212e2e92d06a7a6f012180bdc04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsScalarTowerRingQuot [CommSemiring T] [SMul S T] [Algebra S R] [Algebra T R]
    [IsScalarTower S T R] :
    IsScalarTower S T (RingQuot r) :=
  ⟨fun s t ⟨a⟩ => Quot.inductionOn a <| fun a' => by simp only [RingQuot.smul_quot, smul_assoc]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d456bbce45029f935ba732070b78af764ae897da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
