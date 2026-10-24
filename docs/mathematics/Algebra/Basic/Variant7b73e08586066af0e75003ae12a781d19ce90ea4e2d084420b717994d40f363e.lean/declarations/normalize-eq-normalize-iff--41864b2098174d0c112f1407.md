# normalize_eq_normalize_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ef9bd55-fbe7-5ccb-13f0-9114c181ac64",
  "kind": "theorem",
  "lexical_name": "normalize_eq_normalize_iff",
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
  "slug": "normalize-eq-normalize-iff--41864b2098174d0c112f1407",
  "source": {
    "blob": "5bd393597fdb26b189614093565aba54ead9d1d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 164,
    "path": "GRWTSK/Algebra/Basic/Variant7b73e08586066af0e75003ae12a781d19ce90ea4e2d084420b717994d40f363e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41864b2098174d0c112f14077488be1d5ae2100b4673c28145057a9da6d1f3ed",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant7b73e08586066af0e75003ae12a781d19ce90ea4e2d084420b717994d40f363e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ef9bd55-fbe7-5ccb-13f0-9114c181ac64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalize_eq_normalize_iff {x y : α} : normalize x = normalize y ↔ x ∣ y ∧ y ∣ x :=
  ⟨fun h => ⟨Units.dvd_mul_right.1 ⟨_, h.symm⟩, Units.dvd_mul_right.1 ⟨_, h⟩⟩, fun ⟨hxy, hyx⟩ =>
    normalize_eq_normalize hxy hyx⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant7b73e08586066af0e75003ae12a781d19ce90ea4e2d084420b717994d40f363e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant7b73e08586066af0e75003ae12a781d19ce90ea4e2d084420b717994d40f363e.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bd393597fdb26b189614093565aba54ead9d1d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
