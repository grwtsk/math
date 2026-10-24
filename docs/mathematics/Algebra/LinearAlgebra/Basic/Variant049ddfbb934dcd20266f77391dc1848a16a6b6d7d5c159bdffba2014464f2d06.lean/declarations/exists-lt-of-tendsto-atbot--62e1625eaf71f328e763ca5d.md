# exists_lt_of_tendsto_atBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3205e0a1-d7bc-7851-ab87-1798e49864ee",
  "kind": "theorem",
  "lexical_name": "exists_lt_of_tendsto_atBot",
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
  "slug": "exists-lt-of-tendsto-atbot--62e1625eaf71f328e763ca5d",
  "source": {
    "blob": "1ed1b80d083d0d420812a0efa6b4785df8a1fcf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 196,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant049ddfbb934dcd20266f77391dc1848a16a6b6d7d5c159bdffba2014464f2d06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62e1625eaf71f328e763ca5dda66f3acd9984b2ae5717108a32903d485807831",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant049ddfbb934dcd20266f77391dc1848a16a6b6d7d5c159bdffba2014464f2d06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3205e0a1-d7bc-7851-ab87-1798e49864ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_lt_of_tendsto_atBot [NoMinOrder β] (h : Tendsto u atTop atBot) :
    ∀ a b, ∃ a' ≥ a, u a' < b := exists_lt_of_tendsto_atTop (β := βᵒᵈ) h

end IsDirected

section IsCodirected
variable [Nonempty α] [Preorder α] [IsDirected α (· ≥ ·)] {F : Filter β} {u : α → β}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant049ddfbb934dcd20266f77391dc1848a16a6b6d7d5c159bdffba2014464f2d06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant049ddfbb934dcd20266f77391dc1848a16a6b6d7d5c159bdffba2014464f2d06.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ed1b80d083d0d420812a0efa6b4785df8a1fcf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
