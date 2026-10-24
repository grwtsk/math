# DivisionRing.nonempty_linearEquiv_of_isSimpleModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f244ce09-193a-e514-7819-21c6f3041db1",
  "kind": "lemma",
  "lexical_name": "DivisionRing.nonempty_linearEquiv_of_isSimpleModule",
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
  "slug": "divisionring-nonempty-linearequiv-of-issimplemodule--6a5c76862597f3bba673802a",
  "source": {
    "blob": "edec7d256ffb752ce46dbdab27ab794c17ae3cb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 48,
    "path": "GRWTSK/Algebra/LinearAlgebra/DivisionRing/Variant5e55a11e51b294bdfa0ec14839c8758b194c5149ac8cc0d67e1895365fdd646f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a5c76862597f3bba673802a31414cb1ae4dbafc4b4e9e0b0931e4f1d905d6db",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DivisionRing/Variant5e55a11e51b294bdfa0ec14839c8758b194c5149ac8cc0d67e1895365fdd646f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f244ce09-193a-e514-7819-21c6f3041db1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma DivisionRing.nonempty_linearEquiv_of_isSimpleModule (N : Type*) [AddCommGroup N]
    [Module S N] [IsSimpleModule S N] : Nonempty (N ≃ₗ[S] S) := by
  obtain ⟨I, hI, ⟨e⟩⟩ := isSimpleModule_iff_quot_maximal.mp ‹_›
  exact ⟨e ≪≫ₗ I.quotEquivOfEqBot ((eq_bot_or_eq_top I).resolve_right hI.ne_top)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DivisionRing/Variant5e55a11e51b294bdfa0ec14839c8758b194c5149ac8cc0d67e1895365fdd646f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DivisionRing/Variant5e55a11e51b294bdfa0ec14839c8758b194c5149ac8cc0d67e1895365fdd646f.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edec7d256ffb752ce46dbdab27ab794c17ae3cb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
