# FiniteInteractionComplex.RealizesNerveOneSkeleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d40a508b741782d19f49c8fadc97945f5a03e8935a57ff01dca8588f716ecd0b",
  "kind": "def",
  "lexical_name": "FiniteInteractionComplex.RealizesNerveOneSkeleton",
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
  "slug": "finiteinteractioncomplex-realizesnerveoneskeleton--9b427c58351f6e72c1b85c63",
  "source": {
    "blob": "355dd49b1de73b7376da0b0f0f66c1ab64545892",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 224,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b427c58351f6e72c1b85c636a1ef9d83336225397586fbd6c02e277ddd9f4a6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d40a508b741782d19f49c8fadc97945f5a03e8935a57ff01dca8588f716ecd0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FiniteInteractionComplex.RealizesNerveOneSkeleton {N : ℕ}
    (complex : FiniteInteractionComplex N)
    (nerve : FiniteInteractionNerve N) : Prop :=
  complex.activeAtoms = nerve.activeAtoms ∧
    ∀ left right : PacketAtom N, left ≠ right →
      (complex.Interacts left right ↔
        {left, right} ∈ nerve.simplices)

/-- Total internal interaction weight of a finite atom cluster. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `355dd49b1de73b7376da0b0f0f66c1ab64545892` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
