# mem_fixingSubgroup_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f6e96c4-7bc8-cf23-f89a-53b5d5d660a4",
  "kind": "lemma",
  "lexical_name": "mem_fixingSubgroup_iff",
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
  "slug": "mem-fixingsubgroup-iff--aea4fa8dc655707151218999",
  "source": {
    "blob": "75ac10c7ad01e8ad002ba01c8c19938fd816aa44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 250,
    "path": "GRWTSK/Algebra/Basic/Variant59d802b6f4f3b7f44c18035fa37991962c37e28aef73d6e2859135db0b107ba5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aea4fa8dc6557071512189993f387da0201c0accd4c6497e38e98bfd5bf2a894",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant59d802b6f4f3b7f44c18035fa37991962c37e28aef73d6e2859135db0b107ba5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f6e96c4-7bc8-cf23-f89a-53b5d5d660a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma mem_fixingSubgroup_iff (σ) : σ ∈ fixingSubgroup K ↔ ∀ x ∈ K, σ x = x :=
  _root_.mem_fixingSubgroup_iff _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant59d802b6f4f3b7f44c18035fa37991962c37e28aef73d6e2859135db0b107ba5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant59d802b6f4f3b7f44c18035fa37991962c37e28aef73d6e2859135db0b107ba5.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75ac10c7ad01e8ad002ba01c8c19938fd816aa44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
