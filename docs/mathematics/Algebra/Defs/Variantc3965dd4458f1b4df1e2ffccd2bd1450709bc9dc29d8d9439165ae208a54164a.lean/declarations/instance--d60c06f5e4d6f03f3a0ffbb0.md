# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc043813cb1e7b5c68d9cfafebf931e09db24f0f132807f393b79d0eee5d78dd",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--d60c06f5e4d6f03f3a0ffbb0",
  "source": {
    "blob": "52ef15a4d531ab2dfa73fbef7ce6827e60c7ae46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 445,
    "line": 442,
    "path": "GRWTSK/Algebra/Defs/Variantc3965dd4458f1b4df1e2ffccd2bd1450709bc9dc29d8d9439165ae208a54164a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d60c06f5e4d6f03f3a0ffbb0ce5dd970471d27dcac6b80b1e8075ec7e7b4d4c9",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantc3965dd4458f1b4df1e2ffccd2bd1450709bc9dc29d8d9439165ae208a54164a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc043813cb1e7b5c68d9cfafebf931e09db24f0f132807f393b79d0eee5d78dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [NonUnitalSemiring R] (c : RingCon R) : NonUnitalSemiring c.Quotient := fast_instance%
  Function.Surjective.nonUnitalSemiring _ Quotient.mk''_surjective rfl (fun _ _ => rfl)
    (fun _ _ => rfl) fun _ _ => rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantc3965dd4458f1b4df1e2ffccd2bd1450709bc9dc29d8d9439165ae208a54164a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantc3965dd4458f1b4df1e2ffccd2bd1450709bc9dc29d8d9439165ae208a54164a.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52ef15a4d531ab2dfa73fbef7ce6827e60c7ae46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
