# A_maps_to_offDiag_judgePair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53b0ab8a-ae03-a847-7db8-90536c7992ad",
  "kind": "theorem",
  "lexical_name": "A_maps_to_offDiag_judgePair",
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
  "slug": "a-maps-to-offdiag-judgepair--5fa7cf9bb5458e046b73cba6",
  "source": {
    "blob": "24aae130c016d95d04f5dc8220efe26b17564035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 123,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fa7cf9bb5458e046b73cba67046dbc8227eef8c213e06455e38341fe40fc06b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53b0ab8a-ae03-a847-7db8-90536c7992ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem A_maps_to_offDiag_judgePair (a : AgreedTriple C J) :
    a ∈ A r → a.judgePair ∈ Finset.offDiag (@Finset.univ J _) := by simp [A, Finset.mem_offDiag]
#align imo1998_q2.A_maps_to_off_diag_judge_pair Imo1998Q2.A_maps_to_offDiag_judgePair

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24aae130c016d95d04f5dc8220efe26b17564035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
