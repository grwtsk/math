# fintypeOfFintypeImage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09d3832eaebfb83f949790a697f99e6c51b28a76a9007b8cc178c6169f16c9e8",
  "kind": "def",
  "lexical_name": "fintypeOfFintypeImage",
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
  "slug": "fintypeoffintypeimage--79a02107f38b70da101e7f94",
  "source": {
    "blob": "40f8afca47062f1c7b3bcb90fe17761ceb927773",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 328,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant63d8d4380f87f94c5723361cb6f2e789056126c583770e5e0adba4bee9f3f934.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79a02107f38b70da101e7f94b3c332811c54bb3ac21eac5dd4437038ac747acd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant63d8d4380f87f94c5723361cb6f2e789056126c583770e5e0adba4bee9f3f934.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09d3832eaebfb83f949790a697f99e6c51b28a76a9007b8cc178c6169f16c9e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fintypeOfFintypeImage (s : Set α) {f : α → β} {g} (I : IsPartialInv f g) [Fintype (f '' s)] :
    Fintype s :=
  Fintype.ofFinset ⟨_, (f '' s).toFinset.2.filterMap g <| injective_of_isPartialInv_right I⟩
    (by simp [I.eq])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant63d8d4380f87f94c5723361cb6f2e789056126c583770e5e0adba4bee9f3f934.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant63d8d4380f87f94c5723361cb6f2e789056126c583770e5e0adba4bee9f3f934.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40f8afca47062f1c7b3bcb90fe17761ceb927773` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
