# IsNilpotent.smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d32128f9-9f13-d406-c92b-042951d4b55f",
  "kind": "lemma",
  "lexical_name": "IsNilpotent.smul",
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
  "slug": "isnilpotent-smul--f4d0a4a1007bf254e72d1d4f",
  "source": {
    "blob": "488fc0f6a3d7d28c079a8a167aeffb3132f9fc05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 67,
    "path": "GRWTSK/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4d0a4a1007bf254e72d1d4fd1c0f294c43216a271d82da0a10f427cadf5baff",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d32128f9-9f13-d406-c92b-042951d4b55f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsNilpotent.smul [MonoidWithZero R] [MonoidWithZero S] [MulActionWithZero R S]
    [SMulCommClass R S S] [IsScalarTower R S S] {a : S} (ha : IsNilpotent a) (t : R) :
    IsNilpotent (t • a) := by
  obtain ⟨k, ha⟩ := ha
  use k
  rw [smul_pow, ha, smul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `488fc0f6a3d7d28c079a8a167aeffb3132f9fc05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
