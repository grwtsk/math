# liftProjectionOrbit_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa039323-eb3f-7706-07f3-4989fc261cdc",
  "kind": "theorem",
  "lexical_name": "liftProjectionOrbit_unique",
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
  "slug": "liftprojectionorbit-unique--0edd840ac05633e3ee9b569e",
  "source": {
    "blob": "25d85c9872a305c73b9d68a2da84850ae8f38d72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 90,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LabeledProjection/Variant69730046772ed66de27dd28096fcfb46da98d69fd584bde30c6a2f14883dfcab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0edd840ac05633e3ee9b569e1521ec588da119bc356b38fc71a67e03170cf0f0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LabeledProjection/Variant69730046772ed66de27dd28096fcfb46da98d69fd584bde30c6a2f14883dfcab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa039323-eb3f-7706-07f3-4989fc261cdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftProjectionOrbit_unique
    (certificate : ExternalRigidifierCert hierarchy)
    (encoding : LabelNormalizedProjectionCode certificate)
    (orbit : Finset (MonoHierarchy hierarchy.Element))
    (nonempty : orbit.Nonempty) :
    ∃! projection,
      projection ∈ orbit ∧
      ∀ candidate ∈ orbit,
        labeledProjectionCode certificate encoding projection ≤
          labeledProjectionCode certificate encoding candidate := by
  let selected :=
    liftProjectionOrbit certificate encoding orbit nonempty
  refine ⟨selected, ?_, ?_⟩
  · exact ⟨
      liftProjectionOrbit_mem certificate encoding orbit nonempty,
      liftProjectionOrbit_minimal certificate encoding orbit nonempty⟩
  · intro candidate candidateProperty
    have selectedMember :=
      liftProjectionOrbit_mem certificate encoding orbit nonempty
    have candidateLeSelected :=
      candidateProperty.2 selected selectedMember
    have selectedLeCandidate :=
      liftProjectionOrbit_minimal certificate encoding orbit nonempty
        candidate candidateProperty.1
    apply labeledProjectionCode_injective certificate encoding
    exact Nat.le_antisymm candidateLeSelected selectedLeCandidate

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LabeledProjection/Variant69730046772ed66de27dd28096fcfb46da98d69fd584bde30c6a2f14883dfcab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LabeledProjection/Variant69730046772ed66de27dd28096fcfb46da98d69fd584bde30c6a2f14883dfcab.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25d85c9872a305c73b9d68a2da84850ae8f38d72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
