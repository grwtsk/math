# comap.isCountablyGenerated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57f6594a281ebda83b5f6d3a21fdc7b362e9d20bb32a1abe14aa741041946afd",
  "kind": "instance",
  "lexical_name": "comap.isCountablyGenerated",
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
  "slug": "comap-iscountablygenerated--b44216a84e71d04a6f777507",
  "source": {
    "blob": "31f2f982ee30436c03d242b91f27527f81280c15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1134,
    "line": 1129,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bases/Variant283e442569dc8cef4b97a6900f933a441efba1c0ee907d8182ec5be1424fb54b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b44216a84e71d04a6f777507493ce020097f9294e4f0533bbecf8b6d2bd36b5a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bases/Variant283e442569dc8cef4b97a6900f933a441efba1c0ee907d8182ec5be1424fb54b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57f6594a281ebda83b5f6d3a21fdc7b362e9d20bb32a1abe14aa741041946afd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1129–1134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance comap.isCountablyGenerated (l : Filter β) [l.IsCountablyGenerated] (f : α → β) :
    (comap f l).IsCountablyGenerated :=
  let ⟨_x, hxl⟩ := l.exists_antitone_basis
  HasCountableBasis.isCountablyGenerated ⟨hxl.1.comap _, to_countable _⟩
#align filter.comap.is_countably_generated Filter.comap.isCountablyGenerated

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bases/Variant283e442569dc8cef4b97a6900f933a441efba1c0ee907d8182ec5be1424fb54b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bases/Variant283e442569dc8cef4b97a6900f933a441efba1c0ee907d8182ec5be1424fb54b.lean#L1129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f2f982ee30436c03d242b91f27527f81280c15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
