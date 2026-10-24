# a_is_soln

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76a67eed-c160-5440-ca17-bbcc2f733808",
  "kind": "theorem",
  "lexical_name": "a_is_soln",
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
  "slug": "a-is-soln--c3e4c61ce9a8e12146ab72a4",
  "source": {
    "blob": "90c6fdf7d61becb56d034edaa6662af8f1e79f4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 462,
    "path": "GRWTSK/Topology/MetricTopology/Hensel/Variant87d1cb6b4a8b5470f0250541a1316c5b1dcb9d1165ae71e9bb0cd7bfd0a5d02a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3e4c61ce9a8e12146ab72a4dbe5c58fe8b053498b5a675ab35b003cd73b4623",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hensel/Variant87d1cb6b4a8b5470f0250541a1316c5b1dcb9d1165ae71e9bb0cd7bfd0a5d02a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76a67eed-c160-5440-ca17-bbcc2f733808`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem a_is_soln (ha : F.aeval a = 0) :
    F.aeval a = 0 ∧
      ‖a - a‖ < ‖F.derivative.aeval a‖ ∧
        ‖F.derivative.aeval a‖ = ‖F.derivative.aeval a‖ ∧
          ∀ z', F.aeval z' = 0 → ‖z' - a‖ < ‖F.derivative.aeval a‖ → z' = a :=
  ⟨ha, by simp [deriv_ne_zero hnorm], rfl, a_soln_is_unique ha⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hensel/Variant87d1cb6b4a8b5470f0250541a1316c5b1dcb9d1165ae71e9bb0cd7bfd0a5d02a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hensel/Variant87d1cb6b4a8b5470f0250541a1316c5b1dcb9d1165ae71e9bb0cd7bfd0a5d02a.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90c6fdf7d61becb56d034edaa6662af8f1e79f4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
