# signedIndexMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:136b6f920db18e31fdbb071f9caf761ebf7d134ec426b4c7ae995d0e81d4b410",
  "kind": "def",
  "lexical_name": "signedIndexMap",
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
  "slug": "signedindexmap--220b47ce488111cc9f9170e2",
  "source": {
    "blob": "2b8ecdbeb2421fa84206d7e1676f1dc24a5b3369",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 100,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:220b47ce488111cc9f9170e299974692d477f1277001adb941bc1473bea99cc8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:136b6f920db18e31fdbb071f9caf761ebf7d134ec426b4c7ae995d0e81d4b410`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def signedIndexMap
    (packet : CanonicalPositiveTuringPacket family) :
    Sum Index Index → ↥(heightHead packet.certificate.height)
  | Sum.inl i =>
      ⟨packet.alignment.point i,
        positiveHeightHead_subset_heightHead _ (packet.alignment.point_mem_head i)⟩
  | Sum.inr i =>
      ⟨conjugated (packet.alignment.point i), by
        have hneg := conjugated_mem_negativeHeightHead packet.certificate.height
          (packet.alignment.point i) (packet.alignment.point_mem_head i)
        exact (Finset.mem_filter.mp hneg).1⟩

/-- The two signed copies remain distinct by source identity and strict height sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b8ecdbeb2421fa84206d7e1676f1dc24a5b3369` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
