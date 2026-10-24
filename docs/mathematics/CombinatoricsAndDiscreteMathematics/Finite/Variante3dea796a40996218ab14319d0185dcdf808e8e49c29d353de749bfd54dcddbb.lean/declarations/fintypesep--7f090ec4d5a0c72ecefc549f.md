# fintypeSep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8568023fd9b6c78261a5597d88b9e2acef5253cb2bf70cb7f48d0a31a6ce40f7",
  "kind": "instance",
  "lexical_name": "fintypeSep",
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
  "slug": "fintypesep--7f090ec4d5a0c72ecefc549f",
  "source": {
    "blob": "66181c2c4e89516214a5c8ad7d67cb6b6ae1d2c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 340,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variante3dea796a40996218ab14319d0185dcdf808e8e49c29d353de749bfd54dcddbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f090ec4d5a0c72ecefc549fee9cf741a8fe3df8ac217ff75c0bbf77a5f5704e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finite/Variante3dea796a40996218ab14319d0185dcdf808e8e49c29d353de749bfd54dcddbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8568023fd9b6c78261a5597d88b9e2acef5253cb2bf70cb7f48d0a31a6ce40f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance fintypeSep (s : Set α) (p : α → Prop) [Fintype s] [DecidablePred p] :
    Fintype ({ a ∈ s | p a } : Set α) :=
  Fintype.ofFinset (s.toFinset.filter p) <| by simp
#align set.fintype_sep Set.fintypeSep

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variante3dea796a40996218ab14319d0185dcdf808e8e49c29d353de749bfd54dcddbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variante3dea796a40996218ab14319d0185dcdf808e8e49c29d353de749bfd54dcddbb.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66181c2c4e89516214a5c8ad7d67cb6b6ae1d2c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
