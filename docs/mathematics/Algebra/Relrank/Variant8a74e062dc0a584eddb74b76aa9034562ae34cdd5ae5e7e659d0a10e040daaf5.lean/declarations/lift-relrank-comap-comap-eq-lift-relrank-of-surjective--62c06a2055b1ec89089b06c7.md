# lift_relrank_comap_comap_eq_lift_relrank_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3058eb0e-4d2b-642c-a008-0a72f1d259fb",
  "kind": "theorem",
  "lexical_name": "lift_relrank_comap_comap_eq_lift_relrank_of_surjective",
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
  "slug": "lift-relrank-comap-comap-eq-lift-relrank-of-surjective--62c06a2055b1ec89089b06c7",
  "source": {
    "blob": "b83eb27ad4c8a72c0ace180c99798273937f8722",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 202,
    "path": "GRWTSK/Algebra/Relrank/Variant8a74e062dc0a584eddb74b76aa9034562ae34cdd5ae5e7e659d0a10e040daaf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62c06a2055b1ec89089b06c70542380928f406737f86ace35572d5d4deeb7345",
  "verification": {
    "reference": "docs/verification/Algebra/Relrank/Variant8a74e062dc0a584eddb74b76aa9034562ae34cdd5ae5e7e659d0a10e040daaf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3058eb0e-4d2b-642c-a008-0a72f1d259fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_relrank_comap_comap_eq_lift_relrank_of_surjective
    (f : L →+* E) (h : Function.Surjective f) :
    lift.{v} (relrank (A.comap f) (B.comap f)) =
    lift.{w} (relrank A B) :=
  lift_relrank_comap_comap_eq_lift_relrank_of_le A B f fun x _ ↦ h x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Relrank/Variant8a74e062dc0a584eddb74b76aa9034562ae34cdd5ae5e7e659d0a10e040daaf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Relrank/Variant8a74e062dc0a584eddb74b76aa9034562ae34cdd5ae5e7e659d0a10e040daaf5.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b83eb27ad4c8a72c0ace180c99798273937f8722` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
