# Structomorph.symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20fd9f4ae51f66ef831991e545ae502ab99300d05c40892ccec7d1adad2f1dfb",
  "kind": "def",
  "lexical_name": "Structomorph.symm",
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
  "slug": "structomorph-symm--d736509fc1d4b0386510d7df",
  "source": {
    "blob": "6501cdb014cd733473f22b64d4e147f04ba12ea7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 390,
    "path": "GRWTSK/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d736509fc1d4b0386510d7dff911e30d8b8f34bc2001a5ef2fbe979af1863bdf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20fd9f4ae51f66ef831991e545ae502ab99300d05c40892ccec7d1adad2f1dfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Structomorph.symm (e : Structomorph G M M') : Structomorph G M' M :=
  { e.toHomeomorph.symm with
    mem_groupoid := by
      intro c c' hc hc'
      have : (c'.symm ≫ₕ e.toHomeomorph.toOpenPartialHomeomorph ≫ₕ c).symm ∈ G :=
        G.symm (e.mem_groupoid c' c hc' hc)
      rwa [trans_symm_eq_symm_trans_symm, trans_symm_eq_symm_trans_symm, symm_symm, trans_assoc]
        at this }

/-- The composition of structomorphisms is a structomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6501cdb014cd733473f22b64d4e147f04ba12ea7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
