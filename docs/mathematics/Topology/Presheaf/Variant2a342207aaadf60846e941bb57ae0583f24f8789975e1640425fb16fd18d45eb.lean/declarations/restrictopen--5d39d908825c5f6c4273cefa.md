# restrictOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a70a01764a83c41397e1577219baf5423e9c65a97c8d812f6f9fec9c395028d6",
  "kind": "abbrev",
  "lexical_name": "restrictOpen",
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
  "slug": "restrictopen--5d39d908825c5f6c4273cefa",
  "source": {
    "blob": "56d8597eca75882a275ad4d04697818beaf84160",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 125,
    "path": "GRWTSK/Topology/Presheaf/Variant2a342207aaadf60846e941bb57ae0583f24f8789975e1640425fb16fd18d45eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d39d908825c5f6c4273cefae0b42883b4787d4616cdaff8e5719c9feeae9e31",
  "verification": {
    "reference": "docs/verification/Topology/Presheaf/Variant2a342207aaadf60846e941bb57ae0583f24f8789975e1640425fb16fd18d45eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a70a01764a83c41397e1577219baf5423e9c65a97c8d812f6f9fec9c395028d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev restrictOpen {F : X.Presheaf C}
    {V : Opens X} (x : ToType (F.obj (op V))) (U : Opens X)
    (e : U ≤ V := by restrict_tac) :
    ToType (F.obj (op U)) :=
  x |_ₗ U ⟪e⟫

/-- restriction of a section to open subset -/
scoped[AlgebraicGeometry] infixl:80 " |_ " => TopCat.Presheaf.restrictOpen

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Presheaf/Variant2a342207aaadf60846e941bb57ae0583f24f8789975e1640425fb16fd18d45eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Presheaf/Variant2a342207aaadf60846e941bb57ae0583f24f8789975e1640425fb16fd18d45eb.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56d8597eca75882a275ad4d04697818beaf84160` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
